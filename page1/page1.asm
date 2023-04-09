		; System Diagnostics.

		PUBLIC	SysPositions
		PUBLIC	SysSprDiag

		; Cellular automata.

		PUBLIC	CellColors

		; Flyover.

		PUBLIC	FlyColors
		PUBLIC	FlyBC

		; Starfield.

		PUBLIC	StaCameraDrift
		PUBLIC	StaColors

		; 64 is the number of lines in part 1.
TileBlit1	equ	#A800
TileBlit2	equ	TileBlit1 + 64 * 26 + 2

		PUBLIC	TileBlit1		; Only needed for TileDisplace.
		PUBLIC	TileBlit2		; Only needed for TileDisplace.
		PUBLIC	TileDisplace
		PUBLIC	TileNormals
		PUBLIC	TileRasters
		PUBLIC	TileGenBlit
		PUBLIC	TileGenBlitSize
		PUBLIC	TileUpdateBlit
		PUBLIC	TileUpdateA0
		PUBLIC	TileUpdateA1
		PUBLIC	TileUpdateA2
		PUBLIC	TileUpdateA3
		PUBLIC	TileUpdateB0
		PUBLIC	TileUpdateB1
		PUBLIC	TileUpdateB2
		PUBLIC	TileUpdateB3
		PUBLIC	TileSprite

		PUBLIC	SegColorOff
		PUBLIC	SegDrawOn
		PUBLIC	SegDrawOff
		PUBLIC	SegSetColor
		PUBLIC	SegDrawB
		PUBLIC	SegDrawA
		PUBLIC	SegDrawZ
		PUBLIC	SegDrawE
		PUBLIC	SegDraw3
		PUBLIC	SegDrawS
		PUBLIC	SegDrawC

		;--------------;
		; ALIGNED DATA ;
		;--------------;

		INCLUDE	"page1/starfield.inc"

		org	#D000

		; The values are offset so that quads appear centered instead of their top left corner.

StaCameraDrift	db	#00 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14, #01 - 14, #01 - 14
		db	#02 - 14, #02 - 14, #03 - 14, #04 - 14, #05 - 14, #07 - 14, #08 - 14, #0A - 14
		db	#0C - 14, #0E - 14, #10 - 14, #12 - 14, #14 - 14, #17 - 14, #19 - 14, #1C - 14
		db	#1F - 14, #22 - 14, #25 - 14, #28 - 14, #2B - 14, #2E - 14, #31 - 14, #35 - 14
		db	#38 - 14, #3B - 14, #3F - 14, #42 - 14, #45 - 14, #48 - 14, #4B - 14, #4E - 14
		db	#51 - 14, #54 - 14, #57 - 14, #59 - 14, #5C - 14, #5E - 14, #60 - 14, #62 - 14
		db	#64 - 14, #66 - 14, #68 - 14, #69 - 14, #6B - 14, #6C - 14, #6D - 14, #6E - 14
		db	#6E - 14, #6F - 14, #6F - 14, #70 - 14, #70 - 14, #70 - 14, #70 - 14, #70 - 14
		db	#70 - 14, #70 - 14, #70 - 14, #70 - 14, #70 - 14, #70 - 14, #6F - 14, #6F - 14
		db	#6E - 14, #6E - 14, #6D - 14, #6C - 14, #6B - 14, #69 - 14, #68 - 14, #66 - 14
		db	#64 - 14, #62 - 14, #60 - 14, #5E - 14, #5C - 14, #59 - 14, #57 - 14, #54 - 14
		db	#51 - 14, #4E - 14, #4B - 14, #48 - 14, #45 - 14, #42 - 14, #3F - 14, #3B - 14
		db	#38 - 14, #35 - 14, #31 - 14, #2E - 14, #2B - 14, #28 - 14, #25 - 14, #22 - 14
		db	#1F - 14, #1C - 14, #19 - 14, #17 - 14, #14 - 14, #12 - 14, #10 - 14, #0E - 14
		db	#0C - 14, #0A - 14, #08 - 14, #07 - 14, #05 - 14, #04 - 14, #03 - 14, #02 - 14
		db	#02 - 14, #01 - 14, #01 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14
		db	#00 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14, #FF - 14, #FF - 14
		db	#FE - 14, #FE - 14, #FD - 14, #FC - 14, #FB - 14, #F9 - 14, #F8 - 14, #F6 - 14
		db	#F4 - 14, #F2 - 14, #F0 - 14, #EE - 14, #EC - 14, #E9 - 14, #E7 - 14, #E4 - 14
		db	#E1 - 14, #DE - 14, #DB - 14, #D8 - 14, #D5 - 14, #D2 - 14, #CF - 14, #CB - 14
		db	#C8 - 14, #C5 - 14, #C1 - 14, #BE - 14, #BB - 14, #B8 - 14, #B5 - 14, #B2 - 14
		db	#AF - 14, #AC - 14, #A9 - 14, #A7 - 14, #A4 - 14, #A2 - 14, #A0 - 14, #9E - 14
		db	#9C - 14, #9A - 14, #98 - 14, #97 - 14, #95 - 14, #94 - 14, #93 - 14, #92 - 14
		db	#92 - 14, #91 - 14, #91 - 14, #90 - 14, #90 - 14, #90 - 14, #90 - 14, #90 - 14
		db	#90 - 14, #90 - 14, #90 - 14, #90 - 14, #90 - 14, #90 - 14, #91 - 14, #91 - 14
		db	#92 - 14, #92 - 14, #93 - 14, #94 - 14, #95 - 14, #97 - 14, #98 - 14, #9A - 14
		db	#9C - 14, #9E - 14, #A0 - 14, #A2 - 14, #A4 - 14, #A7 - 14, #A9 - 14, #AC - 14
		db	#AF - 14, #B2 - 14, #B5 - 14, #B8 - 14, #BB - 14, #BE - 14, #C1 - 14, #C5 - 14
		db	#C8 - 14, #CB - 14, #CF - 14, #D2 - 14, #D5 - 14, #D8 - 14, #DB - 14, #DE - 14
		db	#E1 - 14, #E4 - 14, #E7 - 14, #E9 - 14, #EC - 14, #EE - 14, #F0 - 14, #F2 - 14
		db	#F4 - 14, #F6 - 14, #F8 - 14, #F9 - 14, #FB - 14, #FC - 14, #FD - 14, #FE - 14
		db	#FE - 14, #FF - 14, #FF - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14, #00 - 14

StaQuadPosX	dw	#C050, #C0C8, #C558, #C228, #C1E0, #C778, #C7B8, #C2B8, #C700, #C128, #C260, #C168, #C150, #C680, #C7B8, #C628
		dw	#C638, #C118, #C6C8, #C6C0, #C050, #C710, #C5E0, #C1D8, #C1B0, #C7E0, #C238, #C670, #C198, #C670, #C238, #C0E0
		dw	#C5F8, #C578, #C690, #C780, #C160, #C290, #C078, #C2A0, #C788, #C0E0, #C558, #C5F0, #C788, #C028, #C758, #C7B8
		dw	#C710, #C610, #C7B0, #C170, #C020, #C1F0, #C588, #C178, #C0E8, #C008, #C100, #C6A8, #C6C8, #C728, #C558, #C650
		dw	#C0F8, #C5A8, #C630, #C7A8, #C220, #C1E8, #C020, #C630, #C4F8, #C150, #C098, #C180, #C1F8, #C258, #C240, #C1B0
		dw	#C5F8, #C5B8, #C180, #C7F0, #C1F8, #C340, #C5C8, #C578, #C0D8, #C1F8, #C230, #C2E0, #C4B8, #C0A0, #C200, #C760
		dw	#C5F8, #C300, #C650, #C790, #C748, #C008, #C7A8, #C5D0, #C558, #C730, #C7E8, #C608, #C240, #C1F8, #C158, #C7D0
		dw	#C550, #C718, #C060, #C118, #C708, #C618, #C628, #C220, #C0A8, #C200, #C5D8, #C548, #C6D8, #C088, #C708, #C108
		dw	#C050, #C0C8, #C558, #C228, #C1E0, #C778, #C7B8, #C2B8, #C700, #C128, #C260, #C168, #C150, #C680, #C7B8, #C628
		dw	#C638, #C118, #C6C8, #C6C0, #C050, #C710, #C5E0, #C1D8, #C1B0, #C7E0, #C238, #C670, #C198, #C670, #C238, #C0E0
		dw	#C5F8, #C578, #C690, #C780, #C160, #C290, #C078, #C2A0, #C788, #C0E0, #C558, #C5F0, #C788, #C028, #C758, #C7B8
		dw	#C710, #C610, #C7B0, #C170, #C020, #C1F0, #C588, #C178, #C0E8, #C008, #C100, #C6A8, #C6C8, #C728, #C558, #C650
		dw	#C0F8, #C5A8, #C630, #C7A8, #C220, #C1E8, #C020, #C630, #C4F8, #C150, #C098, #C180, #C1F8, #C258, #C240, #C1B0
		dw	#C5F8, #C5B8, #C180, #C7F0, #C1F8, #C340, #C5C8, #C578, #C0D8, #C1F8, #C230, #C2E0, #C4B8, #C0A0, #C200, #C760
		dw	#C5F8, #C300, #C650, #C790, #C748, #C008, #C7A8, #C5D0, #C558, #C730, #C7E8, #C608, #C240, #C1F8, #C158, #C7D0
		dw	#C550, #C718, #C060, #C118, #C708, #C618, #C628, #C220, #C0A8, #C200, #C5D8, #C548, #C6D8, #C088, #C708, #C108

StaQuadPosY	dw	#E100, #E788, #E028, #E038, #E7D8, #E670, #E068, #E110, #E728, #E050, #E190, #E6C0, #E1A0, #E1A8, #E158, #E710
		dw	#E640, #E638, #E5C0, #E7A0, #E618, #E100, #E770, #E690, #E790, #E780, #E020, #E560, #E1D8, #E098, #E130, #E070
		dw	#E010, #E670, #E190, #E6E8, #E600, #E6F8, #E7B0, #E060, #E138, #E6A0, #E080, #E048, #E638, #E5F0, #E5D0, #E178
		dw	#E1B8, #E128, #E7E8, #E608, #E098, #E108, #E0B0, #E7C8, #E058, #E710, #E718, #E1A0, #E670, #E088, #E040, #E248
		dw	#E0E8, #E1C8, #E120, #E188, #E0E8, #E708, #E1A8, #E678, #E0A0, #E150, #E128, #E640, #E218, #E7E0, #E6D8, #E5B0
		dw	#E098, #E728, #E7C8, #E7B8, #E0C0, #E108, #E130, #E6B0, #E180, #E160, #E688, #E5E0, #E148, #E718, #E048, #E740
		dw	#E020, #E7E8, #E678, #E058, #E610, #E6B0, #E240, #E048, #E748, #E6C8, #E110, #E5E0, #E6C0, #E770, #E670, #E7F8
		dw	#E078, #E7A0, #E020, #E0C0, #E138, #E6C8, #E130, #E728, #E680, #E160, #E180, #E120, #E7C8, #E630, #E170, #E120
		dw	#E100, #E788, #E028, #E038, #E7D8, #E670, #E068, #E110, #E728, #E050, #E190, #E6C0, #E1A0, #E1A8, #E158, #E710
		dw	#E640, #E638, #E5C0, #E7A0, #E618, #E100, #E770, #E690, #E790, #E780, #E020, #E560, #E1D8, #E098, #E130, #E070
		dw	#E010, #E670, #E190, #E6E8, #E600, #E6F8, #E7B0, #E060, #E138, #E6A0, #E080, #E048, #E638, #E5F0, #E5D0, #E178
		dw	#E1B8, #E128, #E7E8, #E608, #E098, #E108, #E0B0, #E7C8, #E058, #E710, #E718, #E1A0, #E670, #E088, #E040, #E248
		dw	#E0E8, #E1C8, #E120, #E188, #E0E8, #E708, #E1A8, #E678, #E0A0, #E150, #E128, #E640, #E218, #E7E0, #E6D8, #E5B0
		dw	#E098, #E728, #E7C8, #E7B8, #E0C0, #E108, #E130, #E6B0, #E180, #E160, #E688, #E5E0, #E148, #E718, #E048, #E740
		dw	#E020, #E7E8, #E678, #E058, #E610, #E6B0, #E240, #E048, #E748, #E6C8, #E110, #E5E0, #E6C0, #E770, #E670, #E7F8
		dw	#E078, #E7A0, #E020, #E0C0, #E138, #E6C8, #E130, #E728, #E680, #E160, #E180, #E120, #E7C8, #E630, #E170, #E120
CellColors
		INCBIN	"page1/cell-colors.bin"

FlyColors	db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42, #42
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05
		db	#05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05, #05

		db	#C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0
		db	#00, #00, #00, #00, #00, #00, #00, #00, #20, #20, #20, #20, #20, #20, #20, #20
		db	#40, #40, #40, #40, #40, #40, #40, #40, #60, #60, #60, #60, #60, #60, #60, #60
		db	#80, #80, #80, #80, #80, #80, #80, #80, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #40, #40, #40, #40, #40, #40, #40
		db	#40, #40, #40, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#A0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #E0, #E0, #E0, #E0, #E0
		db	#E0, #E0, #E0, #E0, #E0, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #20
		db	#20, #20, #20, #20, #20, #20, #20, #20, #20, #40, #40, #40, #40, #40, #40, #40
		db	#40, #40, #40, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0

		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B
		db	#5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B
		db	#5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B
		db	#5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59

		; The number is %TBNN: top guard band, bottom guard band, number of colored lines - 1.

		db	FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12
		db	FlyColor13, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor12, FlyColor12, FlyColor12
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor12
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor14, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor14, FlyColor14, FlyColor14, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor13
		db	FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14
		db	FlyColor11, FlyColor10, FlyColor10, FlyColor10, FlyColor10, FlyColor10, FlyColor10, FlyColor10
		db	FlyColor10, FlyColor10, FlyColor10, FlyColor09, FlyColor09, FlyColor09, FlyColor09, FlyColor09
		db	FlyColor09, FlyColor09, FlyColor09, FlyColor09, FlyColor09, FlyColor08, FlyColor08, FlyColor08
		db	FlyColor08, FlyColor08, FlyColor08, FlyColor08, FlyColor08, FlyColor08, FlyColor08, FlyColor16
		db	FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16
		db	FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16, FlyColor16
		db	FlyColor16, FlyColor04, FlyColor04, FlyColor04, FlyColor04, FlyColor04, FlyColor04, FlyColor04
		db	FlyColor04, FlyColor04, FlyColor04, FlyColor05, FlyColor05, FlyColor05, FlyColor05, FlyColor05
		db	FlyColor05, FlyColor05, FlyColor05, FlyColor05, FlyColor05, FlyColor06, FlyColor06, FlyColor06
		db	FlyColor06, FlyColor06, FlyColor06, FlyColor06, FlyColor06, FlyColor06, FlyColor06, FlyColor07
		db	FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14
		db	FlyColor13, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor14, FlyColor14, FlyColor14, FlyColor14, FlyColor14
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor14, FlyColor14, FlyColor14
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor14
		db	FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor12, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor12, FlyColor12, FlyColor12, FlyColor13, FlyColor13, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor13, FlyColor13, FlyColor13
		db	FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor13
		db	FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12, FlyColor12

		; Tiles effect displacement table (sine wave refraction).

TileDisplace	db	#A8, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#A0, #A0, #A8, #A8, #A8, #A8, #A8, #A8, #A8, #B0, #B0, #B0, #B0, #B0, #B8, #B8
		db	#B8, #B8, #C0, #C0, #C0, #C0, #C0, #C8, #C8, #C8, #C8, #D0, #D0, #D0, #D0, #D8
		db	#D8, #D8, #D8, #E0, #E0, #E0, #E0, #E0, #E8, #E8, #E8, #E8, #E8, #F0, #F0, #F0
		db	#F0, #F0, #F0, #F8, #F8, #F8, #F8, #F8, #F8, #F8, #F8, #F8, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #08, #08, #08, #08, #08, #08, #08, #08, #08, #10, #10, #10
		db	#10, #10, #10, #18, #18, #18, #18, #18, #20, #20, #20, #20, #20, #28, #28, #28
		db	#28, #30, #30, #30, #30, #38, #38, #38, #38, #40, #40, #40, #40, #40, #48, #48
		db	#48, #48, #50, #50, #50, #50, #50, #58, #58, #58, #58, #58, #58, #58, #60, #60
		db	#60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #58
		db	#58, #58, #58, #58, #58, #50, #50, #50, #50, #48, #48, #48, #40, #40, #40, #38
		db	#38, #38, #30, #30, #28, #28, #20, #20, #20, #18, #18, #10, #10, #08, #08, #00
		db	#00, #F8, #F8, #F0, #F0, #E8, #E8, #E0, #E0, #E0, #D8, #D8, #D0, #D0, #C8, #C8
		db	#C8, #C0, #C0, #C0, #B8, #B8, #B8, #B0, #B0, #B0, #B0, #A8, #A8, #A8, #A8, #A8

		db	#A8, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#A0, #A0, #A8, #A8, #A8, #A8, #A8, #A8, #A8, #B0, #B0, #B0, #B0, #B0, #B8, #B8
		db	#B8, #B8, #C0, #C0, #C0, #C0, #C0, #C8, #C8, #C8, #C8, #D0, #D0, #D0, #D0, #D8
		db	#D8, #D8, #D8, #E0, #E0, #E0, #E0, #E0, #E8, #E8, #E8, #E8, #E8, #F0, #F0, #F0
		db	#F0, #F0, #F0, #F8, #F8, #F8, #F8, #F8, #F8, #F8, #F8, #F8, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #08, #08, #08, #08, #08, #08, #08, #08, #08, #10, #10, #10
		db	#10, #10, #10, #18, #18, #18, #18, #18, #20, #20, #20, #20, #20, #28, #28, #28
		db	#28, #30, #30, #30, #30, #38, #38, #38, #38, #40, #40, #40, #40, #40, #48, #48
		db	#48, #48, #50, #50, #50, #50, #50, #58, #58, #58, #58, #58, #58, #58, #60, #60
		db	#60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #58
		db	#58, #58, #58, #58, #58, #50, #50, #50, #50, #48, #48, #48, #40, #40, #40, #38
		db	#38, #38, #30, #30, #28, #28, #20, #20, #20, #18, #18, #10, #10, #08, #08, #00
		db	#00, #F8, #F8, #F0, #F0, #E8, #E8, #E0, #E0, #E0, #D8, #D8, #D0, #D0, #C8, #C8
		db	#C8, #C0, #C0, #C0, #B8, #B8, #B8, #B0, #B0, #B0, #B0, #A8, #A8, #A8, #A8, #A8

		; Tiles effect normals, 4 * floor(dp * 16 + 0.5).

TileNormals	db	#00, #04, #04, #08, #0C, #0C, #10, #14, #18, #1C, #1C, #20, #24, #24, #28, #2C
		db	#2C, #30, #34, #34, #38, #38, #3C, #3C, #3C, #40, #40, #40, #40, #40, #40, #40
		db	#3C, #3C, #38, #34, #30, #2C, #24, #20, #18, #10, #04, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #04, #04, #08, #0C, #10, #14
		db	#18, #18, #1C, #20, #24, #28, #28, #2C, #30, #30, #34, #34, #38, #38, #3C, #3C
		db	#3C, #40, #40, #40, #40, #40, #40, #40, #40, #40, #3C, #3C, #3C, #38, #38, #38
		db	#34, #34, #30, #2C, #2C, #28, #24, #24, #20, #1C, #18, #14, #14, #10, #0C, #08
		db	#04, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #08, #10, #18, #20, #28, #2C, #34, #38, #38, #3C, #3C, #40, #40, #40, #40
		db	#40, #40, #40, #3C, #3C, #3C, #38, #38, #34, #34, #30, #2C, #2C, #28, #24, #20
		db	#20, #1C, #18, #14, #14, #10, #0C, #0C, #08, #04, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #04, #08, #0C, #10, #14, #1C, #20, #24
		db	#2C, #30, #38, #3C, #40, #40, #40, #3C, #38, #34, #30, #28, #24, #20, #18, #14
		db	#10, #0C, #08, #04, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00

		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #04, #08, #0C
		db	#10, #14, #18, #20, #24, #28, #30, #34, #38, #3C, #40, #40, #40, #3C, #38, #30
		db	#2C, #24, #20, #1C, #14, #10, #0C, #08, #04, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #04, #08, #0C, #0C, #10, #14, #14, #18, #1C
		db	#20, #20, #24, #28, #2C, #2C, #30, #34, #34, #38, #38, #3C, #3C, #3C, #40, #40
		db	#40, #40, #40, #40, #40, #3C, #3C, #38, #38, #34, #2C, #28, #20, #18, #10, #08
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#04, #08, #0C, #10, #14, #14, #18, #1C, #20, #24, #24, #28, #2C, #2C, #30, #34
		db	#34, #38, #38, #38, #3C, #3C, #3C, #40, #40, #40, #40, #40, #40, #40, #40, #40
		db	#3C, #3C, #3C, #38, #38, #34, #34, #30, #30, #2C, #28, #28, #24, #20, #1C, #18
		db	#18, #14, #10, #0C, #08, #04, #04, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #04, #10, #18, #20, #24, #2C, #30, #34, #38, #3C
		db	#3C, #40, #40, #40, #40, #40, #40, #40, #3C, #3C, #3C, #38, #38, #34, #34, #30
		db	#2C, #2C, #28, #24, #24, #20, #1C, #1C, #18, #14, #10, #0C, #0C, #08, #04, #04

		db	#40, #40, #40, #40, #40, #3C, #3C, #3C, #38, #38, #34, #34, #30, #30, #2C, #2C
		db	#28, #24, #20, #20, #1C, #18, #14, #10, #0C, #0C, #08, #04, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #04, #0C, #14, #1C, #24
		db	#28, #30, #34, #38, #3C, #3C, #3C, #40, #40, #40, #40, #40, #40, #3C, #3C, #3C
		db	#38, #38, #34, #34, #30, #30, #2C, #28, #28, #24, #20, #20, #1C, #18, #14, #10
		db	#10, #0C, #08, #08, #04, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #04, #04, #08, #10, #14, #18, #1C, #20, #28, #2C, #34, #38, #3C, #40
		db	#40, #40, #3C, #38, #34, #2C, #28, #20, #1C, #18, #14, #10, #08, #04, #04, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #04, #08, #08, #0C
		db	#10, #10, #14, #18, #1C, #20, #20, #24, #28, #28, #2C, #30, #30, #34, #34, #38
		db	#38, #3C, #3C, #3C, #40, #40, #40, #40, #40, #40, #3C, #3C, #3C, #38, #34, #30
		db	#28, #24, #1C, #14, #0C, #04, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #04, #08, #0C, #0C, #10, #14, #18, #1C, #20, #20, #24
		db	#28, #2C, #2C, #30, #30, #34, #34, #38, #38, #3C, #3C, #3C, #40, #40, #40, #40

TileRasters	db	%00000000
		db	%00000000
		db	%00000000
		db	%00000000

		db	%10001000
		db	%00000000
		db	%00000000
		db	%00000000

		db	%10001000
		db	%00000000
		db	%00100010
		db	%00000000

		db	%10101010
		db	%00000000
		db	%00100010
		db	%00000000

		db	%10101010
		db	%00000000
		db	%10101010
		db	%00000000

		db	%10101010
		db	%01000100
		db	%10101010
		db	%00000000

		db	%10101010
		db	%01000100
		db	%10101010
		db	%00010001

		db	%10101010
		db	%01010101
		db	%10101010
		db	%00010001

		db	%10101010
		db	%01010101
		db	%10101010
		db	%01010101

		db	%10101010
		db	%11011101
		db	%10101010
		db	%01010101

		db	%10101010
		db	%11011101
		db	%10101010
		db	%01110111

		db	%10101010
		db	%11111111
		db	%10101010
		db	%01110111

		db	%10101010
		db	%11111111
		db	%10101010
		db	%11111111

		db	%11101110
		db	%11111111
		db	%10101010
		db	%11111111

		db	%11101110
		db	%11111111
		db	%10111011
		db	%11111111

		db	%11111111
		db	%11111111
		db	%10111011
		db	%11111111

		db	%11111111
		db	%11111111
		db	%11111111
		db	%11111111

		; Executable code and display lists residing in a single 256-byte bank.

FlyBC		push	bc
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
		inc	a
		ld	l,a
		ld	l,(hl)
		jp	(hl)

FlyDE		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		push	de
		inc	a
		ld	l,a
		ld	l,(hl)
		jp	(hl)

FlySP		ld	sp,#5820
		inc	a
		ld	l,a
		ld	l,(hl)
		jp	(hl)

FlyIX		jp	(ix)

FlyColor04	db	FlyDE, FlyBC, FlyIX
FlyColor05	db	FlyDE, FlyBC, FlyBC, FlyIX
FlyColor06	db	FlyDE, FlyBC, FlyBC, FlyBC, FlyIX
FlyColor07	db	FlyDE, FlyBC, FlyBC, FlyBC, FlyBC, FlyIX
FlyColor08	db	FlyBC, FlyDE, FlyIX
FlyColor09	db	FlyBC, FlyBC, FlyDE, FlyIX
FlyColor10	db	FlyBC, FlyBC, FlyBC, FlyDE, FlyIX
FlyColor11	db	FlyBC, FlyBC, FlyBC, FlyBC, FlyDE, FlyIX
FlyColor12	db	FlyDE, FlyBC, FlyDE, FlyIX
FlyColor13	db	FlyDE, FlyBC, FlyBC, FlyDE, FlyIX
FlyColor14	db	FlyDE, FlyBC, FlyBC, FlyBC, FlyDE, FlyIX
FlyColor16	db	FlyDE, FlySP, FlyDE, FlyIX

		;----------------;
		; UNALIGNED DATA ;
		;----------------;

		; Animated cursor positions.

SysPositions	db	#80, #7E, #7B, #79, #76, #74, #72, #6F, #6D, #6B, #69, #67, #65, #62, #60, #5E
		db	#5C, #5A, #58, #57, #55, #53, #51, #4F, #4E, #4C, #4A, #48, #47, #45, #44, #42
		db	#41, #3F, #3E, #3C, #3B, #3A, #38, #37, #36, #35, #33, #32, #31, #30, #2F, #2E
		db	#2D, #2C, #2B, #2A, #29, #28, #27, #27, #26, #25, #24, #24, #23, #23, #22, #21
		db	#21, #20, #20, #20, #1F, #1F, #1F, #1E, #1E, #1E, #1E, #1D, #1D, #1D, #1D, #1D
		db	#1D, #1D, #1D, #1D, #1D, #1D, #1E, #1E, #1E, #1E, #1F, #1F, #1F, #20, #20, #20
		db	#21, #21, #22, #22, #23, #23, #23, #24, #24, #25, #25, #25, #26, #26, #26, #27
		db	#27, #27, #27, #28, #28, #28, #28, #28, #28, #28, #28, #28, #28, #28, #29, #29
		db	#29, #29, #2A, #2A, #2A, #2B, #2B, #2B, #2C, #2C, #2D, #2D, #2E, #2E, #2E, #2F
		db	#2F, #30, #30, #30, #31, #31, #31, #32, #32, #32, #32, #33, #33, #33, #33, #33
		db	#33, #33, #33, #33, #33, #33, #34, #34, #34, #34, #35, #35, #35, #36, #36, #36
		db	#37, #37, #38, #38, #39, #39, #39, #3A, #3A, #3B, #3B, #3B, #3C, #3C, #3C, #3D
		db	#3D, #3D, #3D, #3E, #3E, #3E, #3E, #3E, #3E, #3E, #3E, #3E, #3E, #3E, #3F, #3F
		db	#3F, #3F, #40, #40, #40, #41, #41, #41, #42, #42, #43, #43, #44, #44, #44, #45
		db	#45, #46, #46, #46, #47, #47, #47, #48, #48, #48, #48, #49, #49, #49, #49, #49
		db	#49, #49, #49, #49, #49, #49, #4A, #4A, #4A, #4A, #4B, #4B, #4B, #4C, #4C, #4C
		db	#4D, #4D, #4E, #4E, #4F, #4F, #4F, #50, #50, #51, #51, #51, #52, #52, #52, #53
		db	#53, #53, #53, #54, #54, #54, #54, #54, #54, #54, #54, #54, #54, #55, #55, #55
		db	#56, #56, #57, #57, #58, #59, #59, #5A, #5B, #5C, #5D, #5E, #5F, #60, #61, #63
		db	#64, #65, #67, #68, #6A, #6B, #6D, #6E, #70, #72, #74, #76, #78, #7A, #7C, #7E
		db	#80

		; System diagnostics sprites.

SysSprDiag	db	17, 9
		dw	17057
		db	#87, #FF, #F3, #FF, #FF, #F0, #67, #FF, #FF, #FF, #FF, #9C, #FF, #C0, #FF, #FE, #7F
		dw	17313
		db	#3F, #FF, #F3, #FF, #FF, #F3, #3F, #FF, #FF, #FF, #FF, #9F, #FF, #F3, #FF, #FE, #7F
		dw	17569
		db	#3C, #CC, #20, #C3, #93, #F3, #26, #1C, #38, #70, #E1, #04, #C3, #F3, #C3, #84, #1F
		dw	17825
		db	#8C, #C9, #F3, #99, #01, #F3, #27, #C9, #93, #26, #4F, #9C, #9F, #F3, #99, #3E, #7F
		dw	18081
		db	#E4, #C8, #33, #81, #29, #F3, #26, #09, #93, #26, #41, #9C, #9F, #F3, #81, #06, #7F
		dw	18337
		db	#E4, #CF, #33, #9F, #39, #F3, #24, #C9, #93, #26, #79, #9C, #9F, #F3, #9F, #E6, #7F
		dw	16577
		db	#0E, #08, #78, #C3, #39, #F0, #66, #0C, #13, #30, #C3, #C4, #C3, #F3, #C3, #0F, #1F
		dw	16833
		db	#FF, #CF, #FF, #FF, #FF, #FF, #FF, #FF, #9F, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF
		dw	17089
		db	#FE, #1F, #FF, #FF, #FF, #FF, #FF, #FC, #3F, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF

SysSprCpuCores	db	15, 7
		dw	18433
		db	#33, #FF, #FC, #FF, #FF, #FF, #FC, #7E, #18, #66, #7F, #FF, #FF, #FF, #FF
		dw	18689
		db	#33, #FF, #FC, #FF, #FF, #FF, #F9, #FC, #F3, #26, #7F, #FF, #FF, #FF, #FF
		dw	18945
		db	#12, #66, #4C, #1C, #38, #7C, #30, #FC, #F3, #26, #7E, #18, #70, #C3, #87
		dw	19201
		db	#02, #64, #04, #C9, #93, #F9, #99, #FC, #F0, #66, #7C, #F3, #27, #99, #3F
		dw	19457
		db	#22, #64, #A4, #C8, #13, #F9, #99, #FC, #F3, #E6, #7C, #F3, #27, #81, #07
		dw	19713
		db	#32, #64, #E4, #C9, #F3, #F9, #99, #FC, #F3, #E6, #7C, #F3, #27, #9F, #E7
		dw	19969
		db	#33, #0C, #E6, #1C, #33, #FC, #39, #FE, #13, #F0, #FE, #18, #67, #C3, #0F

SysSprOne	db	1, 7
		dw	18452
		db	#9F
		dw	18708
		db	#1F
		dw	18964
		db	#9F
		dw	19220
		db	#9F
		dw	19476
		db	#9F
		dw	19732
		db	#9F
		dw	19988
		db	#9F

SysSprProc	db	8, 7
		dw	19233
		db	#87, #FF, #FF, #FF, #FF, #FF, #FF, #FF
		dw	19489
		db	#33, #FF, #FF, #FF, #FF, #FF, #FF, #FF
		dw	19745
		db	#33, #0C, #38, #61, #C3, #0C, #38, #7F
		dw	20001
		db	#06, #79, #93, #CC, #9E, #79, #93, #FF
		dw	20257
		db	#3E, #79, #93, #C0, #82, #09, #93, #FF
		dw	18497
		db	#3E, #79, #93, #CF, #F3, #C9, #93, #FF
		dw	18753
		db	#3E, #7C, #38, #61, #86, #1C, #33, #FF

SysSprZ80	db	7, 9
		dw	19252
		db	#02, #4F, #FF, #FE, #06, #1C, #3F
		dw	19508
		db	#F3, #CF, #FF, #FF, #E4, #C9, #9F
		dw	19764
		db	#E6, #4C, #38, #7F, #CC, #C9, #9F
		dw	20020
		db	#CE, #49, #93, #3F, #9E, #19, #9F
		dw	20276
		db	#9E, #49, #93, #3F, #3C, #C9, #9F
		dw	18516
		db	#3E, #49, #93, #3E, #7C, #C9, #9F
		dw	18772
		db	#02, #4C, #38, #3E, #06, #1C, #3F
		dw	19028
		db	#FF, #FF, #FF, #3F, #FF, #FF, #FF
		dw	19284
		db	#FF, #FF, #F8, #7F, #FF, #FF, #FF

SysSprClock	db	12, 9
		dw	20033
		db	#84, #FF, #FC, #FF, #E3, #FF, #FF, #FF, #FF, #FF, #FF, #FF
		dw	20289
		db	#3C, #FF, #FC, #FF, #CF, #FF, #FF, #FF, #FF, #FF, #FF, #FF
		dw	18529
		db	#3C, #C3, #84, #CF, #87, #0C, #38, #66, #61, #C3, #84, #CF
		dw	18785
		db	#3C, #99, #3C, #9F, #CE, #79, #93, #26, #4C, #99, #3C, #CF
		dw	19041
		db	#3C, #99, #3C, #3F, #CE, #78, #13, #26, #40, #99, #3C, #CF
		dw	19297
		db	#3C, #99, #3C, #9F, #CE, #79, #F3, #26, #4F, #99, #3C, #CF
		dw	19553
		db	#84, #C3, #84, #CF, #CE, #7C, #38, #30, #E1, #99, #86, #0F
		dw	19809
		db	#FF, #FF, #FF, #FF, #FF, #FF, #FF, #3F, #FF, #FF, #FF, #CF
		dw	20065
		db	#FF, #FF, #FF, #FF, #FF, #FF, #FF, #3F, #FF, #FF, #FE, #1F

SysSprMhz	db	11, 7
		dw	20052
		db	#87, #F8, #70, #C3, #0F, #3C, #38, #7F, #0C, #CF, #FF
		dw	20308
		db	#33, #F3, #26, #79, #3E, #79, #F3, #3E, #7C, #CF, #FF
		dw	18548
		db	#33, #F3, #26, #79, #3C, #F9, #F3, #3E, #7C, #C8, #1F
		dw	18804
		db	#33, #F3, #26, #63, #0C, #98, #38, #3E, #44, #0F, #3F
		dw	19060
		db	#33, #F3, #26, #79, #E4, #09, #9F, #3E, #64, #CE, #7F
		dw	19316
		db	#33, #33, #26, #79, #E7, #99, #9F, #3E, #64, #CC, #FF
		dw	19572
		db	#87, #38, #70, #C3, #0F, #9C, #38, #7F, #0C, #C8, #1F

SysSprCache	db	10, 7
		dw	18817
		db	#3F, #FF, #FF, #E7, #E7, #FF, #FF, #F9, #FF, #FF
		dw	19073
		db	#3F, #FF, #FF, #E7, #C7, #FF, #FF, #F9, #FF, #FF
		dw	19329
		db	#3E, #19, #98, #67, #E7, #E1, #87, #08, #38, #7F
		dw	19585
		db	#3C, #C9, #93, #27, #E7, #CF, #F2, #79, #93, #3F
		dw	19841
		db	#3C, #09, #90, #27, #E7, #CF, #82, #79, #90, #3F
		dw	20097
		db	#3C, #FC, #33, #E7, #E7, #CF, #32, #79, #93, #FF
		dw	20353
		db	#86, #1E, #78, #67, #E7, #E1, #83, #09, #98, #7F

SysSprNone1	db	4, 5
		dw	19348
		db	#87, #0E, #1C, #3F
		dw	19604
		db	#32, #64, #C9, #9F
		dw	19860
		db	#32, #64, #C8, #1F
		dw	20116
		db	#32, #64, #C9, #FF
		dw	20372
		db	#33, #0C, #CC, #3F

SysSprRam	db	10, 7
		dw	19617
		db	#87, #FF, #F9, #3F, #CF, #9F, #FF, #0E, #1C, #9F
		dw	19873
		db	#33, #FF, #FF, #3F, #CF, #9F, #FE, #64, #C8, #0F
		dw	20129
		db	#32, #66, #19, #30, #C1, #98, #7E, #64, #C9, #4F
		dw	20385
		db	#02, #67, #C9, #3E, #4C, #93, #3E, #0C, #09, #CF
		dw	18625
		db	#32, #66, #09, #30, #4C, #90, #3E, #64, #C9, #CF
		dw	18881
		db	#33, #0C, #C9, #26, #4C, #93, #FE, #64, #C9, #CF
		dw	19137
		db	#33, #9E, #09, #30, #61, #98, #7E, #64, #C9, #CF

SysSpr128	db	11, 7
		dw	19636
		db	#87, #F8, #70, #E1, #CC, #30, #E1, #83, #F0, #C8, #3F
		dw	19892
		db	#33, #F3, #26, #4C, #8F, #9E, #4C, #F3, #E7, #F9, #9F
		dw	20148
		db	#33, #F3, #26, #4C, #CF, #9E, #4C, #F3, #E7, #C9, #9F
		dw	20404
		db	#33, #F3, #26, #4C, #CE, #38, #CC, #E7, #E4, #48, #3F
		dw	18644
		db	#33, #F3, #26, #4C, #CC, #F3, #CC, #CF, #E6, #49, #9F
		dw	18900
		db	#33, #33, #26, #4C, #CC, #F3, #CC, #CF, #E6, #49, #9F
		dw	19156
		db	#87, #38, #70, #E1, #CC, #10, #61, #CF, #F0, #C8, #3F

SysSprDisplay	db	12, 9
		dw	20417
		db	#06, #7F, #FE, #7F, #FF, #FF, #FE, #7F, #FF, #9F, #FF, #FF
		dw	18657
		db	#33, #FF, #FE, #7F, #FF, #FF, #FE, #7F, #FF, #9F, #FF, #FF
		dw	18913
		db	#32, #61, #86, #61, #99, #F8, #70, #61, #C3, #06, #1C, #3F
		dw	19169
		db	#32, #4F, #32, #7C, #99, #FF, #26, #7C, #99, #9C, #C9, #FF
		dw	19425
		db	#32, #41, #32, #60, #99, #F8, #26, #60, #99, #9C, #09, #FF
		dw	19681
		db	#32, #79, #32, #4C, #99, #F3, #26, #4C, #99, #9C, #F9, #FF
		dw	19937
		db	#06, #43, #06, #60, #C1, #F8, #30, #E0, #83, #C6, #19, #FF
		dw	20193
		db	#FF, #FF, #3F, #FF, #F9, #FF, #FF, #FF, #9F, #FF, #FF, #FF
		dw	20449
		db	#FF, #FF, #3F, #FF, #C3, #FF, #FF, #FF, #9F, #FF, #FF, #FF

SysSprNone2	db	4, 5
		dw	18932
		db	#87, #0E, #1C, #3F
		dw	19188
		db	#32, #64, #C9, #9F
		dw	19444
		db	#32, #64, #C8, #1F
		dw	19700
		db	#32, #64, #C9, #FF
		dw	19956
		db	#33, #0C, #CC, #3F

SysSprAudio	db	17, 9
		dw	21793
		db	#03, #FF, #F9, #CF, #FF, #FF, #FF, #FF, #93, #FF, #FF, #FF, #9F, #FF, #F9, #FF, #FF
		dw	22049
		db	#CF, #FF, #F9, #FF, #FF, #FF, #FF, #FF, #9F, #FF, #FF, #FF, #9F, #FF, #F9, #FF, #FF
		dw	22305
		db	#CF, #0E, #10, #4C, #38, #7F, #0C, #CC, #13, #0F, #E1, #99, #06, #19, #90, #7F, #FF
		dw	20545
		db	#CE, #64, #F9, #C9, #93, #3F, #E4, #C9, #92, #67, #CC, #99, #9C, #C9, #99, #FF, #FF
		dw	20801
		db	#CE, #04, #19, #C9, #93, #3F, #04, #C9, #92, #67, #CC, #99, #9C, #C9, #99, #FF, #FF
		dw	21057
		db	#CE, #7F, #99, #C9, #93, #3E, #64, #C9, #92, #67, #CC, #99, #9C, #C9, #99, #E6, #67
		dw	21313
		db	#CF, #0C, #3C, #49, #98, #3F, #06, #1C, #33, #0F, #E1, #C3, #C4, #1C, #3C, #66, #67
		dw	21569
		db	#FF, #FF, #FF, #FF, #FF, #3F, #FF, #FF, #FF, #FF, #FF, #FF, #FC, #FF, #FF, #FF, #FF
		dw	21825
		db	#FF, #FF, #FF, #FF, #F8, #7F, #FF, #FF, #FF, #FF, #FF, #FF, #FC, #FF, #FF, #FF, #FF

StaColors	dw	%1000000010000000	; Black paper (clear color).
		dw	%0101001001000010	; Bright red ink.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0010110100010101	; Cyan on cyan, cyan on red.
		dw	%1001001010010010	; Red paper (clear color).
		dw	%0011111100010111	; White on white, white on red.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0110110101010101	; Bright cyan on bright cyan, bright cyan on bright red.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0010110100010101	; Cyan on cyan, cyan on red.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0101001001000010	; Bright red ink.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0101001001000010	; Bright red ink.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0101001001000010	; Bright red ink.

		dw	%1000000010000000	; Black paper (clear color).
		dw	%0110110101000101	; Bright cyan ink.
		dw	%1000000010000000	; Black paper (clear color).
		dw	%0111111101000111	; Bright white ink.
		dw	%1110110111101101	; Bright cyan paper (clear color).
		dw	%0000000000101000	; Black ink.
		dw	%1111111111111111	; Bright white paper (clear color).
		dw	%0000000000111000	; Black ink.

StaQuadSizes	db	 -4,  -6,  -7,  -8,  -9, -10, -11, -12, -13, -14, -14, -15, -16, -16, -17, -17, -18
		db	-18, -19, -19, -19, -20, -20, -20, -21, -21, -21, -21, -22, -22, -22, -22, -22, -23
		db	-23, -23, -23, -23, -23, -24, -24, -24, -24, -24, -24, -24, -25, -25, -25, -25, -25

TileGenBlit	ld	bc,#E9DD
		push	bc
		pop	af

		ld	bc,#FF31		; BF points to sprite bank.
		ld	de,#E1D1
		ld	hl,#C1F1
		exx
		ld	de,#F5C5
		ld	hl,#D5E5
		ld	sp,TileBlit1 + 192 * 26 + 2 + 2

		push	af
		ld	b,128
TileGenLoop1	push	de
		push	hl
		push	de
		push	hl
		push	de
		push	hl
		push	de
		push	hl
		exx
		dec	sp
		push	bc
		push	de
		push	hl
		push	bc
		inc	sp
		push	bc
		exx
		djnz	TileGenLoop1

		push	af
		ld	b,64
TileGenLoop2	push	de
		push	hl
		push	de
		push	hl
		push	de
		push	hl
		push	de
		push	hl
		exx
		dec	sp
		push	bc
		push	de
		push	hl
		push	bc
		inc	sp
		push	bc
		exx
		djnz	TileGenLoop2

		ld	hl,#4020
		ld	(TileBlit1 + 8),hl
		inc	h
		ld	(TileBlit1 + 34),hl
		inc	h
		ld	(TileBlit1 + 60),hl
		inc	h
		ld	(TileBlit1 + 86),hl
		inc	h
		ld	(TileBlit1 + 112),hl
		inc	h
		ld	(TileBlit1 + 138),hl
		inc	h
		ld	(TileBlit1 + 164),hl
		inc	h
		ld	(TileBlit1 + 190),hl
		ld	hl,#4040
		ld	(TileBlit1 + 216),hl
		inc	h
		ld	(TileBlit1 + 242),hl
		inc	h
		ld	(TileBlit1 + 268),hl
		inc	h
		ld	(TileBlit1 + 294),hl
		inc	h
		ld	(TileBlit1 + 320),hl
		inc	h
		ld	(TileBlit1 + 346),hl
		inc	h
		ld	(TileBlit1 + 372),hl
		inc	h
		ld	(TileBlit1 + 398),hl
		ld	hl,#4060
		ld	(TileBlit1 + 424),hl
		inc	h
		ld	(TileBlit1 + 450),hl
		inc	h
		ld	(TileBlit1 + 476),hl
		inc	h
		ld	(TileBlit1 + 502),hl
		inc	h
		ld	(TileBlit1 + 528),hl
		inc	h
		ld	(TileBlit1 + 554),hl
		inc	h
		ld	(TileBlit1 + 580),hl
		inc	h
		ld	(TileBlit1 + 606),hl
		ld	hl,#4080
		ld	(TileBlit1 + 632),hl
		inc	h
		ld	(TileBlit1 + 658),hl
		inc	h
		ld	(TileBlit1 + 684),hl
		inc	h
		ld	(TileBlit1 + 710),hl
		inc	h
		ld	(TileBlit1 + 736),hl
		inc	h
		ld	(TileBlit1 + 762),hl
		inc	h
		ld	(TileBlit1 + 788),hl
		inc	h
		ld	(TileBlit1 + 814),hl
		ld	hl,#40A0
		ld	(TileBlit1 + 840),hl
		inc	h
		ld	(TileBlit1 + 866),hl
		inc	h
		ld	(TileBlit1 + 892),hl
		inc	h
		ld	(TileBlit1 + 918),hl
		inc	h
		ld	(TileBlit1 + 944),hl
		inc	h
		ld	(TileBlit1 + 970),hl
		inc	h
		ld	(TileBlit1 + 996),hl
		inc	h
		ld	(TileBlit1 + 1022),hl
		ld	hl,#40C0
		ld	(TileBlit1 + 1048),hl
		inc	h
		ld	(TileBlit1 + 1074),hl
		inc	h
		ld	(TileBlit1 + 1100),hl
		inc	h
		ld	(TileBlit1 + 1126),hl
		inc	h
		ld	(TileBlit1 + 1152),hl
		inc	h
		ld	(TileBlit1 + 1178),hl
		inc	h
		ld	(TileBlit1 + 1204),hl
		inc	h
		ld	(TileBlit1 + 1230),hl
		ld	hl,#40E0
		ld	(TileBlit1 + 1256),hl
		inc	h
		ld	(TileBlit1 + 1282),hl
		inc	h
		ld	(TileBlit1 + 1308),hl
		inc	h
		ld	(TileBlit1 + 1334),hl
		inc	h
		ld	(TileBlit1 + 1360),hl
		inc	h
		ld	(TileBlit1 + 1386),hl
		inc	h
		ld	(TileBlit1 + 1412),hl
		inc	h
		ld	(TileBlit1 + 1438),hl
		ld	hl,#4100
		ld	(TileBlit1 + 1464),hl
		inc	h
		ld	(TileBlit1 + 1490),hl
		inc	h
		ld	(TileBlit1 + 1516),hl
		inc	h
		ld	(TileBlit1 + 1542),hl
		inc	h
		ld	(TileBlit1 + 1568),hl
		inc	h
		ld	(TileBlit1 + 1594),hl
		inc	h
		ld	(TileBlit1 + 1620),hl
		inc	h
		ld	(TileBlit1 + 1646),hl
		ld	hl,#4820
		ld	(TileBlit2 + 8),hl
		inc	h
		ld	(TileBlit2 + 34),hl
		inc	h
		ld	(TileBlit2 + 60),hl
		inc	h
		ld	(TileBlit2 + 86),hl
		inc	h
		ld	(TileBlit2 + 112),hl
		inc	h
		ld	(TileBlit2 + 138),hl
		inc	h
		ld	(TileBlit2 + 164),hl
		inc	h
		ld	(TileBlit2 + 190),hl
		ld	hl,#4840
		ld	(TileBlit2 + 216),hl
		inc	h
		ld	(TileBlit2 + 242),hl
		inc	h
		ld	(TileBlit2 + 268),hl
		inc	h
		ld	(TileBlit2 + 294),hl
		inc	h
		ld	(TileBlit2 + 320),hl
		inc	h
		ld	(TileBlit2 + 346),hl
		inc	h
		ld	(TileBlit2 + 372),hl
		inc	h
		ld	(TileBlit2 + 398),hl
		ld	hl,#4860
		ld	(TileBlit2 + 424),hl
		inc	h
		ld	(TileBlit2 + 450),hl
		inc	h
		ld	(TileBlit2 + 476),hl
		inc	h
		ld	(TileBlit2 + 502),hl
		inc	h
		ld	(TileBlit2 + 528),hl
		inc	h
		ld	(TileBlit2 + 554),hl
		inc	h
		ld	(TileBlit2 + 580),hl
		inc	h
		ld	(TileBlit2 + 606),hl
		ld	hl,#4880
		ld	(TileBlit2 + 632),hl
		inc	h
		ld	(TileBlit2 + 658),hl
		inc	h
		ld	(TileBlit2 + 684),hl
		inc	h
		ld	(TileBlit2 + 710),hl
		inc	h
		ld	(TileBlit2 + 736),hl
		inc	h
		ld	(TileBlit2 + 762),hl
		inc	h
		ld	(TileBlit2 + 788),hl
		inc	h
		ld	(TileBlit2 + 814),hl
		ld	hl,#48A0
		ld	(TileBlit2 + 840),hl
		inc	h
		ld	(TileBlit2 + 866),hl
		inc	h
		ld	(TileBlit2 + 892),hl
		inc	h
		ld	(TileBlit2 + 918),hl
		inc	h
		ld	(TileBlit2 + 944),hl
		inc	h
		ld	(TileBlit2 + 970),hl
		inc	h
		ld	(TileBlit2 + 996),hl
		inc	h
		ld	(TileBlit2 + 1022),hl
		ld	hl,#48C0
		ld	(TileBlit2 + 1048),hl
		inc	h
		ld	(TileBlit2 + 1074),hl
		inc	h
		ld	(TileBlit2 + 1100),hl
		inc	h
		ld	(TileBlit2 + 1126),hl
		inc	h
		ld	(TileBlit2 + 1152),hl
		inc	h
		ld	(TileBlit2 + 1178),hl
		inc	h
		ld	(TileBlit2 + 1204),hl
		inc	h
		ld	(TileBlit2 + 1230),hl
		ld	hl,#48E0
		ld	(TileBlit2 + 1256),hl
		inc	h
		ld	(TileBlit2 + 1282),hl
		inc	h
		ld	(TileBlit2 + 1308),hl
		inc	h
		ld	(TileBlit2 + 1334),hl
		inc	h
		ld	(TileBlit2 + 1360),hl
		inc	h
		ld	(TileBlit2 + 1386),hl
		inc	h
		ld	(TileBlit2 + 1412),hl
		inc	h
		ld	(TileBlit2 + 1438),hl
		ld	hl,#4900
		ld	(TileBlit2 + 1464),hl
		inc	h
		ld	(TileBlit2 + 1490),hl
		inc	h
		ld	(TileBlit2 + 1516),hl
		inc	h
		ld	(TileBlit2 + 1542),hl
		inc	h
		ld	(TileBlit2 + 1568),hl
		inc	h
		ld	(TileBlit2 + 1594),hl
		inc	h
		ld	(TileBlit2 + 1620),hl
		inc	h
		ld	(TileBlit2 + 1646),hl
		ld	hl,#5020
		ld	(TileBlit2 + 1672),hl
		inc	h
		ld	(TileBlit2 + 1698),hl
		inc	h
		ld	(TileBlit2 + 1724),hl
		inc	h
		ld	(TileBlit2 + 1750),hl
		inc	h
		ld	(TileBlit2 + 1776),hl
		inc	h
		ld	(TileBlit2 + 1802),hl
		inc	h
		ld	(TileBlit2 + 1828),hl
		inc	h
		ld	(TileBlit2 + 1854),hl
		ld	hl,#5040
		ld	(TileBlit2 + 1880),hl
		inc	h
		ld	(TileBlit2 + 1906),hl
		inc	h
		ld	(TileBlit2 + 1932),hl
		inc	h
		ld	(TileBlit2 + 1958),hl
		inc	h
		ld	(TileBlit2 + 1984),hl
		inc	h
		ld	(TileBlit2 + 2010),hl
		inc	h
		ld	(TileBlit2 + 2036),hl
		inc	h
		ld	(TileBlit2 + 2062),hl
		ld	hl,#5060
		ld	(TileBlit2 + 2088),hl
		inc	h
		ld	(TileBlit2 + 2114),hl
		inc	h
		ld	(TileBlit2 + 2140),hl
		inc	h
		ld	(TileBlit2 + 2166),hl
		inc	h
		ld	(TileBlit2 + 2192),hl
		inc	h
		ld	(TileBlit2 + 2218),hl
		inc	h
		ld	(TileBlit2 + 2244),hl
		inc	h
		ld	(TileBlit2 + 2270),hl
		ld	hl,#5080
		ld	(TileBlit2 + 2296),hl
		inc	h
		ld	(TileBlit2 + 2322),hl
		inc	h
		ld	(TileBlit2 + 2348),hl
		inc	h
		ld	(TileBlit2 + 2374),hl
		inc	h
		ld	(TileBlit2 + 2400),hl
		inc	h
		ld	(TileBlit2 + 2426),hl
		inc	h
		ld	(TileBlit2 + 2452),hl
		inc	h
		ld	(TileBlit2 + 2478),hl
		ld	hl,#50A0
		ld	(TileBlit2 + 2504),hl
		inc	h
		ld	(TileBlit2 + 2530),hl
		inc	h
		ld	(TileBlit2 + 2556),hl
		inc	h
		ld	(TileBlit2 + 2582),hl
		inc	h
		ld	(TileBlit2 + 2608),hl
		inc	h
		ld	(TileBlit2 + 2634),hl
		inc	h
		ld	(TileBlit2 + 2660),hl
		inc	h
		ld	(TileBlit2 + 2686),hl
		ld	hl,#50C0
		ld	(TileBlit2 + 2712),hl
		inc	h
		ld	(TileBlit2 + 2738),hl
		inc	h
		ld	(TileBlit2 + 2764),hl
		inc	h
		ld	(TileBlit2 + 2790),hl
		inc	h
		ld	(TileBlit2 + 2816),hl
		inc	h
		ld	(TileBlit2 + 2842),hl
		inc	h
		ld	(TileBlit2 + 2868),hl
		inc	h
		ld	(TileBlit2 + 2894),hl
		ld	hl,#50E0
		ld	(TileBlit2 + 2920),hl
		inc	h
		ld	(TileBlit2 + 2946),hl
		inc	h
		ld	(TileBlit2 + 2972),hl
		inc	h
		ld	(TileBlit2 + 2998),hl
		inc	h
		ld	(TileBlit2 + 3024),hl
		inc	h
		ld	(TileBlit2 + 3050),hl
		inc	h
		ld	(TileBlit2 + 3076),hl
		inc	h
		ld	(TileBlit2 + 3102),hl
		ld	hl,#5100
		ld	(TileBlit2 + 3128),hl
		inc	h
		ld	(TileBlit2 + 3154),hl
		inc	h
		ld	(TileBlit2 + 3180),hl
		inc	h
		ld	(TileBlit2 + 3206),hl
		inc	h
		ld	(TileBlit2 + 3232),hl
		inc	h
		ld	(TileBlit2 + 3258),hl
		inc	h
		ld	(TileBlit2 + 3284),hl
		inc	h
		ld	(TileBlit2 + 3310),hl
		jp	(ix)

TileGenBlitSize	equ	$ - TileGenBlit

TileUpdateBlit	pop	bc
		ld	a,c
		ld	(TileBlit1 + 1),a
		ld	a,b
		add	a,8
		ld	(TileBlit1 + 27),a
		pop	bc
		ld	a,c
		add	a,16
		ld	(TileBlit1 + 53),a
		ld	a,b
		add	a,24
		ld	(TileBlit1 + 79),a
		pop	bc
		ld	a,c
		add	a,32
		ld	(TileBlit1 + 105),a
		ld	a,b
		add	a,40
		ld	(TileBlit1 + 131),a
		pop	bc
		ld	a,c
		add	a,48
		ld	(TileBlit1 + 157),a
		ld	a,b
		add	a,56
		ld	(TileBlit1 + 183),a
		pop	bc
		ld	a,c
		add	a,64
		ld	(TileBlit1 + 209),a
		ld	a,b
		add	a,72
		ld	(TileBlit1 + 235),a
		pop	bc
		ld	a,c
		add	a,80
		ld	(TileBlit1 + 261),a
		ld	a,b
		add	a,88
		ld	(TileBlit1 + 287),a
		pop	bc
		ld	a,c
		add	a,96
		ld	(TileBlit1 + 313),a
		ld	a,b
		add	a,104
		ld	(TileBlit1 + 339),a
		pop	bc
		ld	a,c
		add	a,112
		ld	(TileBlit1 + 365),a
		ld	a,b
		add	a,120
		ld	(TileBlit1 + 391),a
		pop	bc
		ld	a,c
		add	a,128
		ld	(TileBlit1 + 417),a
		ld	a,b
		add	a,136
		ld	(TileBlit1 + 443),a
		pop	bc
		ld	a,c
		add	a,144
		ld	(TileBlit1 + 469),a
		ld	a,b
		add	a,152
		ld	(TileBlit1 + 495),a
		pop	bc
		ld	a,c
		add	a,160
		ld	(TileBlit1 + 521),a
		ld	a,b
		add	a,168
		ld	(TileBlit1 + 547),a
		pop	bc
		ld	a,c
		add	a,176
		ld	(TileBlit1 + 573),a
		ld	a,b
		add	a,184
		ld	(TileBlit1 + 599),a
		pop	bc
		ld	a,c
		add	a,192
		ld	(TileBlit1 + 625),a
		ld	a,b
		add	a,200
		ld	(TileBlit1 + 651),a
		pop	bc
		ld	a,c
		add	a,208
		ld	(TileBlit1 + 677),a
		ld	a,b
		add	a,216
		ld	(TileBlit1 + 703),a
		pop	bc
		ld	a,c
		add	a,224
		ld	(TileBlit1 + 729),a
		ld	a,b
		add	a,232
		ld	(TileBlit1 + 755),a
		pop	bc
		ld	a,c
		add	a,240
		ld	(TileBlit1 + 781),a
		ld	a,b
		add	a,248
		ld	(TileBlit1 + 807),a
		pop	bc
		ld	a,c
		ld	(TileBlit1 + 833),a
		ld	a,b
		add	a,8
		ld	(TileBlit1 + 859),a
		pop	bc
		ld	a,c
		add	a,16
		ld	(TileBlit1 + 885),a
		ld	a,b
		add	a,24
		ld	(TileBlit1 + 911),a
		pop	bc
		ld	a,c
		add	a,32
		ld	(TileBlit1 + 937),a
		ld	a,b
		add	a,40
		ld	(TileBlit1 + 963),a
		pop	bc
		ld	a,c
		add	a,48
		ld	(TileBlit1 + 989),a
		ld	a,b
		add	a,56
		ld	(TileBlit1 + 1015),a
		pop	bc
		ld	a,c
		add	a,64
		ld	(TileBlit1 + 1041),a
		ld	a,b
		add	a,72
		ld	(TileBlit1 + 1067),a
		pop	bc
		ld	a,c
		add	a,80
		ld	(TileBlit1 + 1093),a
		ld	a,b
		add	a,88
		ld	(TileBlit1 + 1119),a
		pop	bc
		ld	a,c
		add	a,96
		ld	(TileBlit1 + 1145),a
		ld	a,b
		add	a,104
		ld	(TileBlit1 + 1171),a
		pop	bc
		ld	a,c
		add	a,112
		ld	(TileBlit1 + 1197),a
		ld	a,b
		add	a,120
		ld	(TileBlit1 + 1223),a
		pop	bc
		ld	a,c
		add	a,128
		ld	(TileBlit1 + 1249),a
		ld	a,b
		add	a,136
		ld	(TileBlit1 + 1275),a
		pop	bc
		ld	a,c
		add	a,144
		ld	(TileBlit1 + 1301),a
		ld	a,b
		add	a,152
		ld	(TileBlit1 + 1327),a
		pop	bc
		ld	a,c
		add	a,160
		ld	(TileBlit1 + 1353),a
		ld	a,b
		add	a,168
		ld	(TileBlit1 + 1379),a
		pop	bc
		ld	a,c
		add	a,176
		ld	(TileBlit1 + 1405),a
		ld	a,b
		add	a,184
		ld	(TileBlit1 + 1431),a
		pop	bc
		ld	a,c
		add	a,192
		ld	(TileBlit1 + 1457),a
		ld	a,b
		add	a,200
		ld	(TileBlit1 + 1483),a
		pop	bc
		ld	a,c
		add	a,208
		ld	(TileBlit1 + 1509),a
		ld	a,b
		add	a,216
		ld	(TileBlit1 + 1535),a
		pop	bc
		ld	a,c
		add	a,224
		ld	(TileBlit1 + 1561),a
		ld	a,b
		add	a,232
		ld	(TileBlit1 + 1587),a
		pop	bc
		ld	a,c
		add	a,240
		ld	(TileBlit1 + 1613),a
		ld	a,b
		add	a,248
		ld	(TileBlit1 + 1639),a
		pop	bc
		ld	a,c
		ld	(TileBlit2 + 1),a
		ld	a,b
		add	a,8
		ld	(TileBlit2 + 27),a
		pop	bc
		ld	a,c
		add	a,16
		ld	(TileBlit2 + 53),a
		ld	a,b
		add	a,24
		ld	(TileBlit2 + 79),a
		pop	bc
		ld	a,c
		add	a,32
		ld	(TileBlit2 + 105),a
		ld	a,b
		add	a,40
		ld	(TileBlit2 + 131),a
		pop	bc
		ld	a,c
		add	a,48
		ld	(TileBlit2 + 157),a
		ld	a,b
		add	a,56
		ld	(TileBlit2 + 183),a
		pop	bc
		ld	a,c
		add	a,64
		ld	(TileBlit2 + 209),a
		ld	a,b
		add	a,72
		ld	(TileBlit2 + 235),a
		pop	bc
		ld	a,c
		add	a,80
		ld	(TileBlit2 + 261),a
		ld	a,b
		add	a,88
		ld	(TileBlit2 + 287),a
		pop	bc
		ld	a,c
		add	a,96
		ld	(TileBlit2 + 313),a
		ld	a,b
		add	a,104
		ld	(TileBlit2 + 339),a
		pop	bc
		ld	a,c
		add	a,112
		ld	(TileBlit2 + 365),a
		ld	a,b
		add	a,120
		ld	(TileBlit2 + 391),a
		pop	bc
		ld	a,c
		add	a,128
		ld	(TileBlit2 + 417),a
		ld	a,b
		add	a,136
		ld	(TileBlit2 + 443),a
		pop	bc
		ld	a,c
		add	a,144
		ld	(TileBlit2 + 469),a
		ld	a,b
		add	a,152
		ld	(TileBlit2 + 495),a
		pop	bc
		ld	a,c
		add	a,160
		ld	(TileBlit2 + 521),a
		ld	a,b
		add	a,168
		ld	(TileBlit2 + 547),a
		pop	bc
		ld	a,c
		add	a,176
		ld	(TileBlit2 + 573),a
		ld	a,b
		add	a,184
		ld	(TileBlit2 + 599),a
		pop	bc
		ld	a,c
		add	a,192
		ld	(TileBlit2 + 625),a
		ld	a,b
		add	a,200
		ld	(TileBlit2 + 651),a
		pop	bc
		ld	a,c
		add	a,208
		ld	(TileBlit2 + 677),a
		ld	a,b
		add	a,216
		ld	(TileBlit2 + 703),a
		pop	bc
		ld	a,c
		add	a,224
		ld	(TileBlit2 + 729),a
		ld	a,b
		add	a,232
		ld	(TileBlit2 + 755),a
		pop	bc
		ld	a,c
		add	a,240
		ld	(TileBlit2 + 781),a
		ld	a,b
		add	a,248
		ld	(TileBlit2 + 807),a
		pop	bc
		ld	a,c
		ld	(TileBlit2 + 833),a
		ld	a,b
		add	a,8
		ld	(TileBlit2 + 859),a
		pop	bc
		ld	a,c
		add	a,16
		ld	(TileBlit2 + 885),a
		ld	a,b
		add	a,24
		ld	(TileBlit2 + 911),a
		pop	bc
		ld	a,c
		add	a,32
		ld	(TileBlit2 + 937),a
		ld	a,b
		add	a,40
		ld	(TileBlit2 + 963),a
		pop	bc
		ld	a,c
		add	a,48
		ld	(TileBlit2 + 989),a
		ld	a,b
		add	a,56
		ld	(TileBlit2 + 1015),a
		pop	bc
		ld	a,c
		add	a,64
		ld	(TileBlit2 + 1041),a
		ld	a,b
		add	a,72
		ld	(TileBlit2 + 1067),a
		pop	bc
		ld	a,c
		add	a,80
		ld	(TileBlit2 + 1093),a
		ld	a,b
		add	a,88
		ld	(TileBlit2 + 1119),a
		pop	bc
		ld	a,c
		add	a,96
		ld	(TileBlit2 + 1145),a
		ld	a,b
		add	a,104
		ld	(TileBlit2 + 1171),a
		pop	bc
		ld	a,c
		add	a,112
		ld	(TileBlit2 + 1197),a
		ld	a,b
		add	a,120
		ld	(TileBlit2 + 1223),a
		pop	bc
		ld	a,c
		add	a,128
		ld	(TileBlit2 + 1249),a
		ld	a,b
		add	a,136
		ld	(TileBlit2 + 1275),a
		pop	bc
		ld	a,c
		add	a,144
		ld	(TileBlit2 + 1301),a
		ld	a,b
		add	a,152
		ld	(TileBlit2 + 1327),a
		pop	bc
		ld	a,c
		add	a,160
		ld	(TileBlit2 + 1353),a
		ld	a,b
		add	a,168
		ld	(TileBlit2 + 1379),a
		pop	bc
		ld	a,c
		add	a,176
		ld	(TileBlit2 + 1405),a
		ld	a,b
		add	a,184
		ld	(TileBlit2 + 1431),a
		pop	bc
		ld	a,c
		add	a,192
		ld	(TileBlit2 + 1457),a
		ld	a,b
		add	a,200
		ld	(TileBlit2 + 1483),a
		pop	bc
		ld	a,c
		add	a,208
		ld	(TileBlit2 + 1509),a
		ld	a,b
		add	a,216
		ld	(TileBlit2 + 1535),a
		pop	bc
		ld	a,c
		add	a,224
		ld	(TileBlit2 + 1561),a
		ld	a,b
		add	a,232
		ld	(TileBlit2 + 1587),a
		pop	bc
		ld	a,c
		add	a,240
		ld	(TileBlit2 + 1613),a
		ld	a,b
		add	a,248
		ld	(TileBlit2 + 1639),a
		pop	bc
		ld	a,c
		ld	(TileBlit2 + 1665),a
		ld	a,b
		add	a,8
		ld	(TileBlit2 + 1691),a
		pop	bc
		ld	a,c
		add	a,16
		ld	(TileBlit2 + 1717),a
		ld	a,b
		add	a,24
		ld	(TileBlit2 + 1743),a
		pop	bc
		ld	a,c
		add	a,32
		ld	(TileBlit2 + 1769),a
		ld	a,b
		add	a,40
		ld	(TileBlit2 + 1795),a
		pop	bc
		ld	a,c
		add	a,48
		ld	(TileBlit2 + 1821),a
		ld	a,b
		add	a,56
		ld	(TileBlit2 + 1847),a
		pop	bc
		ld	a,c
		add	a,64
		ld	(TileBlit2 + 1873),a
		ld	a,b
		add	a,72
		ld	(TileBlit2 + 1899),a
		pop	bc
		ld	a,c
		add	a,80
		ld	(TileBlit2 + 1925),a
		ld	a,b
		add	a,88
		ld	(TileBlit2 + 1951),a
		pop	bc
		ld	a,c
		add	a,96
		ld	(TileBlit2 + 1977),a
		ld	a,b
		add	a,104
		ld	(TileBlit2 + 2003),a
		pop	bc
		ld	a,c
		add	a,112
		ld	(TileBlit2 + 2029),a
		ld	a,b
		add	a,120
		ld	(TileBlit2 + 2055),a
		pop	bc
		ld	a,c
		add	a,128
		ld	(TileBlit2 + 2081),a
		ld	a,b
		add	a,136
		ld	(TileBlit2 + 2107),a
		pop	bc
		ld	a,c
		add	a,144
		ld	(TileBlit2 + 2133),a
		ld	a,b
		add	a,152
		ld	(TileBlit2 + 2159),a
		pop	bc
		ld	a,c
		add	a,160
		ld	(TileBlit2 + 2185),a
		ld	a,b
		add	a,168
		ld	(TileBlit2 + 2211),a
		pop	bc
		ld	a,c
		add	a,176
		ld	(TileBlit2 + 2237),a
		ld	a,b
		add	a,184
		ld	(TileBlit2 + 2263),a
		pop	bc
		ld	a,c
		add	a,192
		ld	(TileBlit2 + 2289),a
		ld	a,b
		add	a,200
		ld	(TileBlit2 + 2315),a
		pop	bc
		ld	a,c
		add	a,208
		ld	(TileBlit2 + 2341),a
		ld	a,b
		add	a,216
		ld	(TileBlit2 + 2367),a
		pop	bc
		ld	a,c
		add	a,224
		ld	(TileBlit2 + 2393),a
		ld	a,b
		add	a,232
		ld	(TileBlit2 + 2419),a
		pop	bc
		ld	a,c
		add	a,240
		ld	(TileBlit2 + 2445),a
		ld	a,b
		add	a,248
		ld	(TileBlit2 + 2471),a
		pop	bc
		ld	a,c
		ld	(TileBlit2 + 2497),a
		ld	a,b
		add	a,8
		ld	(TileBlit2 + 2523),a
		pop	bc
		ld	a,c
		add	a,16
		ld	(TileBlit2 + 2549),a
		ld	a,b
		add	a,24
		ld	(TileBlit2 + 2575),a
		pop	bc
		ld	a,c
		add	a,32
		ld	(TileBlit2 + 2601),a
		ld	a,b
		add	a,40
		ld	(TileBlit2 + 2627),a
		pop	bc
		ld	a,c
		add	a,48
		ld	(TileBlit2 + 2653),a
		ld	a,b
		add	a,56
		ld	(TileBlit2 + 2679),a
		pop	bc
		ld	a,c
		add	a,64
		ld	(TileBlit2 + 2705),a
		ld	a,b
		add	a,72
		ld	(TileBlit2 + 2731),a
		pop	bc
		ld	a,c
		add	a,80
		ld	(TileBlit2 + 2757),a
		ld	a,b
		add	a,88
		ld	(TileBlit2 + 2783),a
		pop	bc
		ld	a,c
		add	a,96
		ld	(TileBlit2 + 2809),a
		ld	a,b
		add	a,104
		ld	(TileBlit2 + 2835),a
		pop	bc
		ld	a,c
		add	a,112
		ld	(TileBlit2 + 2861),a
		ld	a,b
		add	a,120
		ld	(TileBlit2 + 2887),a
		pop	bc
		ld	a,c
		add	a,128
		ld	(TileBlit2 + 2913),a
		ld	a,b
		add	a,136
		ld	(TileBlit2 + 2939),a
		pop	bc
		ld	a,c
		add	a,144
		ld	(TileBlit2 + 2965),a
		ld	a,b
		add	a,152
		ld	(TileBlit2 + 2991),a
		pop	bc
		ld	a,c
		add	a,160
		ld	(TileBlit2 + 3017),a
		ld	a,b
		add	a,168
		ld	(TileBlit2 + 3043),a
		pop	bc
		ld	a,c
		add	a,176
		ld	(TileBlit2 + 3069),a
		ld	a,b
		add	a,184
		ld	(TileBlit2 + 3095),a
		pop	bc
		ld	a,c
		add	a,192
		ld	(TileBlit2 + 3121),a
		ld	a,b
		add	a,200
		ld	(TileBlit2 + 3147),a
		pop	bc
		ld	a,c
		add	a,208
		ld	(TileBlit2 + 3173),a
		ld	a,b
		add	a,216
		ld	(TileBlit2 + 3199),a
		pop	bc
		ld	a,c
		add	a,224
		ld	(TileBlit2 + 3225),a
		ld	a,b
		add	a,232
		ld	(TileBlit2 + 3251),a
		pop	bc
		ld	a,c
		add	a,240
		ld	(TileBlit2 + 3277),a
		ld	a,b
		add	a,248
		ld	(TileBlit2 + 3303),a
		jp	(hl)

TileUpdateA0	ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#7F
		xor	b
		xor	e
		and	#87
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		xor	e
		and	#E1
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,b
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,b
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		xor	e
		and	#E1
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#7F
		xor	b
		xor	e
		and	#87
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ret

TileUpdateA1	ld	a,b
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,b
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#80
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#01
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ret

TileUpdateA2	ld	a,b
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	b
		and	#E7
		xor	b
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,b
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	b
		and	#E7
		xor	b
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ret

TileUpdateA3	ld	a,b
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	b
		and	#87
		xor	b
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,b
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#F8
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#07
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#E0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#1F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	b
		and	#87
		xor	b
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#1F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#FE
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#7F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#07
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ret

TileUpdateB0	ld	a,c
		xor	e
		and	#0F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,c
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#0F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	e
		and	#0F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#0F
		xor	b
		ld	(hl),a
		ret

TileUpdateB1	ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#C3
		xor	b
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,c
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#C3
		xor	b
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#FC
		xor	e
		ld	(hl),a
		inc	l
		ld	a,b
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		ret

TileUpdateB2	ld	(hl),e
		inc	l
		ld	a,c
		xor	b
		and	#CF
		xor	b
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),e
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#0F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,b
		xor	e
		and	#0F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#0F
		xor	b
		xor	e
		and	#F3
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	b
		and	#CF
		xor	b
		xor	e
		and	#F0
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#0F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#0F
		xor	b
		xor	e
		and	#F3
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,b
		xor	e
		and	#0F
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		ret

TileUpdateB3	ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#C0
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#C0
		xor	e
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,c
		xor	e
		and	#C0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#3F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#3F
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,c
		xor	b
		and	#3F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#3F
		xor	b
		xor	e
		and	#C3
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	a,b
		xor	e
		and	#C0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	e
		and	#C0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	(hl),e
		inc	l
		ld	a,c
		xor	e
		and	#03
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		ld	a,l
		add	a,d
		ld	l,a
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#03
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	e
		and	#C0
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),e
		inc	l
		ld	a,b
		xor	e
		and	#3F
		xor	e
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#3F
		xor	b
		ld	(hl),a
		ld	a,l
		add	a,d
		ld	l,a
		ld	a,c
		xor	b
		and	#3F
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	a,c
		xor	b
		and	#3F
		xor	b
		xor	e
		and	#C3
		xor	e
		ld	(hl),a
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	a,c
		xor	b
		and	#C0
		xor	b
		ld	(hl),a
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		ret

SegBmpAddr1	equ	#42AD
SegBmpAddr2	equ	#44EA
SegBmpAddr3	equ	#44F4
SegBmpAddr4	equ	#4A6D
SegBmpAddr5	equ	#4CAA
SegBmpAddr6	equ	#4CB4
SegBmpAddr7	equ	#522D

SegAttrAddr1	equ	#58AD
SegAttrAddr2	equ	#58EA
SegAttrAddr3	equ	#58F4
SegAttrAddr4	equ	#596D
SegAttrAddr5	equ	#59AA
SegAttrAddr6	equ	#59B4
SegAttrAddr7	equ	#5A2D

SegColorOn	equ	%01000111
SegColorOff	equ	%00000111
SegColorCyan	equ	%00000101
SegColorRed	equ	%01000010

SegDrawOn	ld	de,32
		ld	c,SegColorOn
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr2
		call	SegVrtOn
		ld	hl,SegBmpAddr3
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr5
		call	SegVrtOn
		ld	hl,SegBmpAddr6
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDrawOff	ld	de,32
SegSetColor	ld	c,SegColorOff
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr1
		call	SegHrzOff
		ld	hl,SegBmpAddr2
		call	SegVrtOff
		ld	hl,SegBmpAddr3
		call	SegVrtOff
		ld	hl,SegBmpAddr4
		call	SegHrzOff
		ld	hl,SegBmpAddr5
		call	SegVrtOff
		ld	hl,SegBmpAddr6
		call	SegVrtOff
		ld	hl,SegBmpAddr7
		jp	SegHrzOff

SegDrawB	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	c,SegColorCyan
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr1
		call	SegHrzOff
		ld	hl,SegBmpAddr3
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr2
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr5
		call	SegVrtOn
		ld	hl,SegBmpAddr6
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDrawA	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	c,SegColorCyan
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr2
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr3
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr5
		call	SegVrtOn
		ld	hl,SegBmpAddr6
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDrawZ	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	c,SegColorCyan
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr2
		call	SegVrtOff
		ld	hl,SegBmpAddr6
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr3
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr5
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDrawE	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	c,SegColorCyan
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr6
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr2
		call	SegVrtOn
		ld	hl,SegBmpAddr3
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr5
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDraw3	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	c,SegColorRed
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr2
		call	SegVrtOff
		ld	hl,SegBmpAddr5
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr3
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr6
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDrawS	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	c,SegColorRed
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr3
		call	SegVrtOff
		ld	hl,SegBmpAddr5
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr2
		call	SegVrtOn
		ld	hl,SegBmpAddr4
		call	SegHrzOn
		ld	hl,SegBmpAddr6
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

SegDrawC	ld	de,32
		ld	c,SegColorOff
		ld	hl,SegAttrAddr3
		call	SegVrtColor
		ld	hl,SegAttrAddr4
		call	SegHrzColor
		ld	hl,SegAttrAddr6
		call	SegVrtColor
		ld	c,SegColorRed
		ld	hl,SegAttrAddr1
		call	SegHrzColor
		ld	hl,SegAttrAddr2
		call	SegVrtColor
		ld	hl,SegAttrAddr5
		call	SegVrtColor
		ld	hl,SegAttrAddr7
		call	SegHrzColor

		ld	e,%00000100
		ld	hl,SegBmpAddr3
		call	SegVrtOff
		ld	hl,SegBmpAddr4
		call	SegHrzOff
		ld	hl,SegBmpAddr6
		call	SegVrtOff
		ld	de,%0011111111111100
		ld	hl,SegBmpAddr1
		call	SegHrzOn
		ld	hl,SegBmpAddr2
		call	SegVrtOn
		ld	hl,SegBmpAddr5
		call	SegVrtOn
		ld	hl,SegBmpAddr7
		jp	SegHrzOn

		; Horizontal segment.

SegHrzOn	ld	bc,12 * 256 + 255
SegHrzOnLoop	ld	a,l
		ld	(hl),d
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),e
		ld	l,a
		call	DownHL
		djnz	SegHrzOnLoop
		ret

SegHrzOff	ld	bc,11 * 256 + 255
		ld	a,l
		ld	(hl),%00111111
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),%11111100
		ld	l,a
SegHrzOffLoop	call	DownHL
		ld	a,l
		ld	(hl),d
		inc	l
		ld	(hl),d
		inc	l
		ld	(hl),d
		inc	l
		ld	(hl),d
		inc	l
		ld	(hl),d
		inc	l
		ld	(hl),e
		ld	l,a
		djnz	SegHrzOffLoop
		ret

SegHrzColor	ld	b,2
SegHrzColorLoop	ld	a,l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),c
		ld	l,a
		add	hl,de
		djnz	SegHrzColorLoop
		ret

		; Vertical segment.

SegVrtOn	ld	b,24
SegVrtOnLoop	ld	(hl),d
		inc	l
		ld	(hl),e
		dec	l
		call	DownHL
		djnz	SegVrtOnLoop
		ret

SegVrtOff	ld	(hl),%00111111
		inc	l
		ld	(hl),%11111100
		dec	l
		ld	b,23
SegVrtOffLoop	call	DownHL
		ld	(hl),d
		inc	l
		ld	(hl),e
		dec	l
		djnz	SegVrtOffLoop
		ret

SegVrtColor	ld	(hl),c
		inc	l
		ld	(hl),c
		add	hl,de
		ld	(hl),c
		dec	l
		ld	(hl),c
		add	hl,de
		ld	(hl),c
		inc	l
		ld	(hl),c
		add	hl,de
		ld	(hl),c
		dec	l
		ld	(hl),c
		ret

DownHL		inc	h
		ld	a,h
		and	7
		ret	nz
		ld	a,l
		add	a,32
		ld	l,a
		ret	c
		ld	a,h
		sub	8
		ld	h,a
		ret

		org	#FF00

		; The first tile frame is precalculated since there's not enough time to update it between effects.
TileSprite
		INCBIN	"page1/tile.bin"
