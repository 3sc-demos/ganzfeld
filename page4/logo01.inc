		pop	hl
		set	0,(hl)
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a
		inc	l
		inc	l
		inc	l
		ld	a,(hl)
		or	#07
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a
		inc	l
		inc	l
		ld	a,(hl)
		or	#07
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a