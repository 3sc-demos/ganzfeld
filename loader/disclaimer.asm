
		org	32768 - 29

		ld	hl,Positions - $
		add	hl,bc
		push	hl

		ld	hl,22528
		ld	de,22529
		ld	bc,767
		ld	(hl),%01000111
		ldir

		pop	hl
		ld	d,#80
		ld	bc,PayloadSize
		ldir

		jp	#8100

		org	32768

Positions	db	#BC, #BB, #B9, #B7, #B6, #B4, #B3, #B1, #B0, #AE, #AD, #AB, #AA, #A8, #A7, #A5
		db	#A4, #A2, #A1, #9F, #9E, #9D, #9B, #9A, #99, #97, #96, #95, #93, #92, #91, #90
		db	#8E, #8D, #8C, #8B, #8A, #88, #87, #86, #85, #84, #83, #82, #81, #80, #7E, #7D
		db	#7C, #7B, #7A, #79, #78, #77, #76, #76, #75, #74, #73, #72, #71, #70, #6F, #6F
		db	#6E, #6D, #6C, #6B, #6B, #6A, #69, #68, #68, #67, #66, #65, #65, #64, #64, #63
		db	#62, #62, #61, #61, #60, #5F, #5F, #5E, #5E, #5D, #5D, #5C, #5C, #5B, #5B, #5B
		db	#5A, #5A, #59, #59, #59, #58, #58, #58, #57, #57, #57, #57, #56, #56, #56, #56
		db	#55, #55, #55, #55, #55, #55, #55, #54, #54, #54, #54, #54, #54, #54, #54, #54
		db	#54, #54, #54, #54, #54, #54, #54, #54, #55, #55, #55, #55, #55, #55, #55, #56
		db	#56, #56, #56, #57, #57, #57, #57, #58, #58, #58, #59, #59, #59, #5A, #5A, #5B
		db	#5B, #5B, #5C, #5C, #5D, #5D, #5E, #5E, #5F, #5F, #60, #61, #61, #62, #62, #63
		db	#64, #64, #65, #65, #66, #67, #68, #68, #69, #6A, #6B, #6B, #6C, #6D, #6E, #6F
		db	#6F, #70, #71, #72, #73, #74, #75, #76, #76, #77, #78, #79, #7A, #7B, #7C, #7D
		db	#7E, #80, #81, #82, #83, #84, #85, #86, #87, #88, #8A, #8B, #8C, #8D, #8E, #90
		db	#91, #92, #93, #95, #96, #97, #99, #9A, #9B, #9D, #9E, #9F, #A1, #A2, #A4, #A5
		db	#A7, #A8, #AA, #AB, #AD, #AE, #B0, #B1, #B3, #B4, #B6, #B7, #B9, #BB, #BC, #BE

		ld	de,16384 + 6
		ld	hl,#C000
		ld	b,h
GenVramLoop	ld	(hl),e
		inc	l
		ld	(hl),d
		inc	hl
		inc	d
		ld	a,d
		and	7
		jr	nz,GenVramNext
		ld	a,e
		add	a,32
		ld	e,a
		jr	c,GenVramNext
		ld	a,d
		sub	8
		ld	d,a
GenVramNext	djnz	GenVramLoop

		; Lines 192..255 get clipped (written to ROM).

ClearLoop	ld	(hl),b
		inc	l
		jr	nz,ClearLoop

		ld	h,#80

MainLoop	halt

		ld	b,128
		ld	a,l
		cp	b
		jr	nz,SkipWait

WaitLoop	halt
		halt
		djnz	WaitLoop

SkipWait	push	hl
		ld	(RestoreSP + 1),sp

		ld	l,(hl)
		ld	h,#C0 >> 1
		add	hl,hl
		ld	sp,hl

		ld	hl,Sprite
		ld	bc,23 * 20
DrawSprite	pop	de
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
		jp	pe,DrawSprite

RestoreSP	ld	sp,0
		pop	hl
		inc	l
		jr	nz,MainLoop

		ret
Sprite
		INCBIN	"loader/data/disclaimer.bin"

PayloadSize	equ	$ - Positions
