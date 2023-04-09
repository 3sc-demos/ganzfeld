		org	#C000

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_0_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_0_00	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C040

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_0_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_0_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C080

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_0_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_0_80	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C0C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_0_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_0_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C200

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_1_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),0
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_1_00	ld	a,(de)
		inc	a
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C240

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_1_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_1_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C280

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_1_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),0
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_1_80	ld	a,(de)
		inc	a
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C2C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_1_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_1_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C400

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_2_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_2_00	ld	a,(de)
		or	2
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C440

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_2_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_2_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C480

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_2_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_2_80	ld	a,(de)
		or	2
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C4C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_2_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_2_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C600

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_3_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_3_00	ld	a,(de)
		or	3
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C640

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_3_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_3_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C680

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_3_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_3_80	ld	a,(de)
		or	3
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C6C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_3_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_3_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C800

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_4_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_4_00	ld	a,(de)
		or	4
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C840

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_4_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_4_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C880

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_4_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_4_80	ld	a,(de)
		or	4
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C8C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_4_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_4_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CA00

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_5_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_5_00	ld	a,(de)
		or	5
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CA40

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_5_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_5_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CA80

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_5_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_5_80	ld	a,(de)
		or	5
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CAC0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_5_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

QuadBottom_5_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CC00

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_6_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_6_00	ld	a,(de)
		or	6
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CC40

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_6_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),0
		ld	h,e
		ret

QuadBottom_6_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CC80

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_6_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_6_80	ld	a,(de)
		or	6
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CCC0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_6_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),0
		ld	h,e
		ret

QuadBottom_6_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CE00

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_7_00

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadTop_7_00	ld	a,(de)
		or	7
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CE40

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_7_40

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		inc	h
		ld	(hl),b
		ld	h,e
		ret

QuadBottom_7_40	ld	a,(de)
		ld	h,a
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CE80

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadTop_7_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadTop_7_80	ld	a,(de)
		or	7
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#CEC0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,QuadBottom_7_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		inc	h
		ld	(hl),c
		ld	h,e
		ret

QuadBottom_7_C0	ld	a,(de)
		ld	h,a
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,c
		or	(hl)
		ld	(hl),a
		ld	h,e
		ret

		org	#C180

		inc	l
		ld	a,ixh
		ld	(hl),a
		ret

		org	#C1C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_0_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		ld	(hl),255
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillBottom_0_C0	ld	a,(de)
		ld	h,a
		ld	(hl),255
		ld	h,e
		ret

		org	#C380

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_1_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		cpl
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillTop_1_80	ld	a,(de)
		inc	a
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#C3C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_1_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		sbc	a,a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillBottom_1_C0	ld	a,(de)
		ld	h,a
		ld	(hl),255
		inc	h
		ld	(hl),255
		ld	h,e
		ret

		org	#C580

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_2_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		cpl
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillTop_2_80	ld	a,(de)
		or	2
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#C5C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_2_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		sbc	a,a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillBottom_2_C0	ld	a,(de)
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#C780

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_3_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		cpl
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillTop_3_80	ld	a,(de)
		or	3
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#C7C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_3_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		sbc	a,a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillBottom_3_C0	ld	a,(de)
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#C980

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_4_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		cpl
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillTop_4_80	ld	a,(de)
		or	4
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#C9C0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_4_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		sbc	a,a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillBottom_4_C0	ld	a,(de)
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#CB80

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_5_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		cpl
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillTop_5_80	ld	a,(de)
		or	5
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#CBC0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_5_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		sbc	a,a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillBottom_5_C0	ld	a,(de)
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#CD80

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_6_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		cpl
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

FillTop_6_80	ld	a,(de)
		or	6
		ld	h,a
		ld	(hl),255
		inc	h
		ld	(hl),255
		ld	h,e
		ret

		org	#CDC0

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillBottom_6_C0

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		sbc	a,a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),0
		ld	h,e
		ret

FillBottom_6_C0	ld	a,(de)
		ld	h,a
		ld	a,255
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		ld	h,e
		ret

		org	#CF80

		inc	l
		ld	a,(hl)
		rla
		ld	e,h
		jr	nc,FillTop_7_80

		ld	a,ixl
		ld	(hl),a
		ld	a,(de)
		ld	h,a
		xor	a
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),a
		inc	h
		ld	(hl),255
		ld	h,e
		ret

FillTop_7_80	ld	a,(de)
		or	7
		ld	h,a
		ld	(hl),255
		ld	h,e
		ret

		org	#CFC0

		inc	l
		ld	a,ixh
		ld	(hl),a
		ret

		; Some Flyover display list fillers can be interleaved here.

		MACRO	FlyFillZeroes, Count
		ld	h,l
		REPT	Count * 16
		push	hl
		ENDM
		ld	h,(ix + 0)
		inc	ixl
		jp	(hl)
		ENDM

		org     #C100
		jp      (iy)

		org     #C300
		FlyFillZeroes 1

		org     #C500
		FlyFillZeroes 2

		org     #C700
		FlyFillZeroes 3

		org     #C900
		FlyFillZeroes 4

		org     #CB00
		FlyFillZeroes 5

		org     #CD00
		FlyFillZeroes 6

		org     #CF00
		FlyFillZeroes 7
