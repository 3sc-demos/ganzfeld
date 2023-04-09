DEBUG		equ	0			; For release, define 0.
PAGE_LUT_ADDR	equ	#6400			; 128/+2 vs +2A/+3 paging lookup table address.

		MACRO	SetBorder, Color
		IF	DEBUG
		ld	a,Color
		out	(254),a
		ENDIF
		ENDM

		; These memory pages behave the same on both 128/+2 and +2A/+3, hence faster macros.

		MACRO	SetMemPage0
		ld	a,#50
		out	(#FD),a
		ENDM

		MACRO	SetMemPage2
		ld	a,#52
		out	(#FD),a
		ENDM

		MACRO	SetMemPage5
		ld	a,#55
		out	(#FD),a
		ENDM

		MACRO	SetMemPage7
		ld	a,#57
		out	(#FD),a
		ENDM

		; This macro is optimized for page numbers known at compile time.

		MACRO	SetMemPage, PageNumber
		ld	a,(PAGE_LUT_ADDR + PageNumber)
		out	(#FD),a
		ENDM

		; These macros are useful if the page number is calculated at run time.

		MACRO	SetMemPageA
		ld	($ + 4),a
		ld	a,(PAGE_LUT_ADDR)
		out	(#FD),a
		ENDM

		MACRO	SetMemPageC
		ld	b,PAGE_LUT_ADDR / 256
		ld	a,(bc)
		out	(#FD),a
		ENDM

		MACRO	SetMemPageE
		ld	d,PAGE_LUT_ADDR / 256
		ld	a,(de)
		out	(#FD),a
		ENDM

		MACRO	SetMemPageL
		ld	h,PAGE_LUT_ADDR / 256
		ld	a,(hl)
		out	(#FD),a
		ENDM
