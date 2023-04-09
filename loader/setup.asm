		PUBLIC	StartSetup

		INCLUDE "include/include.inc"

FlagAttrAddr	equ	#5800
DisplayList	equ	#B800
ScanlineList	equ	#BA00			; Must be aligned to 512.
Im2Tab		equ	#BE

		org	#8000

		INCBIN	"loader/data/background.bin"

Attributes	db	#05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02
		db	#07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05
		db	#07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02
		db	#07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02
		db	#07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05
		db	#05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02
		db	#05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07
		db	#07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02
		db	#02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07
		db	#07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05
		db	#02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05
		db	#05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07
		db	#02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07
		db	#02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07
		db	#05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07
		db	#02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05
		db	#07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05
		db	#02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07
		db	#07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02
		db	#05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07
		db	#05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02
		db	#07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05
		db	#07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02
		db	#07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02
		db	#07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05
		db	#05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02
		db	#05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07
		db	#07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02
		db	#02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07
		db	#07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05
		db	#02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07, #07, #02, #05, #05
		db	#05, #02, #07, #07, #02, #07, #07, #02, #05, #05, #05, #02, #07, #07, #02, #07

AnimPhases	db	#00, #02, #04, #06, #07, #09, #0B, #0D, #0F, #10, #12, #14, #15, #17, #19, #1A
		db	#1C, #1E, #1F, #21, #23, #24, #26, #27, #29, #2A, #2C, #2D, #2F, #30, #32, #33
		db	#35, #36, #37, #39, #3A, #3B, #3D, #3E, #3F, #41, #42, #43, #44, #46, #47, #48
		db	#49, #4A, #4B, #4D, #4E, #4F, #50, #51, #52, #53, #54, #55, #56, #57, #58, #59
		db	#5A, #5B, #5C, #5D, #5E, #5F, #5F, #60, #61, #62, #63, #63, #64, #65, #66, #66
		db	#67, #68, #69, #69, #6A, #6A, #6B, #6C, #6C, #6D, #6D, #6E, #6F, #6F, #70, #70
		db	#71, #71, #71, #72, #72, #73, #73, #73, #74, #74, #74, #75, #75, #75, #76, #76
		db	#76, #76, #77, #77, #77, #77, #77, #77, #78, #78, #78, #78, #78, #78, #78, #78
		db	#78, #78, #78, #78, #78, #78, #78, #78, #78, #79, #79, #79, #79, #79, #79, #7A
		db	#7A, #7A, #7A, #7B, #7B, #7B, #7C, #7C, #7C, #7D, #7D, #7D, #7E, #7E, #7F, #7F
		db	#80, #80, #80, #81, #81, #82, #83, #83, #84, #84, #85, #86, #86, #87, #87, #88
		db	#89, #8A, #8A, #8B, #8C, #8D, #8D, #8E, #8F, #90, #91, #91, #92, #93, #94, #95
		db	#96, #97, #98, #99, #9A, #9B, #9C, #9D, #9E, #9F, #A0, #A1, #A2, #A3, #A5, #A6
		db	#A7, #A8, #A9, #AA, #AC, #AD, #AE, #AF, #B1, #B2, #B3, #B5, #B6, #B7, #B9, #BA
		db	#BC, #BD, #BE, #C0, #C1, #C3, #C4, #C6, #C7, #C9, #CA, #CC, #CD, #CF, #D1, #D2
		db	#D4, #D6, #D7, #D9, #DB, #DC, #DE, #E0, #E1, #E3, #E5, #E7, #E9, #EA, #EC, #EE

LoadingBitmap	INCBIN	"loader/data/loading.bin"
DialogBitmap1	INCBIN	"loader/data/dialog1.bin"
DialogBitmap2	INCBIN	"loader/data/dialog2.bin"

		org	39231			; 32768 + 4096 + 512 + 256 + 63 + 768 + 768

StartSetup	di
		ld	a,i
		push	af

		; Mute and initialize AY.

		ld	hl,AyInitRegs
		ld	a,13
		call	AyOutLoop

		; Prepare 2nd video RAM.

		SetMemPage7
		call	DrawBackground

		; Draw color.

;		ld	hl,Attributes
		ld	de,#D880
		ld	b,2
		ldir

		; Generate display list of bank numbers.

		ld	h,DisplayList / 256	; Assumes L = 0.
		ld	de,DisplayList + 1
		ld	c,192			; Assumes B = 0.
		ld	(hl),#57
		ldir

		ld	c,48
		ld	(hl),#5F
		ldir

		ld	bc,512 - 192 - 48
		ld	(hl),#57
		ldir

		; Rows that get clipped point to unused area of contended memory (#6464).

		ld	a,Im2Tab
DummyAddrLoop	ld	(hl),#64
		inc	hl
		cp	h
		jr	nz,DummyAddrLoop

		; Generate IM 2 vector table and handler (EI; RET).

		ld	i,a
		im	2
		inc	a
GenIm2Loop	cp	h
		ld	(hl),a
		inc	hl
		jr	nz,GenIm2Loop

		ld	hl,#C9FB
		ld	(Im2Tab * 257 + 257),hl

		; Generate video RAM scanline addresses (account for two-pixel guard band at the top).

		ld	hl,ScanlineList + (32 + 9) * 2
		ld	de,#C004
		ld	b,d
GenScanlines	ld	(hl),e
		inc	l
		ld	(hl),d
		inc	hl
		call	DownDE
		djnz	GenScanlines

		; Draw blank vertical bar.

		ld	hl,#C003
		ld	a,h
DrawBarBitmap	ld	(hl),b
		ld	d,h
		ld	e,l
		inc	e
		ld	c,25
		ldir
		ld	c,7
		add	hl,bc
		dec	a
		jr	nz,DrawBarBitmap

		ld	a,24
DrawBarAttr	ld	(hl),%01111000
		ld	d,h
		ld	e,l
		inc	e
		ld	c,25
		ldir
		ld	c,7
		add	hl,bc
		dec	a
		jr	nz,DrawBarAttr

		; Prepare 1st video RAM.

		ei
		halt

;		xor	a
		out	(254),a

		SetMemPage5
		call	DrawBackground

		; Draw filtered attributes.

		ld	b,20
		halt
		djnz	$ - 1

		ld	de,#D880
		ld	b,2
AttrLoop	ld	a,(hl)
		and	2
		ld	(de),a
		inc	de
		cpi
		jp	pe,AttrLoop

		; Draw actual attributes.

		ld	b,20
		halt
		djnz	$ - 1

		ld	h,#90
		ld	d,#D8
		ld	b,2
		ldir

		; Draw "Loading..." message (hidden for now).

		inc	h
		ld	de,21677		; X = 104 (13), Y = 172.
		ld	ix,9			; Also set IYH = 0.
DrawLoading	ld	c,7
		ld	a,e
		ldir
		ld	e,a
		call	DownDE
		dec	ixl
		jr	nz,DrawLoading

		ld	b,18
		halt
		djnz	$ - 1

		; Enter main loop.

MainLoop	halt
		ld	(RestoreSP + 1),sp

		SetBorder 6

		; Animate sprite in the second video RAM.

DialogBitmap	ld	hl,DialogBitmap1
DialogPos	ld	sp,ScanlineList

		ld	bc,24 * 32
SpriteLoop	pop	de
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		jp	pe,SpriteLoop

		; Timing loop.

		ld	b,97
		djnz	$

		SetBorder 2

		; Display lines.

DisplayStart	ld	hl,DisplayList
		ld	c,192
DisplayLoop	ld	a,(hl)
		out	(#FD),a
		ld	b,14
		djnz	$
		nop
		inc	hl
		dec	c
		jr	nz,DisplayLoop

RestoreSP	ld	sp,0

		SetBorder 1

		; Update animation and UI events.

		ld	a,ixh
		rra
		jr	nc,ExitTest

		; Change dialog.

		ld	hl,DialogBitmap2
		ld	(DialogBitmap + 1),hl

		ld	a,ixl
		cp	224
		jr	nz,InputTest

		; Show "Loading..." message.

		ld	hl,23200
		ld	de,23201
		ld	c,95			; Assumes B = 0.
		ld	(hl),7
		ldir
		jr	AnimNext

ExitTest	rra
		jr	c,Exit

		ld	a,ixl
InputTest	cp	128
		jr	nz,AnimNext

		; Test for key 0.

		ld	a,#EF
		in	a,(254)
		rra
		jr	nc,StoreFlag

		; Test for key 1.

		ld	a,#F7
		in	a,(254)
		rra
		jp	c,MainLoop

		; Set configuration flag.

		scf
StoreFlag	ld	hl,FlagAttrAddr
		rr	(hl)

		ld	hl,AyBeepRegs
		ld	a,4
		call	AyOutLoop

AnimNext	inc	ix

		ld	h,AnimPhases / 256
		ld	a,ixl
		ld	l,a
		ld	a,(hl)

		ld	h,ScanlineList / 512
		ld	l,a
		add	hl,hl
		ld	(DialogPos + 1),hl

		cpl
		sub	15
		ld	(DisplayStart + 1),a

		jp	MainLoop

Exit		di

		; Generate memory paging lookup table.

		ld	a,(FlagAttrAddr)
		rla
		rla
		sbc	a,a
		and	%101			; 0 = Sinclair, %101 = Amstrad.
		ld	c,a

		ld	de,#6400
GenPages	ld	a,e
		and	c
		ld	a,e
		jp	pe,NoAmstrad
		xor	c
NoAmstrad	and	#0F
		or	#50
		ld	(de),a
		inc	e
		jr	nz,GenPages

		; Prepare loader for subsequent data blocks.

		inc	d
		ld	hl,LoaderCode
		ld	c,LoaderSize		; Assumes B = 0.
		ldir

		; Let 128 BASIC know which memory page we are about to set.

		ld	a,#50
		ld	(#5B5C),a
		out	(#FD),a

		; We also don't want +3 BASIC's IM 1 handler to corrupt page 7 during load.

;		res	4,(iy + 1)

		pop	af
		ld	i,a
		im	1
		ei
		ret

DrawBackground	; Clear attributes first because we sync with beam.

		ld	hl,#D800
		ld	de,#D801
		ld	bc,#2FF
		ld	(hl),l
		ldir

		ld	hl,#C000
		ld	de,#C001
		ld	b,#18
		ld	(hl),l
		ldir

		ld	de,#C080
		ld	h,e
DrawLoop	push	de
		ld	c,32
		ldir
		pop	de
		call	DownDE
		bit	4,h
		jr	z,DrawLoop
		ret

DownDE		inc	d
		ld	a,d
		and	7
		ret	nz
		ld	a,e
		add	a,32
		ld	e,a
		ret	c
		ld	a,d
		sub	8
		ld	d,a
		ret

AyOutLoop	ld	bc,#C1FD
		outi
		outi
		dec	a
		jr	nz,AyOutLoop
		ret

AyInitRegs	db	7, %00111111		; Mute all tone and noise generators.
		db	8, 0			; Set A, B, C volumes to zero.
		db	9, 0
		db	10, 0
		db	11, 255			; Envelope period.
		db	12, 0
		db	0, #E0			; D5 note.
		db	1, 0
		db	2, #25			; A7 note.
		db	3, 0
		db	4, #25			; A7 note.
		db	5, 0
		db	7, %00111000		; Enable tone generators.

AyBeepRegs	db	13, 9
		db	8, 16			; Restart |\ envelope.
		db	9, 16
		db	10, 16

LoaderCode	INCBIN	"build/loader.bin"
LoaderSize	equ	$ - LoaderCode
