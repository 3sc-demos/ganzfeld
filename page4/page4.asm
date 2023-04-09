		PUBLIC	TelRender
		PUBLIC	TelSprite0
		PUBLIC	TelSprite1
		PUBLIC	TelSprite2

		PUBLIC	LogDraw0
		PUBLIC	LogVramAddr
		PUBLIC	LogColors
		PUBLIC	LogDrawColors
		PUBLIC	LogRasterTab

		org	#C000

		; DE = Display list address.
		; SP = Destination video RAM address.
		; IX = Return address.

TelRender	exx
		ld	bc,#FFFF
		ld	de,0
		exx

		ld	c,128
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

TelSprite0	dw	#FFFF
TelSprite1	dw	#FFFF
TelSprite2	dw	#FFFF

LogDrawColors	ld	b,(hl)
		inc	hl
		inc	b
		ret	z
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		inc	hl
Loop		ld	(de),a
		inc	e
		djnz	Loop
		jr	LogDrawColors
LogDraw4
		INCLUDE "page4/logo04.inc"
		INCLUDE "page4/logo05.inc"
		INCLUDE "page4/logo06.inc"
		jp	LogDraw7

		org	#C0C0

		exx
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw23
		INCLUDE "page4/logo23.inc"
		jp	LogDraw24

		org	#C141

		exx
		ld	hl,(TelSprite0)
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw24
		INCLUDE "page4/logo24.inc"
		jp	LogDraw25

		org	#C1C1

		exx
		ld	hl,(TelSprite1)
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw25
		INCLUDE "page4/logo25.inc"
		jp	LogDraw26

		org	#C242

		exx
		ld	hl,(TelSprite2)
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw0
		INCLUDE "page4/logo00.inc"
		INCLUDE "page4/logo01.inc"
		jp	LogDraw2

		org	#C2C2

		exx
		ld	hl,(TelSprite0)
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw2
		INCLUDE "page4/logo02.inc"
		INCLUDE "page4/logo03.inc"
		jp	LogDraw4

		org	#C343

		exx
		ld	hl,(TelSprite1)
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw7
		INCLUDE "page4/logo07.inc"
		INCLUDE "page4/logo08.inc"
		jp	LogDraw9

		org	#C3C3

		exx
		ld	hl,(TelSprite2)
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw9
		INCLUDE "page4/logo09.inc"
		jp	LogDraw10

		org	#C444

		exx
		push	bc
		push	de
		push	de
		push	bc
		push	bc
		push	de
		push	de
		push	bc
		push	bc
		push	de
		push	de
		push	bc
		push	bc
		push	de
		push	de
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw10
		INCLUDE "page4/logo10.inc"
		jp	LogDraw11

		org	#C4C4

		exx
		push	bc
		ld	hl,#0100
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		push	bc
		push	de
		push	de
		push	bc
		push	bc
		push	de
		push	de
		push	bc
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#0080
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw11
		INCLUDE "page4/logo11.inc"
		jp	LogDraw12

		org	#C545

		exx
		push	bc
		ld	hl,#0300
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		push	de
		push	bc
		push	bc
		push	de
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00C0
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw26
		INCLUDE "page4/logo26.inc"
		jp	LogDraw27

		org	#C5C5

		exx
		push	bc
		ld	hl,#0700
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		push	de
		push	bc
		push	bc
		push	de
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#00E0
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw27
		INCLUDE "page4/logo27.inc"
		jp	LogDraw28

		org	#C646

		exx
		push	bc
		ld	hl,#0700
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		push	de
		push	bc
		push	bc
		push	de
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#00E0
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw28
		INCLUDE "page4/logo28.inc"
		jp	LogDraw29

		org	#C6C6

		exx
		push	bc
		ld	hl,#0F00
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#00F0
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw29
		INCLUDE "page4/logo29.inc"
		INCLUDE "page4/logo30.inc"
		INCLUDE "page4/logo31.inc"
		INCLUDE "page4/logo32.inc"
		jp	LogDraw33

		org	#C747

		exx
		push	bc
		ld	hl,#1F00
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#00F8
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)
LogDraw33
		INCLUDE "page4/logo33.inc"
		INCLUDE "page4/logo34.inc"
		INCLUDE "page4/logo35.inc"
		INCLUDE "page4/logo36.inc"
		INCLUDE "page4/logo37.inc"
		jp	(ix)

		org	#C7C7

		exx
		push	bc
		ld	hl,#3F00
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#00FC
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

LogVramAddr	dw	#4D32
		dw	#4E31
		dw	#4F31
		dw	#4851
		dw	#4951
		dw	#4A51
		dw	#4B51
		dw	#4C51
		dw	#4D51
		dw	#4E42
		dw	#4F42
		dw	#4862
		dw	#4962
		dw	#4A62
		dw	#4B62
		dw	#4C62
		dw	#4D62
		dw	#4E62
		dw	#4F62
		dw	#4882
		dw	#4982
		dw	#4A82
		dw	#4B82
		dw	#4C82
		dw	#4D82
		dw	#4E83
		dw	#4F83
		dw	#48A3
		dw	#49A3
		dw	#4AA3
		dw	#4BA3
		dw	#4CA3
		dw	#4DA3
		dw	#4EA3
		dw	#4FA3
		dw	#48C3
		dw	#49C4
		dw	#4AC4

		org	#C848

		exx
		push	bc
		ld	hl,#7F00
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#00FE
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#C8C8

		exx
		push	bc
		ld	hl,#7F00
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#00FE
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#C949

		exx
		push	bc
		ld	hl,#FF00
		push	hl
		push	de
		ld	hl,#C0FF
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#FF03
		push	hl
		push	de
		ld	hl,#00FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#C9C9

		exx
		push	bc
		ld	hl,#FF03
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		push	de
		push	bc
		push	bc
		push	de
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#C0FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CA4A

		exx
		push	bc
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#C0FF
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		push	de
		push	bc
		push	bc
		push	de
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#FF03
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CACA

		exx
		push	bc
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#C0FF
		push	hl
		push	bc
		ld	hl,#3F00
		push	hl
		push	de
		push	bc
		push	bc
		push	de
		ld	hl,#00FC
		push	hl
		push	bc
		ld	hl,#FF03
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CB4B

		exx
		push	bc
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		push	bc
		ld	hl,#7F00
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#00FE
		push	hl
		push	bc
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CBCB

		exx
		push	bc
		ld	hl,#FF07
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#E0FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CC4C

		exx
		push	bc
		ld	hl,#FF03
		push	hl
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#7F00
		push	hl
		ld	hl,#00FE
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		ld	hl,#C0FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CCCC

		exx
		push	bc
		ld	hl,#FF03
		push	hl
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#00F0
		push	hl
		push	bc
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		push	bc
		ld	hl,#0F00
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		ld	hl,#C0FF
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CD4D

		exx
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF7F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CDCD

		exx
		ld	hl,#FCFF
		push	hl
		ld	hl,#FF03
		push	hl
		push	de
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		push	de
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF3F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CE4E

		exx
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF03
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF0F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CECE

		exx
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF0F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CF4F

		exx
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF07
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#CFCF

		exx
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF03
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D050

		exx
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF03
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D0D0

		exx
		ld	hl,#80FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF01
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D151

		exx
		ld	hl,#00FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D1D1

		exx
		ld	hl,#00FF
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#FF00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D252

		exx
		ld	hl,#00FE
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#7F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D2D2

		exx
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF03
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D353

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF03
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D3D3

		exx
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D454

		exx
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF03
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D4D4

		exx
		ld	hl,#00F0
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#0F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D555

		exx
		ld	hl,#00F0
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF07
		push	hl
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#0F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D5D5

		exx
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D656

		exx
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D6D6

		exx
		ld	hl,#00C0
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF0F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#0300
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D757

		exx
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#0700
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00E0
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D7D7

		exx
		ld	hl,#0080
		push	hl
		push	bc
		ld	hl,#0F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00F0
		push	hl
		push	bc
		ld	hl,#0100
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D858

		exx
		push	de
		push	bc
		ld	hl,#0F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00F0
		push	hl
		push	bc
		push	de
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D8D8

		exx
		push	de
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF1F
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#F8FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		push	de
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D959

		exx
		push	de
		push	bc
		ld	hl,#3F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FC
		push	hl
		push	bc
		push	de
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#D9D9

		exx
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF3F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#FCFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DA5A

		exx
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		push	de
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DADA

		exx
		ld	hl,#0100
		push	hl
		ld	hl,#FEFF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		push	bc
		push	de
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		push	de
		push	bc
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF7F
		push	hl
		ld	hl,#0080
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DB5B

		exx
		ld	hl,#0300
		push	hl
		push	bc
		ld	hl,#FF03
		push	hl
		ld	hl,#00FF
		push	hl
		push	bc
		ld	hl,#0380
		push	hl
		push	bc
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		push	bc
		ld	hl,#01C0
		push	hl
		push	bc
		ld	hl,#FF00
		push	hl
		ld	hl,#C0FF
		push	hl
		push	bc
		ld	hl,#00C0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DBDB

		exx
		ld	hl,#07C0
		push	hl
		push	bc
		ld	hl,#1F00
		push	hl
		ld	hl,#FEFF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF7F
		push	hl
		ld	hl,#00F8
		push	hl
		push	bc
		ld	hl,#03E0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DC5C

		exx
		ld	hl,#0300
		push	hl
		push	bc
		ld	hl,#0F00
		push	hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,#00F0
		push	hl
		push	bc
		ld	hl,#00C0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DCDC

		exx
		ld	hl,#0300
		push	hl
		ld	hl,#FEFF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF7F
		push	hl
		ld	hl,#00C0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DD5D

		exx
		ld	hl,#0300
		push	hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,#00C0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DDDD

		exx
		ld	hl,#0700
		push	hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,#00E0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DE5E

		exx
		ld	hl,#0700
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00E0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DEDE

		exx
		ld	hl,#0700
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00E0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DF5F

		exx
		ld	hl,#0F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00F0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#DFDF

		exx
		ld	hl,#0F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00F0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E060

		exx
		ld	hl,#1F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00F8
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E0E0

		exx
		ld	hl,#1F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00F8
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E161

		exx
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E1E1

		exx
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E262

		exx
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E2E2

		exx
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E363

		exx
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E3E3

		exx
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E464

		exx
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E4E4

		exx
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E565

		exx
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E5E5

		exx
		ld	hl,#FF07
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#E0FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E666

		exx
		ld	hl,#FF07
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#E0FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E6E6

		exx
		ld	hl,#FF0F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#F0FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E767

		exx
		ld	hl,#FF0F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#F0FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E7E7

		exx
		ld	hl,#FF1F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#F8FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E868

		exx
		ld	hl,#FF1F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#F8FF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E8E8

		exx
		ld	hl,#FF3F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FCFF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E969

		exx
		ld	hl,#FF7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FEFF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#E9E9

		exx
		push	bc
		ld	hl,#00F0
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#0F00
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EA6A

		exx
		push	bc
		ld	hl,#00FE
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#1F80
		push	hl
		push	bc
		ld	hl,#00FC
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#3F00
		push	hl
		push	bc
		ld	hl,#01F8
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#7F00
		push	hl
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EAEA

		exx
		ld	hl,#FF7F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1F00
		push	hl
		push	bc
		ld	hl,#00F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1F00
		push	hl
		push	bc
		ld	hl,#00F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#FEFF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EB6B

		exx
		ld	hl,#FF7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FF7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FEFF
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FEFF
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EBEB

		exx
		ld	hl,#FE7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE7F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EC6C

		exx
		ld	hl,#FE7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FE7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE7F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#ECEC

		exx
		ld	hl,#FC7F
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FE3F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#ED6D

		exx
		ld	hl,#FCFF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF3F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EDED

		exx
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EE6E

		exx
		ld	hl,#F8FF
		push	hl
		ld	hl,#00C0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0300
		push	hl
		ld	hl,#FF1F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EEEE

		exx
		ld	hl,#F0FF
		push	hl
		ld	hl,#01C0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0380
		push	hl
		ld	hl,#FF0F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EF6F

		exx
		ld	hl,#F0FF
		push	hl
		ld	hl,#01C0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0380
		push	hl
		ld	hl,#FF0F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#EFEF

		exx
		ld	hl,#F0FF
		push	hl
		ld	hl,#01C0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0380
		push	hl
		ld	hl,#FF0F
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F070

		exx
		ld	hl,#E0FF
		push	hl
		ld	hl,#0380
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01C0
		push	hl
		ld	hl,#FF07
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F0F0

		exx
		ld	hl,#E0FF
		push	hl
		ld	hl,#0380
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01C0
		push	hl
		ld	hl,#FF07
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F171

		exx
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F1F1

		exx
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F272

		exx
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F2F2

		exx
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F87F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F373

		exx
		ld	hl,#00FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F3F3

		exx
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F474

		exx
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#00E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0700
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F4F4

		exx
		ld	hl,#00FE
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FC3F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#7F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F575

		exx
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F5F5

		exx
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#FC7F
		push	hl
		ld	hl,#00F8
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#1F00
		push	hl
		ld	hl,#FE3F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F676

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F87F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F6F6

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,#F87F
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FE1F
		push	hl
		ld	hl,#00FC
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F777

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#7F00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#01E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0780
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FE
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F7F7

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#03E0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#07C0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F878

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#FF00
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#01F0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#03E0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#07C0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0F80
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#00FF
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F8F8

		exx
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#01F8
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#03F0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0FC0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#1F80
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F979

		exx
		ld	hl,#03FC
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#03F8
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,#F8FF
		push	hl
		ld	hl,#07F0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#0FE0
		push	hl
		ld	hl,#FF1F
		push	hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#1FC0
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#3FC0
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		or	c
		ld	h,a
		jp	(hl)

		org	#F9F9

		jp	(ix)

LogDraw12
		INCLUDE "page4/logo12.inc"
		INCLUDE "page4/logo13.inc"
		INCLUDE "page4/logo14.inc"
		INCLUDE "page4/logo15.inc"
		INCLUDE "page4/logo16.inc"
		INCLUDE "page4/logo17.inc"
		INCLUDE "page4/logo18.inc"
		INCLUDE "page4/logo19.inc"
		INCLUDE "page4/logo20.inc"
		INCLUDE "page4/logo21.inc"
		INCLUDE "page4/logo22.inc"
		jp	LogDraw23

LogColors	db	15 - 1
		dw	22882
		db	16 - 1
		dw	22914
		db	2 - 1
		dw	22948		
		db	255

		db	2 - 1
		dw	22866
		db	1 - 1
		dw	22872
		db	1 - 1
		dw	22876
		db	12 - 1
		dw	22897
		db	11 - 1
		dw	22930
		db	255

		org	#FF00

LogRasterTab	db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%11011101
		db	%11111111
		db	%11111111
		db	%11111111
		db	%11011101
		db	%11111111
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%11011101
		db	%11111111
		db	%01110111
		db	%11111111
		db	%11011101
		db	%11111111
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000
		db	%10101010
		db	%00000000
		db	%10101010
		db	%01000100
		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101
		db	%11111111
		db	%01010101
		db	%11111111
		db	%11011101
		db	%11111111
		db	%01110111
		db	%11111111
		db	%11011101
		db	%11111111
		db	%01010101
		db	%10111011
		db	%01010101
		db	%11101110
		db	%01010101
		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000
		db	%10001000
