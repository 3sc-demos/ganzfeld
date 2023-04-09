		INCLUDE	"build\PageSizes.inc"

		org	#6500

		; Push the main entry point to stack and decompress as usual.

		ld	bc,33156
		push	bc

		; But first do at least 100 iterations of IM 1 handler to allow +3 ROM to stop the drive.

StopDrive	rst	56
		djnz	StopDrive

		; From this point on we don't want the IM 1 handler to mess with page 7.

		di

		; This is the alternate entry point used during loading.

ScriptPos	ld	hl,LoadScript

UnpackPage	ld	e,(hl)
		inc	l
		ld	d,(hl)			; DE = destination address.
		inc	l
		ld	a,(hl)
		inc	l
		push	hl
		ld	h,(hl)
		ld	l,a			; HL = source address.

		; Simple UE2 decompressor from Bzpack (good enough for the job).

		ld	a,128
CopyByte	ldd
MainLoop	call	ReadBit
		jr	c,CopyByte

		ld	bc,1
EliasGamma	call	ReadBit
		rl	c
		jr	c,NextMemPage
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

NextMemPage	pop	hl
		inc	l
		ld	e,(hl)
		inc	l

		ld	d,#64
		ld	a,(de)
		ld	(#5B5C),a
		out	(#FD),a

		rl	e
		jr	nc,UnpackPage

		ld	(ScriptPos + 1),hl
		ret

ReadBit		add	a,a
		ret	nz
		ld	a,(hl)
		dec	hl
		rla
		ret

		; The format is: destination address, source address, page number (plus optional end marker).

LoadScript	; First data block (pages 3, 4, 6, 0 where page 0 is already pre-set by setup).

		dw	#BFFF + RawSize0
		dw	#65FF + PackedSize3 + PackedSize4 + PackedSize6 + PackedSize0
		db	6

		dw	#BFFF + RawSize6
		dw	#65FF + PackedSize3 + PackedSize4 + PackedSize6
		db	4

		dw	#BFFF + RawSize4
		dw	#65FF + PackedSize3 + PackedSize4
		db	3

		dw	#BFFF + RawSize3
		dw	#65FF + PackedSize3
		db	7 + 128

		; Second data block (pages 5, 2, 1, 7 where page 7 is already pre-set).

		dw	#BFFF + RawSize7
		dw	#65FF + PackedSize5 + PackedSize2 + PackedSize1 + PackedSize7
		db	1

		dw	#BFFF + RawSize1
		dw	#65FF + PackedSize5 + PackedSize2 + PackedSize1
		db	7

		dw	(33156 - 1) + RawSize2
		dw	#65FF + PackedSize5 + PackedSize2
		db	7

		dw	(#7600 - 1) + RawSize5
		dw	#65FF + PackedSize5
		db	7 + 128
