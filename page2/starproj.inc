		; Perspective projection of X coordinates (51 layers between distances 32..128).
		; The trick is that X / Z = exp(log(X) - log(Z)) and there's hard Z (a single quad per layer).

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC80
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 251),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC82
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 246),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC86
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 241),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC88
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 236),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC8C
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 231),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC8E
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 226),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC92
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 221),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC94
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 216),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC98
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 211),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC9A
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 206),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC9E
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 201),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCA2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 196),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCA4
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 191),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCA8
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 186),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCAC
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 181),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCB0
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 176),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCB2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 171),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCB6
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 166),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCBA
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 161),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCBE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 156),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCC2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 151),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCC6
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 146),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCCA
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 141),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCCE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 136),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCD2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 131),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCD6
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 126),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCDC
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 121),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCE0
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 116),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCE4
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 111),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCEA
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 106),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCEE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 101),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCF4
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 96),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCF8
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 91),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCFE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 86),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD04
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 81),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD0A
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 76),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD10
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 71),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD16
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 66),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD1C
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 61),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD22
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 56),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD2A
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 51),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD30
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 46),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD38
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 41),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD40
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 36),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD48
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 31),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD50
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 26),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD58
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 21),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD62
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 16),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD6C
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 11),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD76
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 6),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD80
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 1),de

		; Perspective projection of Y coordinates.

		exx
		ld	sp,hl

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC80
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 253),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC82
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 248),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC86
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 243),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC88
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 238),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC8C
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 233),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC8E
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 228),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC92
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 223),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC94
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 218),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC98
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 213),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC9A
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 208),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FC9E
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 203),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCA2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 198),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCA4
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 193),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCA8
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 188),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCAC
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 183),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCB0
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 178),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCB2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 173),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCB6
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 168),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCBA
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 163),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCBE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 158),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCC2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 153),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCC6
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 148),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCCA
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 143),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCCE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 138),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCD2
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 133),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCD6
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 128),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCDC
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 123),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCE0
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 118),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCE4
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 113),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCEA
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 108),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCEE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 103),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCF4
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 98),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCF8
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 93),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FCFE
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 88),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD04
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 83),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD0A
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 78),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD10
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 73),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD16
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 68),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD1C
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 63),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD22
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 58),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD2A
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 53),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD30
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 48),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD38
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 43),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD40
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 38),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD48
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 33),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD50
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 28),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD58
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 23),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD62
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 18),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD6C
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 13),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD76
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 8),de

		pop	hl
		add	hl,bc
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	hl,#FD80
		add	hl,de
		ld	e,(hl)
		inc	l
		ld	d,(hl)
		ld	(StaProjQuadBnk * 256 + 3),de
