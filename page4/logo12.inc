		pop	hl
		ld	a,(de)
		ld	c,a
		ld	a,(hl)
		or	#7F
		xor	c
		and	#FE
		xor	c
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		or	#03
		ld	(hl),a
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a
		inc	l
		ld	a,c
		or	#FC
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		or	#03
		ld	(hl),a
		inc	l
		ld	a,(hl)
		or	#EF
		xor	c
		and	#FE
		xor	c
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		or	#3F
		ld	(hl),a
		inc	l
		ld	a,c
		or	#80
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		or	#0F
		ld	(hl),a
		inc	l
		ld	a,c
		or	#FE
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		or	#0F
		ld	(hl),a
		inc	l
		ld	a,c
		or	#80
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),c
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a
		inc	l
		ld	a,c
		or	#FC
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,(hl)
		or	#E0
		ld	(hl),a
		inc	e
