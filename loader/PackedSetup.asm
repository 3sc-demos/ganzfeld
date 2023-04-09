		INCLUDE	"build/setup.sym"
		INCLUDE	"build/SetupSize.inc"

		org	60000

		ld	hl,StreamEnd - 1
		ld	de,32767 + RawSetupSize

		; Simple UE2 decompressor from Bzpack (good enough for the job).

		ld	a,128
CopyByte	ldd
MainLoop	call	ReadBit
		jr	c,CopyByte

		ld	bc,1
EliasGamma	call	ReadBit
		rl	c
		jp	c,StartSetup
		call	ReadBit
		jr	nc,EliasGamma

		push	hl
		ld	l,(hl)
		ld	h,b
		adc	hl,de
		lddr
		pop	hl
		dec	hl
		jr	MainLoop

ReadBit		add	a,a
		ret	nz
		ld	a,(hl)
		dec	hl
		rla
		ret

		INCBIN	"build/setup.pck"
StreamEnd
