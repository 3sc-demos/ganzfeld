		pop	hl
		ld	a,(hl)
		or	#07
		ld	(hl),a
		inc	l
		ld	a,(de)
		or	#C0
		ld	(hl),a
		inc	l
		ld	a,(de)
		or	#01
		ld	(hl),a
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a
		inc	e
