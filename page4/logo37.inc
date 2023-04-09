		pop	hl
		ld	a,(hl)
		or	#7F
		ld	(hl),a
		inc	l
		ld	a,(hl)
		or	#FE
		ld	(hl),a
