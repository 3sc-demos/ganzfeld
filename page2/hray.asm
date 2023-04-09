AyRegisters	equ	#8109
AyDummyZero	equ	AyRegisters + 20

; AY register number offsets within the output data structure.

AyRegNoise	equ	AyRegisters + 1
AyRegMixer	equ	AyRegisters + 3
AyRegEnvelFreq	equ	AyRegisters + 5
AyRegEnvelope	equ	AyRegisters + 7
AyRegFreqLoC	equ	AyRegisters + 9
AyRegFreqHiC	equ	AyRegisters + 11
AyRegVolumeC	equ	AyRegisters + 13
AyRegFreqLoB	equ	AyRegisters + 15
AyRegFreqHiB	equ	AyRegisters + 17
AyRegVolumeB	equ	AyRegisters + 19
AyRegFreqLoA	equ	AyRegisters + 21
AyRegFreqHiA	equ	AyRegisters + 23
AyRegVolumeA	equ	AyRegisters + 25

; If enabled, the player supports rarely used envelope portamento parameter (but is a little bit slower).

USE_C_PORTA	equ	0
USE_ENV_PORTA	equ	0

AyUpdateMusic	SetMemPage0

		; Update envelope portamento (if enabled).

		IF USE_ENV_PORTA

		ld	hl,AyRegEnvelFreq
		ld	a,(hl)
AyEnvelDelta	add	a,0
		ld	(hl),a

		ld	l,AyRegFreqLoA % 256

		ELSE	; USE_ENV_PORTA

		ld	hl,AyRegFreqLoA

		ENDIF	; USE_ENVEL_PORTA

		; Update tone portamentos.

		ld	e,(hl)
		ld	l,AyRegFreqHiA % 256
		ld	d,(hl)

AyToneDeltaA	ld	bc,0
		ex	de,hl
		add	hl,bc
		ex	de,hl

		ld	(hl),d
		ld	l,AyRegFreqLoA % 256
		ld	(hl),e

		ld	l,AyRegFreqLoB % 256
		ld	e,(hl)
		ld	l,AyRegFreqHiB % 256
		ld	d,(hl)

AyToneDeltaB	ld	bc,0
		ex	de,hl
		add	hl,bc
		ex	de,hl

		ld	(hl),d
		ld	l,AyRegFreqLoB % 256
		ld	(hl),e

		IF	USE_C_PORTA

		ld	l,AyRegFreqLoC % 256
		ld	e,(hl)
		ld	l,AyRegFreqHiC % 256
		ld	d,(hl)

AyToneDeltaC	ld	bc,0
		ex	de,hl
		add	hl,bc
		ex	de,hl

		ld	(hl),d
		ld	l,AyRegFreqLoC % 256
		ld	(hl),e

		ENDIF	; USE_C_PORTA

		ld	b,%00111000		; Initialize mixer.

		; Update tick count (optimized for 5 tick counts).

AyTempo		ld	a,#80
		add	a,#20
		daa
		ld	(AyTempo + 1),a

		jp	nc,AyInstrPosA		; No track position is updated, just update instruments.

		; Update channel A track.

AyTrackPosA	ld	hl,AyDummyZero
		or	(hl)			; Assumes A = 0.
		jr	nz,AyNewNoteA

AyLoadTrackA	ld	hl,SongChannelA
		ld	e,(hl)
		inc	l			; Track pointers must be aligned to 2.
		ld	d,(hl)
		or	d			; Zero high byte marks the end of track sequence.
		jr	z,AyTrackPosB

		inc	hl
		ld	(AyLoadTrackA + 1),hl
		ex	de,hl
		ld	a,(hl)

		; Process the next note (or advance in case of an empty position).

AyNewNoteA	add	a,a
		jr	nc,AyNewTrackPosA

		ld	(AyToneA + 1),a
		inc	hl
		ld	c,(hl)

		sll	c
		jr	nc,AyEnvelShapeA

		; Set envelope period.

		inc	hl
		ld	a,(hl)
		ld	(AyRegEnvelFreq),a

AyEnvelShapeA	sll	c
		jr	nc,AyTonePortaA

		; Set envelope shape (also enable output to the envelope shape register).

		inc	hl
		ld	d,(hl)
		ld	e,13
		ld	(AyRegEnvelope - 1),de

AyTonePortaA	sll	c
		jr	nc,AyEnvelPortaA

		; Set tone portamento.

		inc	hl
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		ld	(AyToneDeltaA + 1),de

AyEnvelPortaA
		IF USE_ENV_PORTA

		sll	c
		jr	nc,AySetInstrumA

		; Set envelope portamento.

		inc	hl
		ld	a,(hl)
		ld	(AyEnvelDelta + 1),a

		ENDIF	; USE_ENV_PORTA

		; The sequence of SLLs already set the lowest nibble of C to %1111.

AySetInstrumA	ld	a,c
		ld	(AyInstrPosA + 1),a

AyNewTrackPosA	inc	hl
		ld	(AyTrackPosA + 1),hl

		; Update channel B track.

AyTrackPosB	ld	hl,AyDummyZero
		ld	a,(hl)
		or	a
		jr	nz,AyNewNoteB

AyLoadTrackB	ld	hl,SongChannelB
		ld	e,(hl)
		inc	l			; Track pointers must be aligned to 2.
		ld	d,(hl)
		or	d			; Zero high byte marks the end of track sequence.
		jr	z,AyTrackPosC

		inc	hl
		ld	(AyLoadTrackB + 1),hl
		ex	de,hl
		ld	a,(hl)

		; Process the next note (or advance in case of an empty position).

AyNewNoteB	add	a,a
		jr	nc,AyNewTrackPosB

		ld	(AyToneB + 1),a
		inc	hl
		ld	c,(hl)

		sll	c
		jr	nc,AyEnvelShapeB

		; Set envelope period.

		inc	hl
		ld	a,(hl)
		ld	(AyRegEnvelFreq),a

AyEnvelShapeB	sll	c
		jr	nc,AyTonePortaB

		; Set envelope shape (also enable output to the envelope shape register).

		inc	hl
		ld	d,(hl)
		ld	e,13
		ld	(AyRegEnvelope - 1),de

AyTonePortaB	sll	c
		jr	nc,AyEnvelPortaB

		; Set tone portamento.

		inc	hl
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		ld	(AyToneDeltaB + 1),de

AyEnvelPortaB
		IF USE_ENV_PORTA

		sll	c
		jr	nc,AySetInstrumB

		; Set envelope portamento.

		inc	hl
		ld	a,(hl)
		ld	(AyEnvelDelta + 1),a

		ENDIF	; USE_ENV_PORTA

		; The sequence of SLLs already set the lowest nibble of C to %1111.

AySetInstrumB	ld	a,c
		ld	(AyInstrPosB + 1),a

AyNewTrackPosB	inc	hl
		ld	(AyTrackPosB + 1),hl

		; Update channel C track.

AyTrackPosC	ld	hl,AyDummyZero
		ld	a,(hl)
		or	a
		jr	nz,AyNewNoteC

AyLoadTrackC	ld	hl,SongChannelC
		ld	e,(hl)
		inc	l			; Track pointers must be aligned to 2.
		ld	d,(hl)
		or	d			; Zero high byte marks the end of track sequence.
		jr	z,AyInstrPosA

		inc	hl
		ld	(AyLoadTrackC + 1),hl
		ex	de,hl
		ld	a,(hl)

		; Process the next note (or advance in case of an empty position).

AyNewNoteC	add	a,a
		jr	nc,AyNewTrackPosC

		ld	(AyToneC + 1),a
		inc	hl
		ld	c,(hl)

		sll	c
		jr	nc,AyEnvelShapeC

		; Set envelope period.

		inc	hl
		ld	a,(hl)
		ld	(AyRegEnvelFreq),a

AyEnvelShapeC	sll	c
		jr	nc,AyTonePortaC

		; Set envelope shape (also enable output to the envelope shape register).

		inc	hl
		ld	d,(hl)
		ld	e,13
		ld	(AyRegEnvelope - 1),de

		; TODO: Could be baked into song format but only if we didn't swap ACB / ABC.
AyTonePortaC	sll	c

AyEnvelPortaC
		IF USE_ENV_PORTA

		sll	c
		jr	nc,AySetInstrumC

		; Set envelope portamento.

		inc	hl
		ld	a,(hl)
		ld	(AyEnvelDelta + 1),a

		ENDIF	; USE_ENV_PORTA

		; The sequence of SLLs already set the lowest nibble of C to %1111.

AySetInstrumC	ld	a,c
		ld	(AyInstrPosC + 1),a	; TODO: Keby tu nadvazovali kanaly, mozem do HL rovno dat A (AyInstrPosC).

AyNewTrackPosC	inc	hl
		ld	(AyTrackPosC + 1),hl

		; Update channel A instrument.

AyInstrPosA	ld	hl,SongInstruments
		ld	a,l
		and	15
		jr	nz,AyInstrVolumeA
		ld	l,(hl)			; Loop or repeat the last tick (default).

AyInstrVolumeA	ld	a,(hl)
		ld	(AyRegVolumeA),a
		dec	l
		ld	(AyInstrPosA + 1),hl

		inc	h
		add	a,a
		jr	nc,AyNoNoiseA
		ld	a,(hl)
		ld	(AyRegNoise),a
AyMixNoiseA	ld	b,%00110000		; Enable noise in the mixer register (no RES 3,B needed at this point).

AyNoNoiseA	jp	p,AyInstrPosB

		; Set the tone frequency (new instrument or arpeggio).

		inc	h
		ld	a,(hl)
AyToneA		add	a,0
		ld	l,a

		inc	h
		ld	a,(hl)
		ld	(AyRegFreqLoA),a
		inc	l
		ld	a,(hl)
		ld	(AyRegFreqHiA),a

		; Update channel B instrument.

AyInstrPosB	ld	hl,SongInstruments
		ld	a,l
		and	15
		jr	nz,AyInstrVolumeB
		ld	l,(hl)			; Loop or repeat the last tick (default).

AyInstrVolumeB	ld	a,(hl)
		ld	(AyRegVolumeB),a
		dec	l
		ld	(AyInstrPosB + 1),hl

		inc	h
		add	a,a
		jr	nc,AyNoNoiseB
		ld	a,(hl)
		ld	(AyRegNoise),a
AyMixNoiseB	res	4,b			; Enable noise in the mixer register.

AyNoNoiseB	jp	p,AyInstrPosC

		; Set the tone frequency (new instrument or arpeggio).

		inc	h
		ld	a,(hl)
AyToneB		add	a,0
		ld	l,a

		inc	h
		ld	a,(hl)
		ld	(AyRegFreqLoB),a
		inc	l
		ld	a,(hl)
		ld	(AyRegFreqHiB),a

		; Update channel C instrument.

AyInstrPosC	ld	hl,SongInstruments
		ld	a,l
		and	15
		jr	nz,AyInstrVolumeC
		ld	l,(hl)			; Loop or repeat the last tick (default).

AyInstrVolumeC	ld	a,(hl)
		ld	(AyRegVolumeC),a
		dec	l
		ld	(AyInstrPosC + 1),hl

		inc	h
		add	a,a
		jr	nc,AyNoNoiseC
		ld	a,(hl)
		ld	(AyRegNoise),a
AyMixNoiseC	res	5,b			; Enable noise in the mixer register.

AyNoNoiseC	jp	p,AySetMixer

		; Set the tone frequency (new instrument or arpeggio).

		inc	h
		ld	a,(hl)
AyToneC		add	a,0
		ld	l,a

		inc	h
		ld	a,(hl)
		ld	(AyRegFreqLoC),a
		inc	l
		ld	a,(hl)
		ld	(AyRegFreqHiC),a

		; Here we make sure that port B (bit 7) is set to input mode so that we can use register 15 as a dummy.

AySetMixer	ld	a,b
		ld	(AyRegMixer),a
		ret
