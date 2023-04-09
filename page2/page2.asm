		INCLUDE "include/include.inc"
		INCLUDE "build/page0.sym"
		INCLUDE "build/page1.sym"
		INCLUDE "build/page3.sym"
		INCLUDE "build/page4.sym"
		INCLUDE "build/page6.sym"
		INCLUDE "build/page7.sym"

		; System diagnostics.

SysScanlineTab	equ	#B0			; Low VRAM, high VRAM (must follow in this order).
SysAttrMap	equ	#B200
SysPushCode	equ	#B400			; 2291 bytes.
SysCursorHeight	equ	13

		; Cellular automata.

CellVramTab	equ	#A8

		; Teleport.

TelDispListBnk	equ	#BF

		; Particles.

PRT_NUM_REPEL	equ	8			; Big repeller sprite consists of 8 small sprites.
PRT_NUM_BROWN	equ	32			; Must be even due to zig-zag update loop.

PrtRepelOffset	equ	(64 - PRT_NUM_BROWN - PRT_NUM_REPEL) * 4 + 3

PrtDampenTab	equ	#65			; Start is arbitrary.
PrtNibbleTab	equ	#66			; Must follow in this order.
PrtMod192Tab	equ	#68			; Must follow in this order.

PrtJumpTabX	equ	#69			; Start is arbitrary.
PrtJumpTabY	equ	#6A			; Must follow in this order.

PrtSpriteLoTab	equ	#6B			; Start is arbitrary.
PrtAttrLoXTab	equ	#6C			; Must follow in this order.
PrtSpriteHiTab	equ	#6D			; Must follow in this order.
PrtAttrLoYTab	equ	#6E			; Must follow in this order.
PrtBitmapHiTab	equ	#6F			; Must follow in this order.
PrtAttrHiYTab	equ	#70			; Must follow in this order.

PrtBtmpNextTab	equ	#71			; Start is arbitrary.
PrtAttrNextTab	equ	#72			; Must follow in this order.

PrtWrapTab	equ	#73			; Start is arbitrary.
PrtQuantTabX	equ	#74			; Start is arbitrary.
PrtQuantTabY	equ	#75			; Must follow in this order.

PrtRepelXTab	equ	#76			; Pre-loaded.
PrtRepelYTab	equ	#77			; Pre-loaded.
PrtSpriteTab	equ	#78			; Pre-loaded.

PrtDrawJump	equ	#A8			; Must be divisible by 4.
PrtBankColor	equ	#AD
PrtBankX	equ	#AE
PrtBankY	equ	#AF

		; Starfield.

StaFlickerBnk	equ	#82			; Overwrites already unused code.
StaDisplayBnk	equ	#A8
StaProjQuadBnk	equ	#A9
StaAttrToBmpTab	equ	#AA
StaCamDriftTab	equ	#AB
StaPosTab	equ	#AC
StaJumpTab	equ	#C0 + 24

StaQuadCount	equ	51
StaProjQuads	equ	(StaProjQuadBnk + 1) * 256 - StaQuadCount * 5

		; Rotator.

RotDepthBnk	equ	#BF

HandlerSP	equ	#817F			; Interrupt handlers use this address to restore SP.
TEMP_STACK	equ	#817F			; The area just above serves as temporary stack.

		;------------------;
		; MAIN ENTRY POINT ;
		;------------------;

		org	33156			; #8184

		; Preserve BASIC context.

;		di				; Interrupts are already disabled by loader.
		exx
		ld	a,i
		push	iy
		push	hl
		push	af
		ld	(BasicSP + 1),sp
		push	af
		ld	(HandlerSP),sp

		; Generate IM 2 vector table and handler.

		ld	hl,#8000
		ld	a,h
		ld	i,a
		im	2
		inc	a
GenIM2		cp	h
		ld	(hl),a
		inc	hl
		jr	nz,GenIM2

		ld	l,a
		ld	(hl),#C3		; JP nnnn
		ld	hl,NopHandler
		ld	(#8182),hl

		; Mute AY.

		ld	hl,AyInitRegs
		ld	a,5
AyOutLoop	ld	bc,#C1FD
		outi
		outi
		dec	a
		jr	nz,AyOutLoop

		out	(254),a

		; Test for ACB / ABC stereo setup.

		ld	a,(#5800)
		rla
		jr	nc,AyCopyRegs

		ld	a,#A0			; RES 4,B
		ld	(AyMixNoiseC + 1),a
		ld	a,#A8			; RES 5,B
		ld	(AyMixNoiseB + 1),a
		ld	hl,AyRegsABC

AyCopyRegs	ld	de,AyRegisters
		ld	bc,AyRegsSize
AyInitLoop	ldir

		; Prepare initial display list for logo background (page 7 is already set by loader).

		ld	hl,#C000
		ld	de,TelDispListBnk * 256
		inc	b			; Assumes C = 0.
		ldir

		; Clear attribute map for the System Diagnostics effect.

		ld	h,SysAttrMap / 256	; Assumes L = 0.
		ld	de,SysAttrMap + 1
		ld	b,2			; Assumes C = 0.
		ld	(hl),SysBlack
		ldir

		; Generate multicolor push code.

;		ld	hl,SysPushCode
		ld	a,16

SysGenPushCode	ld	(hl),#FD
		ld	c,#C5			; PUSH BC
;		ld	c,#F5			; PUSH AF
		call	SysGenIY		; LD SP,IY
		call	SysGenIX		; LD SP,IX
		ld	c,#F5			; PUSH AF
;		ld	c,#C5			; PUSH BC
		call	SysGenPush
		call	SysGenIX		; LD SP,IX
		ld	c,#C5			; PUSH BC
;		ld	c,#F5			; PUSH AF
		call	SysGenPush
		call	SysGenIX		; LD SP,IX
		ld	c,#F5			; PUSH AF
;		ld	c,#C5			; PUSH BC
		call	SysGenPush
		call	SysGenIX		; LD SP,IX
		ld	c,#C5			; PUSH BC
;		ld	c,#F5			; PUSH AF
		call	SysGenPush
		call	SysGenIX		; LD SP,IX
		ld	c,#F5			; PUSH AF
;		ld	c,#C5			; PUSH BC
		call	SysGenPush
		call	SysGenIX		; LD SP,IX
		ld	c,#C5			; PUSH BC
;		ld	c,#F5			; PUSH AF
		call	SysGenPush
		call	SysGenIX		; LD SP,IX

		; Add delay loop between attribute blocks.

		ex	de,hl
		ld	hl,SysLdirBegin
		ld	c,SysLdirSize
		ldir
		ex	de,hl

		dec	a
		jr	nz,SysGenPushCode

		ld	(hl),#C3
		inc	hl
		ld	(hl),SysPushRet % 256		; TODO: Hard address?
		inc	hl
		ld	(hl),SysPushRet / 256

		; Generate addresses of pre-filled cursor scanlines.

		ld	de,SysAttrMap + 31
		ld	c,32
SysGenCursor1	ld	h,SysScanlineTab
		ld	l,a			; Initial A = 0.
		ld	(hl),e
		inc	h
		ld	(hl),d
		ex	de,hl
		add	hl,bc
		ex	de,hl
		add	a,8
		jr	nz,SysGenCursor1

		; Generate addresses of pushed cursor scanlines.

		ld	de,SysPushCode + 19 - 35
		ld	l,b
		ld	c,18			; Assumes B = 0.
SysGenCursor2	ex	de,hl
		ld	a,e
		and	7
		jr	nz,SysGenSkip
		inc	e
		dec	hl
		add	hl,bc
SysGenSkip	add	hl,bc
		ex	de,hl
		ld	h,SysScanlineTab
		ld	(hl),e
		inc	h
		ld	(hl),d
		inc	l
		jp	p,SysGenCursor2

		; Offsets above 127 point to ROM (cheap and dirty clipping).

SysGenClip	ld	(hl),c
		inc	l
		jr	nz,SysGenClip

		; Generate video RAM lookup table for the cellular automata effect.

;		ld	l,0
CellGenVram	ld	h,CellVramTab
		ld	a,l
		and	15
		add	a,64 + 4
		ld	c,a
		rrca
		rrca
		rrca
		and	%11100000
		ld	(hl),a
		inc	h
		ld	a,c
		and	%01011000
		ld	(hl),a
		inc	l
		jr	nz,CellGenVram

		; Generate particle velocity dampening table (signed x * 31 / 32).

		ld	de,PrtDampenTab * 256
PrtGenDampen	ld	h,b			; Assumes B = 0.
		ld	l,e
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ld	c,e
		sbc	hl,bc
		add	hl,hl			; Shift left 3 times rather than shift right 5 times.
		add	hl,hl
		add	hl,hl
		ld	a,h
		ld	(de),a
		inc	e
		jr	nz,PrtGenDampen

		ld	hl,PrtDampenTab * 256 + 128
		ld	e,l
PrtGenDampenNeg	ld	a,(de)
		neg
		ld	(hl),a
		dec	e
		inc	l
		jr	nz,PrtGenDampenNeg

		; Generate 4.4 -> 8.8 fixed point conversion table.

PrtGenNibble	ld	h,PrtNibbleTab
		ld	a,l
		rla
		sbc	a,a
		ld	d,a
		ld	e,l
		ex	de,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ex	de,hl
		ld	(hl),e
		inc	h
		ld	(hl),d
		inc	l
		jr	nz,PrtGenNibble

		; Generate modulo 192 lookup table.

		inc	h
PrtGenModulo1	ld	a,l
		cp	192
		jr	c,PrtGenModulo2
		add	a,32
		ld	a,128
		rra
		add	a,l
PrtGenModulo2	ld	(hl),a
		inc	l
		jr	nz,PrtGenModulo1

		; Generate (HL) draw jump table.

		ld	de,#0701
		inc	h
PrtGenJumpX	ld	a,l
		and	d
		sub	e
		sbc	a,a
		ld	(hl),a
		inc	l
		jr	nz,PrtGenJumpX

		inc	h
PrtGenJumpY	ld	a,l
		and	d
		sub	e
		ld	a,PrtDrawJump >> 2
		rla
		rla
		ld	(hl),a
		inc	l
		jr	nz,PrtGenJumpY

		; Generate bits 0..7 of sprite address. Also generate bits 0..4 of attribute address.

PrtGenSpriteLo	ld	h,PrtSpriteLoTab
		ld	a,l
		rrca
		rrca
		rrca
		ld	c,a
		and	%11100000
		ld	(hl),a
		inc	h
		ld	a,c
		and	%00011111
		ld	(hl),a
		inc	l
		jr	nz,PrtGenSpriteLo

		; Generate bits 8..15 of sprite address.

		inc	h
PrtGenSpriteHi	ld	a,l
		and	7
		or	PrtSpriteTab
		ld	(hl),a
		inc	l
		jr	nz,PrtGenSpriteHi

		; Generate bits 5..7 of attribute address.

		inc	h
PrtGenAttrLo	ld	a,l
		rlca
		rlca
		and	%11100000
		ld	(hl),a
		inc	l
		jr	nz,PrtGenAttrLo

		; Generate bits 8..15 of bitmap and attribute addresses.

		ld	de,%0000001111011000
PrtGenHiVram	ld	h,PrtAttrHiYTab
		ld	a,l
		rlca
		rlca
		and	d
		or	e
		ld	(hl),a
		dec	h
		add	a,a
		add	a,a
		add	a,a
		ld	(hl),a
		inc	l
		jr	nz,PrtGenHiVram

PrtGenNextVram	ld	h,PrtAttrNextTab
		ld	a,l
		rra
		or	l
		inc	a
		and	d
		or	e
		ld	(hl),a
		dec	h
		add	a,a
		add	a,a
		add	a,a
		ld	(hl),a
		inc	l
		jr	nz,PrtGenNextVram

		; Generate X coordinate wrap lookup table.

		ld	h,PrtWrapTab
PrtGenWrap	ld	a,l
		inc	a
		xor	l
		and	%00011111
		xor	l
		ld	(hl),a
		inc	l
		jr	nz,PrtGenWrap

		; Generate quantized positions for the particle repeller.

		inc	h
PrtGenQuantPos1	ld	a,l
		rla
		and	#F0
		cp	#80
		jr	c,PrtGenQuantPos2
		ld	a,#70
PrtGenQuantPos2	ld	(hl),a
		inc	l
		jp	p,PrtGenQuantPos1

PrtGenQuantNeg1	ld	a,l
		rla
		and	#F0	
		cp	#90
		jr	nc,PrtGenQuantNeg2
		ld	a,#80
PrtGenQuantNeg2	ld	(hl),a
		inc	l
		jr	nz,PrtGenQuantNeg1

PrtGenQuantNibb	ld	a,(hl)
		rrca
		rrca
		rrca
		rrca
		inc	h
		ld	(hl),a
		dec	h
		inc	l
		jr	nz,PrtGenQuantNibb

		; Clear the top letterbox border, just in case.

		ei
		halt

		ld	hl,#5800
		ld	de,#5801
		ld	c,127			; Assumes B = 0.
		ld	(hl),l
		ldir

		; Flick the "Loading..." message.

		ld	a,%10100000
LoadFlashLoop	add	a,a
		push	af
		ccf
		sbc	a,a
		and	7
		ld	hl,#5A80
		ld	de,#5A81
		ld	c,127			; Assumes B = 0.
		ld	(hl),a
		ldir
		halt
		halt
		halt
		halt
		halt
		pop	af
		jr	nz,LoadFlashLoop

		; Clear the loading screen.

		ld	c,32
ClrEffectLoop	call	ClrEffect
		halt
		dec	c
		jr	nz,ClrEffectLoop

		SetBorder 1

		ld	b,8
ClrDelay	dec	bc
		inc	b
		djnz	ClrDelay

		SetBorder 3

		ld	hl,16384 + 128 + 31
		ld	b,h
		ld	d,e

ClrLines	ld	sp,hl
		inc	sp
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
		push	de

		inc	h
		inc	h
		ld	a,h
		and	7
		jr	nz,ClrNextLine
		ld	a,l
		add	a,32
		ld	l,a
		jr	c,ClrNextLine
		ld	a,h
		sub	8
		ld	h,a

ClrNextLine	djnz	ClrLines

		SetBorder 7

		; Enter the main loop.

		ld	sp,(BasicSP + 1)
		ld	hl,SysHandler
		ld	(#8182),hl

		halt				; Multicolor needs perfect sync.
		jr	$ - 1

		; Prepare attribute color pattern.

CellInit	SetMemPage 1

		SetBorder 6

		ld	hl,CellColors
		ld	de,#5880
		ld	bc,512
		ldir

		; The first set of sprites gets clipped (written to ROM).

		ld	sp,TEMP_STACK
		ld	b,10
		push	bc
		djnz	$ - 1

		SetBorder 7

		ld	sp,(BasicSP + 1)

		; Patch IM 2 handler.

		ld	hl,CellHandler
		ld	(#8182),hl
		ld	hl,CellEvents
		ld	(Sequencer + 1),hl

		; Initialize persistent constants.

		ld	ix,CellRet1
		ld	iy,CellRet2
		ld	a,%01010101
		ex	af,af'

		SetMemPage0

		ei
		jr	$

		; Patch IM 2 handler.

LogInit		ld	hl,LogHandler
		ld	(#8182),hl
		ld	hl,LogEvents
		ld	(Sequencer + 1),hl

		ei
LogDrawTele	jr	$

		; Draw new background (part 1 + part 3).

		SetBorder 7

		ld	de,TelDispListBnk * 256
		ld	sp,16384 + 2048
		ld	ix,$ + 7
		jp	TelRender

		SetBorder 6

		ld	e,130
		ld	sp,16384 + 6144
		ld	ix,$ + 7
		jp	TelRender

		SetBorder 1

		ld	sp,(BasicSP + 1)
		halt

		; Let the beam overtake us.

		ld	bc,#500
		dec	bc
		inc	b
		djnz	$ - 2

		SetBorder 7

		; Draw new background (part 2).

		ld	de,TelDispListBnk * 256 + 65
		ld	sp,16384 + 4096
		ld	ix,$ + 7
		jp	TelRender

		SetBorder 1

		ld	sp,(BasicSP + 1)
		jr	$

TelInit		SetBorder 7

		; Let the beam overtake us and remove logo attributes.

		ld	bc,#600
		dec	bc
		inc	b
		djnz	$ - 2			; Leaves BC = 255.

		SetBorder 6

		ld	hl,#5900
		ld	de,#5901
		ld	(hl),%01111000
		ldir

		SetBorder 1

		; Generate color tables for the glitch effect.

		ld	hl,%0010100001111000
		ld	(#8200),hl
		ld	hl,%0101000000111000
		ld	(#8202),hl

		; Patch IM 2 handler.

		ld	hl,TelHandler
		ld	(#8182),hl
		ld	hl,TelEvents
		ld	(Sequencer + 1),hl

		ei
		jr	$

PrtInit		SetBorder 6

		call	PrtInitCode

		SetBorder 1

		; Patch IM 2 handler.

		ld	hl,PrtHandler
		ld	(#8182),hl
		ld	hl,PrtEvents
		ld	(Sequencer + 1),hl

		ei

		; Let the handler set page 4 and generate lookup tables for Starfield.

		halt
		call	StaGenLookups1

		; Let the handler set page 1 and copy rendering code for Flyover and Starfield.

		ld	a,1
		ld	(PrtSetPage + 1),a
		halt

		; Prepare blitter generator for the Tiles effect.

		ld	hl,TileGenBlit
		ld	de,TileGenBlitCopy
		ld	bc,TileGenBlitSize
		ldir

		ld	hl,#C000
		ld	de,#B000
		ld	b,#10
		ldir

		jr	$

		; Patch IM 2 handler.

FlyInit		ld	hl,DummyHandler
		ld	(#8182),hl

		ei
		halt

		SetBorder 6

		call	StaGenLookups2

		; Prepare red flash screen for Starfield.

		SetBorder 5

		SetMemPage7

		ld	a,3
		ld	bc,#1212
		ld	sp,#DB00
		ld	hl,$ + 6
		jp	Push256

		SetBorder 4

		; Pre-draw the first part of Flyover (the beam has already overtaken us).

		SetMemPage 6			; TODO: Based on timing we might want to flip VRAM!

		ld	hl,#4800
		ld	sp,hl
		ld	ix,#FC59
		ld	h,(ix - 1)
		ld	iy,$ + 5
		jp	(hl)

		; Also set attributes.

		SetBorder 3

		ld	a,3
		ld	bc,#4747
		ld	sp,#5B00
		ld	hl,$ + 6
		jp	Push256

		ld	sp,(BasicSP + 1)

		SetBorder 1

		; Patch IM 2 handler.

		ld	hl,FlyHandler
		ld	(#8182),hl
		ld	hl,FlyEvents
		ld	(Sequencer + 1),hl

		jr	$

StaInit		ld	hl,StaRenderRet
		ld	(StaDisplayBnk * 256 + 254),hl

		; Patch IM 2 handler.

		ld	hl,StaHandler
		ld	(#8182),hl
		ld	hl,StaEvents
		ld	(Sequencer + 1),hl

		; Initialize persistent constants.

		ld	iyh,StaJumpTab

		ei
		jr	$

TileInit	SetBorder 6

		; Generate video RAM blit code.

		ld	ix,$ + 7
		jp	TileGenBlitCopy

		SetBorder 5

		SetMemPage 1

		ld	sp,TileDisplace
		ld	hl,$ + 6
		jp	TileUpdateBlit

		SetBorder 4

		ld	ix,$ + 7
		jp	TileBlit1

		SetBorder 3

		; Initialize attributes.

		ld	a,3
		ld	bc,#4747
		ld	sp,#5B00
		ld	hl,$ + 6
		jp	Push256

		SetBorder 1

		ld	sp,(BasicSP + 1)

		; Patch IM 2 handler.

		ld	hl,TileHandler
		ld	(#8182),hl
		ld	hl,TileEvents
		ld	(Sequencer + 1),hl

		ei
		jr	$

RotInit		SetBorder 2

		; Initialize scanline depths for the first frame.

		ld	a,1
		ld	bc,#E5E5
		ld	sp,RotDepthBnk * 256 + 256
		ld	hl,$ + 6
		jp	Push256

		SetBorder 5

		; Initialize display list return point.

		SetMemPage0

		ld	a,%10000001
		ld	(#FF82 + 64),a

		; Combine environment mapped lines with depth and output swizzled display list.

		ld	de,RotEnvMap2
		ld	sp,RotDepthBnk * 256 + 255 - 192
		ld	hl,$ + 6
		jp	RotSwizzle1
		ld	(RotContDE2 + 1),de

		; Prepare rasterization constants.

		ld	ix,#1F00
		ld	iy,#00F8
		ld	bc,#00E0
		ld	de,#7F00
		ld	hl,#00FE
		exx
		xor	a
		ld	b,a
		or	7
		ex	af,af'

		; Render part 1.

		ld	hl,RotInitColor
		ld	(RotFiller81 + 1),hl

		ld	sp,16384 + 2048
		ld	hl,#FF82
		ld	d,h
		ld	e,h
		ld	a,l
		ld	l,(hl)
		ld	c,(hl)
		dec	h
		ld	h,(hl)
		ld	l,c
		ld	c,b
		jp	(hl)

		; Initialize segment colors for the first frame.

RotInitColor	ld	bc,%0000010100000101
		ld	sp,22528 + 11 * 32 + 9
		push	bc
		push	bc
		push	bc
		ld	sp,22528 + 11 * 32 + 29
		push	bc
		push	bc
		push	bc
		ld	sp,22528 + 12 * 32 + 9
		push	bc
		push	bc
		push	bc
		ld	sp,22528 + 12 * 32 + 29
		push	bc
		push	bc
		push	bc

		; Patch IM 2 handler.

		ld	sp,(BasicSP + 1)
		call	RecordingIcon2

		SetBorder 1

		ld	hl,RotHandler
		ld	(#8182),hl
		ld	hl,RotEvents
		ld	(Sequencer + 1),hl

		ei
		jr	$

SegInit		ld	hl,SegHandler
		ld	(#8182),hl
		ld	hl,SegEvents
		ld	(Sequencer + 1),hl

		ei
		jr	$

		; Make 128 BASIC happy.

		ld	a,#50
		out	(#FD),a
		ld	(#5B5C),a

		; Restore BASIC context and exit (like a hero).

BasicSP		ld	sp,0
		pop	af
		pop	hl
		pop	iy
		ld	i,a
		im	1
		exx

		; ...except in case of 128 or +3 BASIC where recovery is impossible.

		bit	4,(iy + 1)
		jr	z,$ + 3
		halt
		ei
		ret

		;-----------------;
		; SHARED ROUTINES ;
		;-----------------;

AyOutputMusic	ld	hl,AyRegisters
		ld	bc,#C1FD
		ld	a,b
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi
		ld	b,a
		outi
		outi

		; Redirect envelope shape output to a "dummy" register (15, I/O port B).

		ld	l,15
		ld	(hl),l
		ret

Push256		REPT	128
		push	bc
		ENDM
		dec	a
		jp	nz,Push256
		jp	(hl)

Sequencer	ld	hl,SysEvents
		dec	(hl)
		ret	nz
		inc	hl
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		inc	hl
		ld	(Sequencer + 1),hl
		ex	de,hl
		jp	(hl)

DummyHandler	call	AyOutputMusic
		call	AyUpdateMusic
NopHandler	ei
		ret

RecordingIcon2	ld	a,192
		add	a,8
		ld	(RecordingIcon2 + 1),a
		jp	m,RecIconSkip

		ld	a,%01010000
		ld	(22528 + 62),a

		ld	bc,%1000000111000011
		ld	de,%1111110000111111

		ld	hl,16384 + 61
		res	0,(hl)
		inc	h
		res	0,(hl)
		inc	h
		ld	a,(hl)
		and	d
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	d
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	d
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	d
		ld	(hl),a
		inc	h
		res	0,(hl)
		inc	h
		res	0,(hl)

		xor	a
		inc	l
		ld	(hl),c
		dec	h
		ld	(hl),b
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),b
		dec	h
		ld	(hl),c

		inc	l
		res	7,(hl)
		inc	h
		res	7,(hl)
		inc	h
		ld	a,(hl)
		and	e
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	e
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	e
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	e
		ld	(hl),a
		inc	h
		res	7,(hl)
		inc	h
		res	7,(hl)

		ld	hl,16384 + 6 * 256 + 30
		ld	a,(hl)
		and	c
		ld	(hl),a
		inc	h
		xor	a
		ld	(hl),a
		ld	hl,16384 + 64 + 30
		ld	(hl),a
		inc	h
		ld	a,(hl)
		and	c
		ld	(hl),a
		ret

		; Attempt to restore the attribute from its neighbor.

RecIconSkip	ld	a,(22528 + 63)
		ld	(22528 + 62),a
		ret

TileGenBlitCopy	; This is where the generator (which must run uncontended) overwrites already used code.

RecordingIcon1	ld	a,-8
		add	a,8
		ld	(RecordingIcon1 + 1),a
		jp	m,RecIconSkip

		ld	a,%01000010
		ld	(22528 + 62),a
		ld	bc,%0111111000111100
		ld	de,%0000001111000000

		ld	hl,16384 + 61
		set	0,(hl)
		inc	h
		set	0,(hl)
		inc	h
		ld	a,(hl)
		or	d
		ld	(hl),a
		inc	h
		ld	a,(hl)
		or	d
		ld	(hl),a
		inc	h
		ld	a,(hl)
		or	d
		ld	(hl),a
		inc	h
		ld	a,(hl)
		or	d
		ld	(hl),a
		inc	h
		set	0,(hl)
		inc	h
		set	0,(hl)

		ld	a,255
		inc	l
		ld	(hl),c
		dec	h
		ld	(hl),b
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),a
		dec	h
		ld	(hl),b
		dec	h
		ld	(hl),c

		inc	l
		set	7,(hl)
		inc	h
		set	7,(hl)
		inc	h
		ld	a,(hl)
		or	e
		ld	(hl),a
		inc	h
		ld	a,(hl)
		or	e
		ld	(hl),a
		inc	h
		ld	a,(hl)
		or	e
		ld	(hl),a
		inc	h
		ld	a,(hl)
		or	e
		ld	(hl),a
		inc	h
		set	7,(hl)
		inc	h
		set	7,(hl)

		ld	hl,16384 + 6 * 256 + 30
		ld	a,(hl)
		or	c
		ld	(hl),a
		inc	h
		ld	(hl),255

		ld	hl,16384 + 64 + 30
		ld	(hl),255
		inc	h
		ld	a,(hl)
		or	c
		ld	(hl),a
		ret

AyInitRegs	db	7, %00111111		; Mute all tone and noise generators.
		db	8, 0			; Set A, B, C volumes to zero.
		db	9, 0
		db	10, 0
		db	12, 0			; Also set envelope coarse frequency to zero.

AyRegsACB	db	6, 0
		db	7, %00111111
		db	11, 255
		db	15, 9
		db	4, #25
		db	5, 0
		db	10, 16
		db	2, #25
		db	3, 0
		db	9, 16
		db	0, #E0
		db	1, 0
		db	8, 16

AyRegsSize	equ	$ - AyRegsACB

AyRegsABC	db	6, 0
		db	7, %00111111
		db	11, 255
		db	15, 9
		db	2, #25
		db	3, 0
		db	9, 16
		db	4, #25
		db	5, 0
		db	10, 16
		db	0, #E0
		db	1, 0
		db	8, 16

SysLdirBegin	ex	af,af'
		ld	sp,32
		add	ix,sp
		add	iy,sp
		ld	a,10
		dec	a
		jr	nz,$ - 1
		nop
		ex	af,af'

SysLdirSize	equ	$ - SysLdirBegin

SysGenIX	ld	(hl),#DD		; LD SP,IX
SysGenIY	inc	hl
		ld	(hl),#F9
		inc	hl
SysGenPush	ld	b,8
SysGenLoop	ld	(hl),c
		inc	hl
		djnz	SysGenLoop
		ret

		;--------------------;
		; SYSTEM DIAGNOSTICS ;
		;--------------------;

SysHandler	call	AyOutputMusic

		; Clear and initialize the first row of every attribute block.

		ld	hl,SysAttrMap
		ld	de,22528 + 128
		ld	bc,512
		ldir

		; Delay loop.

		ld	bc,701
SysDelayLoop	dec	bc
		inc	b
		djnz	SysDelayLoop
		nop

		; Set scanline colors.

		ld	bc,SysBlack
		push	bc
		pop	af
SysFlickColor	ld	b,%01111010
		ld	c,b
		ld	de,SysCyan
		ld	hl,SysBrightCyan

		ld	ix,22528 + 128 + 32
		ld	iy,22528 + 128 + 16
		ld	sp,iy

		jp	SysPushCode
SysPushRet
		SetBorder 6

		; Restore colors / opcodes under cursor (VRAM table only uses 128 entries so we use the remaining space).

		ld	bc,256 * (SysScanlineTab + 1) - SysCursorHeight
SysRestorePos	ld	l,128
SysRestoreLoop	ld	h,SysScanlineTab
		ld	e,(hl)
		inc	h
		ld	d,(hl)
		ex	de,hl
		ld	sp,hl
		ex	de,hl

		ld	a,(bc)			; Pick restored color / opcode.
		ld	d,a
		ld	e,a

		ld	a,l
		and	7
		jr	z,SysRestoreAttr

		push	de
		inc	sp
		jr	SysReuse1

SysRestoreAttr	inc	sp
		push	de
		push	de
		push	de
		push	de
SysReuse1	push	de
		push	de
		push	de

SysRestoreNext	inc	l
		inc	c
		jr	nz,SysRestoreLoop

		; Draw animated stripes.

		SetMemPage0

		ld	de,SysStripes
SysFlickerPhase	ld	hl,TelFadeInTab + 89
		inc	l
		jr	z,SysStripePhase

		ld	(SysFlickerPhase + 1),hl
		cp	(hl)
		jr	c,SysStripePhase
		ld	de,SysNoStripes

SysStripePhase	ld	a,12
		sub	2
		jr	nc,$ + 4
		add	a,160
		ld	(SysStripePhase + 1),a
		ld	c,a

		ld	b,9
SysDrawStripe	ld	a,(de)			; A = offset 0..127.
		inc	de
		add	a,c			; Global animation phase.
		cp	160
		jr	c,$ + 4
		sub	160
		ld	h,SysScanlineTab
		ld	l,a
		and	7
		ld	a,(hl)
		ld	h,SysScanlineTab + 1	; Must not touch zero flag hence no INC H.
		ld	h,(hl)
		ld	l,a
		ld	sp,hl
		inc	sp
		jr	z,SysAttrStripe

		; Modify sixteen PUSH opcodes.

		inc	de
		ld	a,(de)
		ld	h,a
		ld	l,a
		push	hl
		push	hl
		push	hl
		push	hl
		dec	sp			; Skip LD SP,IX.
		dec	sp
		jr	SysReuse2

		; Modify sixteen color attributes.

SysAttrStripe	ld	a,(de)
		inc	de
		ld	h,a
		ld	l,a
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
		push	hl
SysReuse2	push	hl
		push	hl
		push	hl
		push	hl

SysNextStripe	inc	de
		djnz	SysDrawStripe

		; Update cursor position.

		SetMemPage 1

SysCursorPos	ld	hl,SysPositions
SysCursorInc	nop				; Alternates with INC HL.
		ld	(SysCursorPos + 1),hl

		; Draw cursor and backup underlying scanlines in the process.

		ld	a,(hl)
		ld	(SysRestorePos + 1),a
		ld	l,a

		ld	bc,256 * (SysScanlineTab + 1) - SysCursorHeight
SysCursorLoop	ld	h,SysScanlineTab
		ld	e,(hl)
		inc	h
		ld	d,(hl)
		ex	de,hl
		ld	sp,hl
		ex	de,hl

		ld	a,(de)			; Backup color / opcode.
		ld	(bc),a

		ld	a,l
		and	7
		jr	z,SysAttrCursor

		ld	de,#E5E5		; PUSH HL
		push	de
		inc	sp
		jr	SysReuse3

SysAttrCursor	inc	sp
		ld	de,SysBrightCyan
		push	de
		push	de
		push	de
		push	de
SysReuse3	push	de
		push	de
		push	de

SysCursorNext	inc	l
		inc	c
		jr	nz,SysCursorLoop

		; Flicker to indicate "cranking".

SysFlicker	ld	a,%11100000
		rlca
		ld	(SysFlicker + 1),a

		sbc	a,a
SysFlickerMask	and	0
		xor	%01111010
		ld	(SysFlickColor + 1),a

		ld	sp,(HandlerSP)
		call	Sequencer

SysEnableMusic	ld	hl,AyUpdateMusic

		SetBorder 1

		ei
		ret

SysEvnSpriteAy	ld	a,%00111000
		ld	(AyRegisters + 3),a
		ld	a,13
		ld	(AyRegisters + 6),a

SysEvnSprite	ld	hl,SysSprDiag
		ld	b,0
		ld	c,(hl)
		inc	hl
		ld	a,(hl)
		inc	hl
SysDrawSprite	ld	e,(hl)
		inc	hl
		ld	d,(hl)
		inc	hl
		push	bc
		ldir
		pop	bc
		dec	a
		jr	nz,SysDrawSprite

		ld	(SysEvnSprite + 1),hl

		; Turn off cursor animation and flicker.

		ld	(SysCursorInc),a
		ld	(SysFlickerMask + 1),a
		ret

SysEvnNext	ld	a,#23			; INC HL
		ld	(SysCursorInc),a
		ret

SysEvnFlicker	ld	a,%01111000
		ld	(SysFlickerMask + 1),a
SysEvnNop	ret

SysEvnMusic	ld	a,#CD			; CALL
		ld	(SysEnableMusic),a
		ret

SysEvnExit	call	AyUpdateMusic
		pop	hl
		pop	hl
		jp	CellInit

SysEvents	db	47			;80
		dw	SysEvnSpriteAy
		db	80

		dw	SysEvnNext
		db	80
		dw	SysEvnSprite
		db	40
		dw	SysEvnFlicker
		db	20
		dw	SysEvnSprite
		db	40

		dw	SysEvnNext
		db	40
		dw	SysEvnSprite
		db	40
		dw	SysEvnFlicker
		db	20
		dw	SysEvnSprite
		db	40

		dw	SysEvnNext
		db	40
		dw	SysEvnSprite
		db	40
		dw	SysEvnFlicker
		db	20
		dw	SysEvnSprite
		db	40

		dw	SysEvnNext
		db	40
		dw	SysEvnSprite
		db	40
		dw	SysEvnFlicker
		db	20
		dw	SysEvnSpriteAy
		db	40

		dw	SysEvnNext
		db	40
		dw	SysEvnSprite
		db	40
		dw	SysEvnFlicker
		db	20
		dw	SysEvnSprite
		db	40

		dw	SysEvnNext
		db	40
		dw	SysEvnSprite
		db	40
		dw	SysEvnFlicker
		db	20
		dw	SysEvnSpriteAy
		db	40

		dw	SysEvnNext
		db	39
		dw	SysEvnMusic
		db	1
		dw	SysEvnSprite
		db	160
		dw	SysEvnNop
		db	160

		dw	SysEvnExit

		;-------------------;
		; CELLULAR AUTOMATA ;
		;-------------------;

CellHandler	call	AyOutputMusic

		; Render remaining part of the previous frame.

CellPart2	ld	sp,CellDispListB2
CellLookup2	ld	h,CellLookupRot / 256
		ret
CellRet2
		; Draw random sprites.

		ld	sp,TEMP_STACK - 20

		ld	bc,10 * 256 + %10000111
CellDrawLoop	pop	hl
		REPT	7
		ld	a,(hl)
		and	c
		ld	(hl),a
		inc	h
		ENDM
		ld	a,(hl)
		and	c
		ld	(hl),a
		djnz	CellDrawLoop

		SetBorder 7

		call	AyUpdateMusic
		call	Sequencer

		; Generate random sprite addresses (suboptimal but takes predictable number of cycles).

CellRandomSeed	ld	hl,62940

		ld	bc,10 * 256 + %00011111
CellRandomLoop	add	hl,hl
		sbc	a,a
		and	#2D
		xor	l
		ld	l,a
		and	c
		ex	de,hl
		ld	h,CellVramTab
		ld	l,d
		or	(hl)
		inc	h
		ld	h,(hl)
		ld	l,a
		ex	de,hl
		push	de
		djnz	CellRandomLoop

		ld	(CellRandomSeed + 1),hl

		SetBorder 2

		; Swap even / odd scanline fields (always the same number of cycles).

		ex	af,af'

		rlca
		ld	hl,CellDispListB2
		jr	c,$ + 5
		ld	hl,CellDispListA2
		ld	(CellPart2 + 1),hl

		ld	hl,CellDispListA1
		jr	nc,$ + 5
		ld	hl,CellDispListB1

		ex	af,af'

		; Render the first part of the current frame (lagging behind the beam).

		ld	sp,hl
CellLookup1	ld	h,CellLookupRot / 256
		ret
CellRet1
		SetBorder 1

		ld	sp,(HandlerSP)
		ei
		ret

		; State changing events.

CellEvnRot	ld	a,CellLookupRot / 256
		ld	(CellLookup2 + 1),a
		ld	(CellLookup1 + 1),a
CellEvnNop	ret

CellEvnFade	ld	a,CellLookupFade / 256
		ld	(CellLookup2 + 1),a
		ld	(CellLookup1 + 1),a
		ret

CellEvnLeft	ld	a,CellLookupLeft / 256
		ld	(CellLookup2 + 1),a
		ld	(CellLookup1 + 1),a
		ret

CellEvnRight	ld	a,CellLookupRight / 256
		ld	(CellLookup2 + 1),a
		ld	(CellLookup1 + 1),a
		ret

CellEvnExit	ld	sp,(BasicSP + 1)
		jp	LogInit

CellEvents	db	15
		dw	CellEvnFade
		db	145
		dw	CellEvnNop
		db	160

		REPT	4
		dw	CellEvnRot
		db	60
		dw	CellEvnFade
		db	20
		dw	CellEvnRot
		db	60
		dw	CellEvnFade
		db	20
		ENDM

		REPT 4
		dw	CellEvnRight
		db	10
		dw	CellEvnLeft
		db	10
		dw	CellEvnFade
		db	20
		dw	CellEvnRight
		db	10
		dw	CellEvnLeft
		db	10
		dw	CellEvnFade
		db	20
		dw	CellEvnRight
		db	10
		dw	CellEvnLeft
		db	10
		dw	CellEvnFade
		db	20
		dw	CellEvnRot
		db	20
		dw	CellEvnFade
		db	20
		ENDM

		dw	CellEvnExit

		;---------------;
		; GANZFELD LOGO ;
		;---------------;

LogHandler	call	AyOutputMusic
		call	AyUpdateMusic

		SetBorder 6

		; Flash Teleport background?

LogFlashPhase	ld	hl,TelFadeInTab + 255
		inc	l
LogEnableClear	jr	z,LogRender
		ld	(LogFlashPhase + 1),hl

		ld	a,(hl)
LogFlashColor	and	%00111000
		ld	b,a
		ld	c,a

		ld	a,3
		ld	sp,#5B00
		ld	hl,LogRender
		jp	Push256

		; Clear leftover background (once enabled).

LogClearRandom	ld	a,0		; 15
		ld	c,a
		add	a,a
		add	a,a
		add	a,c
		inc	a
		ld	(LogClearRandom + 1),a
		and	%00111111

LogClearLine	ld      h,%00000010
		ld      l,a
		add     hl,hl
		add     hl,hl
		add     hl,hl
		add     hl,hl
		add     hl,hl

		ld      d,h
		ld      e,l
		inc     e
		ld      (hl),255
		ld      bc,31
		ldir

		add	a,64
		cp	%11000000
		jr	c,LogClearLine

LogRender	SetMemPage 4

		; Render logo colors.

		ld	sp,TEMP_STACK
		ld	hl,LogColors
		ld	a,%01010000
		call	LogDrawColors
		ld	a,%00101000
		call	LogDrawColors

		; Advance animation.

LogPhase	ld	de,LogRasterTab + 255
LogAdvance	inc	e
		nop
		ld	(LogPhase + 1),de

		; Render logo bitmap.

		dec	b
		ld	sp,LogVramAddr
		ld	ix,$ + 7
		jp	LogDraw0

		ld	sp,(HandlerSP)
		call	Sequencer

		SetBorder 1

		ei
		ret

LogEvnClear	ld	a,LogClearRandom - (LogEnableClear + 2)
		ld	(LogEnableClear + 1),a
LogEvnNop	ret

LogEvnFlash	ld	a,LogRender - (LogEnableClear + 2)
		ld	(LogEnableClear + 1),a
		ld	a,96 - 3
		ld	(LogFlashPhase + 1),a
		ret

LogEvnDraw	xor	a
		ld	(LogDrawTele + 1),a
		ret

LogEvnBrighter	ld	a,254
		ld	(LogFlashPhase + 1),a
		ld	a,%01111000
		ld	(LogFlashColor + 1),a
		ld	hl,#1D1D
		ld	(LogAdvance),hl
		ret

LogEvnDarker	ld	a,254
		ld	(LogFlashPhase + 1),a
		ld	a,%00111000
		ld	(LogFlashColor + 1),a
		ld	hl,#1C
		ld	(LogAdvance),hl
		ret

LogEvnExit	pop	hl
		pop	hl
		jp	TelInit

LogEvents	db	0
		dw	LogEvnNop
		db	64
		dw	LogEvnClear
		db	158 - 80
		dw	LogEvnFlash
		db	1
		dw	LogEvnDraw
		db	211
		dw	LogEvnBrighter
		db	10
		dw	LogEvnDarker
		db	10
		dw	LogEvnBrighter
		db	10
		dw	LogEvnExit

		;----------;
		; TELEPORT ;
		;----------;

TelHandler	call	AyOutputMusic

		SetBorder 6

		; Render remaining 2nd and 3rd part of the effect.

		SetMemPage 4

		ld	de,TelDispListBnk * 256 + 65
		ld	sp,16384 + 4096
		ld	ix,$ + 7
		jp	TelRender

		SetBorder 5

		ld	sp,16384 + 6144
		ld	ix,$ + 7
		jp	TelRender

		SetBorder 4

		; Update animation.

TelAcc		ld	hl,9
TelVel		ld	bc,0
		add	hl,bc
		ld	(TelVel + 1),hl
TelPos		ld	bc,0
		add	hl,bc
		ld	(TelPos + 1),hl

TelRandom	ld	a,#2D
		add	a,a
		jr	nc,$ + 4
		xor	#2D
		ld	(TelRandom + 1),a

TelCameraShake	and	0
		add	a,h
		or	#C0
		ld	de,TelDispListBnk * 256
		ld	h,a
		ld	l,e

TelColorFlick	and	0
		ld	(TelColorize + 1),a

		; Copy display list from page 7.

		SetMemPage7

		ld	bc,14 * 14
TelCopyLoop	ldi
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
		jp	pe,TelCopyLoop

		ld	sp,TEMP_STACK
		call	AyUpdateMusic
		call	Sequencer

		; Update particle fade-in.

TelFadeIn	ld	hl,TelFadeInTab + 255
		ld	a,(hl)
		add	a,a
		inc	l

		SetMemPage 4

		jr	z,TelFadeInSkip

		ld	(TelFadeIn + 1),hl
		jr	c,TelFadeInShow

		ld	hl,#FFFF
		ld	(TelSprite0),hl
		ld	(TelSprite1),hl
		ld	(TelSprite2),hl
		jr	TelFadeInSkip

TelFadeInShow	ld	hl,%0011111111111100
		ld	(TelSprite0),hl
		ld	hl,%0001111111111000
		ld	(TelSprite1),hl
		ld	hl,%0000111111110000
		ld	(TelSprite2),hl

		; Render 1st part of the effect.

TelFadeInSkip	SetBorder 3

		ld	de,TelDispListBnk * 256
		ld	sp,16384 + 2048
		ld	ix,$ + 7
		jp	TelRender

		SetBorder 2

		; Colorize screen.

TelColorize	ld	a,(#8200)
		ld	b,a
		ld	c,a

		ld	a,3
		ld	sp,#5B00
		ld	hl,$ + 6
		jp	Push256

		ld	sp,(HandlerSP)
		call	RecordingIcon1

		SetBorder 1

		ei
		ret

		; State changing events.

TEL_SHAKE_MASK	equ	%00011011

TelEvnAcc10M	ld	hl,-10
		ld	(TelAcc + 1),hl
		ret

TelEvnAcc11M	ld	hl,-11
		ld	(TelAcc + 1),hl
		ret

TelEvnAcc11P	ld	hl,11
		ld	(TelAcc + 1),hl
		ret

TelEvnShake11M	ld	hl,-11
		ld	(TelAcc + 1),hl
TelEvnShake	ld	a,TEL_SHAKE_MASK
		ld	(TelCameraShake + 1),a
		ld	a,3
		ld	(TelColorFlick + 1),a
		ret

TelEvnNoShake	xor	a
		ld	(TelCameraShake + 1),a
		ld	(TelColorFlick + 1),a
		ret

TelEvnFadeIn	ld	a,95
		ld	(TelFadeIn + 1),a
		ret

TelEvnAcc12P	ld	hl,12
		ld	(TelAcc + 1),hl
		ret

TelEvnExit	ld	sp,(BasicSP + 1)
		jp	PrtInit

TelEvents	db	160
		dw	TelEvnAcc10M
		db	160

		dw	TelEvnAcc11M
		db	160
		dw	TelEvnAcc11P
		db	160

		dw	TelEvnShake
		db	20
		dw	TelEvnNoShake
		db	140

		dw	TelEvnShake11M
		db	20
		dw	TelEvnNoShake
		db	140

		dw	TelEvnShake
		db	20
		dw	TelEvnNoShake
		db	60
		dw	TelEvnFadeIn
		db	80

		dw	TelEvnAcc12P
		db	160

		dw	TelEvnExit

		;-----------;
		; PARTICLES ;
		;-----------;

PrtHandler	push	af
		push	bc
		push	de
		push	hl

		call	AyOutputMusic
		call	AyUpdateMusic

		ld	(PrtRestoreSP + 1),sp

		; Flip video RAM.

PrtFlipVram	ld	a,#5D
		xor	%1010
		ld	(PrtFlipVram + 1),a
		out	(#FD),a

		; Clear screen.

		SetBorder 5

		ld	a,3
		ld	bc,0
		ld	sp,#DB00
		ld	hl,$ + 6
		jp	Push256

		; Draw particles.

		ld	hl,PrtBankColor * 256 + PrtRepelOffset
PrtDrawLoop	ld	(PrtDrawRet + 1),hl

		; Load color and position.

		ld	c,(hl)
		inc	h
		ld	e,(hl)
		inc	h
		ld	d,(hl)

		; Draw sprite.

		ld	h,PrtJumpTabX
		ld	l,e
		ld	a,(hl)
		inc	h
		ld	l,d
		ld	h,(hl)
		ld	l,a
		jp	(hl)

PrtDrawRet	ld	hl,0
		ld	a,l
		add	a,4
		ld	l,a
		jp	nc,PrtDrawLoop

		SetBorder 7

		; Update repeller's color.

PrtRepelColor	ld	a,%01000010
		add	a,4
		ld	(PrtRepelColor + 1),a
		and	%01000010

		ld	hl,PrtBankColor * 256 + PrtRepelOffset
		ld	(hl),a
		ld	l,PrtRepelOffset + 4
		ld	(hl),a
		ld	l,PrtRepelOffset + 8
		ld	(hl),a
		ld	l,PrtRepelOffset + 12
		ld	(hl),a
		ld	l,PrtRepelOffset + 16
		ld	(hl),a
		ld	l,PrtRepelOffset + 20
		ld	(hl),a
		ld	l,PrtRepelOffset + 24
		ld	(hl),a
		ld	l,PrtRepelOffset + 28
		ld	(hl),a

		; Update repeller's position.

		SetBorder 6

PrtRepelRand	ld	hl,#CB0
		add	hl,hl
		sbc	a,a
		and	#2D
		xor	l
		ld	l,a
		ld	(PrtRepelRand + 1),hl

		; Add acceleration to dampened velocity and update X, Y.

		ex	de,hl
PrtRepelScaleX	and	16
PrtRepelBiasX	sub	8

PrtRepelVelX	ld	hl,PrtDampenTab * 256
		add	a,(hl)
		ld	(PrtRepelVelX + 1),a
		inc	h
		ld	l,a
		ld	c,(hl)
		inc	h
		ld	b,(hl)
PrtRepelPosX	ld	hl,240 * 256
		add	hl,bc
		ld	(PrtRepelPosX + 1),hl
		ld	e,h

		ld	a,d
PrtRepelScaleY	and	16
PrtRepelBiasY	sub	8

PrtRepelVelY	ld	hl,PrtDampenTab * 256
		add	a,(hl)
		ld	(PrtRepelVelY + 1),a
		inc	h
		ld	l,a
		ld	c,(hl)
		inc	h
		ld	b,(hl)
PrtRepelPosY	ld	hl,8 * 256
		add	hl,bc

		; Do modulo 192 on vertical position.

		ld	b,PrtMod192Tab
		ld	c,h
		ld	a,(bc)
		ld	h,a
		ld	d,a
		ld	(PrtRepelPosY + 1),hl

		; Generate repeller sprite (Y part).

		sub	3
		ld	c,a
		ld	a,(bc)
		ld	hl,PrtBankY * 256 + PrtRepelOffset
		ld	(hl),a
		inc	c
		ld	a,(bc)
		ld	l,PrtRepelOffset + 4
		ld	(hl),a
		ld	l,PrtRepelOffset + 8
		ld	(hl),a
		inc	c
		inc	c
		ld	a,(bc)
		ld	l,PrtRepelOffset + 12
		ld	(hl),a
		ld	l,PrtRepelOffset + 16
		ld	(hl),a
		inc	c
		inc	c
		ld	a,(bc)
		ld	l,PrtRepelOffset + 20
		ld	(hl),a
		ld	l,PrtRepelOffset + 24
		ld	(hl),a
		inc	c
		ld	a,(bc)
		ld	l,PrtRepelOffset + 28
		ld	(hl),a

		; Generate repeller sprite (X part).

		ld	bc,#0504
		ld	a,e
		ld	hl,PrtBankX * 256 + PrtRepelOffset
		ld	(hl),a
		sub	2
		ld	l,PrtRepelOffset + 4
		ld	(hl),a
		add	a,c
		ld	l,PrtRepelOffset + 8
		ld	(hl),a
		sub	b
		ld	l,PrtRepelOffset + 12
		ld	(hl),a
		add	a,6
		ld	l,PrtRepelOffset + 16
		ld	(hl),a
		sub	b
		ld	l,PrtRepelOffset + 20
		ld	(hl),a
		add	a,c
		ld	l,PrtRepelOffset + 24
		ld	(hl),a
		sub	2
		ld	l,PrtRepelOffset + 28
		ld	(hl),a

		; Update Brownian particle acceleration (random + repel force).
		; DE = repeller (Y, X)

		ld	b,PrtBankX
		ld	h,PrtQuantTabX
		exx

PrtAccSeed	ld	bc,430
		ld	de,PrtBankX * 256 + (64 - PRT_NUM_BROWN) * 4
		ld	h,PrtRepelXTab
		ld	a,e

		; Part that zig-zags from X to Y.

PrtAccLoop	exx
		or	3			; Position offset.
		ld	c,a

		ld	a,(bc)
		sub	e
		ld	l,a
		ld	a,(hl)
		ex	af,af'
		inc	b			; X -> Y
		inc	h			; X -> Y
		ld	a,(bc)
		sub	d
		ld	l,a
		ex	af,af'
		or	(hl)

		exx
		ld	l,a

		ld	a,c
		add	a,a
		rl	b
		jr	nc,PrtAccSkipX
		xor	#2D
PrtAccSkipX	ld	c,a

PrtAccScaleX1	and	8
PrtAccBiasX1	sub	4
		add	a,(hl)
		ld	(de),a
		inc	h			; X -> Y
		inc	d			; X -> Y
		ld	a,b
PrtAccScaleY1	and	8
PrtAccBiasY1	sub	4
		add	a,(hl)
		ld	(de),a

		ld	a,e
		add	a,4
		ld	e,a

		; Part that zig-zags from Y to X.

		exx
		or	3			; Position offset.
		ld	c,a

		ld	a,(bc)
		sub	d
		ld	l,a
		ld	a,(hl)
		ex	af,af'
		dec	b			; Y -> X
		dec	h			; Y -> X
		ld	a,(bc)
		sub	e
		ld	l,a
		ex	af,af'
		or	(hl)

		exx
		ld	l,a

		ld	a,c
		add	a,a
		rl	b
		jr	nc,PrtAccSkipY
		xor	#2D
PrtAccSkipY	ld	c,a

PrtAccScaleY2	and	8
PrtAccBiasY2	sub	4
		add	a,(hl)
		ld	(de),a
		dec	h			; Y -> X
		dec	d			; Y -> X
		ld	a,b
PrtAccScaleX2	and	8
PrtAccBiasX2	sub	4
		add	a,(hl)
		ld	(de),a

		ld	a,e
		add	a,4
		ld	e,a
		jp	nc,PrtAccLoop

		ld	(PrtAccSeed + 1),bc

		; Update Brownian particle positions.

		ld	b,PrtDampenTab
		ld	hl,PrtBankX * 256 + (64 - PRT_NUM_BROWN) * 4

PrtUpdateX	ld	c,(hl)			; Load 4.4 acceleration.
		inc	l
		ld	d,b
		ld	e,(hl)
		ld	a,(de)			; Dampen velocity from the previous frame.
		add	a,c
		ld	(hl),a			; Save new 4.4 velocity.
		inc	l
		inc	d
		ld	e,a
		ld	a,(de)			; Update 8.8 position.
		add	a,(hl)
		ld	(hl),a		
		inc	l
		inc	d
		ld	a,(de)
		adc	a,(hl)
		ld	(hl),a		
		inc	l
		jp	nz,PrtUpdateX

		ld	hl,PrtBankY * 256 + (64 - PRT_NUM_BROWN) * 4

PrtUpdateY	ld	c,(hl)
		inc	l
		ld	d,b
		ld	e,(hl)
		ld	a,(de)
		add	a,c
		ld	(hl),a
		inc	l
		inc	d
		ld	e,a
		ld	a,(de)
		add	a,(hl)
		ld	(hl),a		
		inc	l
		inc	d
		ld	a,(de)
		adc	a,(hl)
		inc	d
		ld	e,a
		ld	a,(de)			; Modulo 192.
		ld	(hl),a		
		inc	l
		jp	nz,PrtUpdateY

		SetBorder 0

PrtRestoreSP	ld	sp,0
		call	Sequencer

		; Restore page for the "main thread" (also preserve the video RAM bit).

		ld	a,(PrtFlipVram + 1)
		and	%11111000
PrtSetPage	or	4
		ld	l,a
		SetMemPageL

		pop	hl
		pop	de
		pop	bc
		pop	af
		ei
		ret

PrtEvnFaster	ld	a,8
		ld	(PrtAccBiasX1 + 1),a
		ld	(PrtAccBiasY1 + 1),a
		ld	(PrtAccBiasY2 + 1),a
		ld	(PrtAccBiasX2 + 1),a
		add	a,a
		ld	(PrtAccScaleX1 + 1),a
		ld	(PrtAccScaleY1 + 1),a
		ld	(PrtAccScaleY2 + 1),a
		ld	(PrtAccScaleX2 + 1),a
		ret

PrtEvnHoriz	xor	a
		ld	(PrtAccScaleX1 + 1),a
		ld	(PrtAccScaleX2 + 1),a
		ld	(PrtRepelScaleX + 1),a
		ld	a,4
		ld	(PrtAccBiasX1 + 1),a
		ld	(PrtAccBiasX2 + 1),a
		ld	(PrtRepelBiasX + 1),a
		ld	a,6
		ld	(PrtRepelBiasY + 1),a
PrtEvnNop	ret

PrtEvnExit	ld	sp,(BasicSP + 1)
		jp	FlyInit

PrtEvents	db	0
		dw	PrtEvnNop
		db	0
		dw	PrtEvnNop
		db	0
		dw	PrtEvnNop
		db	0
		dw	PrtEvnNop
		db	96
		dw	PrtEvnFaster
		db	80
		dw	PrtEvnHoriz
		db	80
		dw	PrtEvnExit

PrtInitCode	; 2 rows, 2 columns

		ld	de,PrtDrawJump * 256
		ld	hl,PrtDrawInit
		ld	bc,PrtDrawInitSize
		ldir

		ex	de,hl
		ld	(hl),#22
		inc	l
		ld	(hl),(PrtDrawTwoNext + 1) % 256
		inc	l
		ld	(hl),(PrtDrawTwoNext + 1) / 256
		inc	l
		ex	de,hl

		ld	hl,PrtDrawTwo
		ld	c,PrtDrawTwoSize
		ldir

		; 2 rows, 1 column

		ld	e,255
		ld	hl,PrtDrawInit
		ld	c,PrtDrawInitSize
		ldir

		ex	de,hl
		ld	(hl),#22
		inc	l
		ld	(hl),(PrtDrawOneNext + 1) % 256
		inc	l
		ld	(hl),(PrtDrawOneNext + 1) / 256
		inc	l
		ex	de,hl

		ld	hl,PrtDrawOne
		ld	c,PrtDrawOneSize
		ldir

		; Modify return jumps to point to the main draw loop.

		ld	hl,PrtDrawRet
		ld	(PrtDrawOneJp1 + 1),hl
		ld	(PrtDrawOneJp2 + 1),hl
		ld	(PrtDrawTwoJp1 + 1),hl
		ld	(PrtDrawTwoJp2 + 1),hl
		ld	(PrtDrawTwoJp3 + 1),hl

		; 1 row, 2 columns

		ld	de,256 * (PrtDrawJump + 2)
		ld	hl,PrtDrawInit
		ld	c,PrtDrawInitSize
		ldir

		ld	hl,PrtDrawTwo
		ld	c,PrtDrawTwoSize
		ldir

		; 1 row, 1 column

		ld	e,255
		ld	hl,PrtDrawInit
		ld	c,PrtDrawInitSize
		ldir

		ld	hl,PrtDrawOne
		ld	c,PrtDrawOneSize
		ldir

		; Initialize repeller particle's color.

		ld	d,4
		ld	h,PrtBankColor
		ld	a,PrtRepelOffset

		ld	bc,#0842
PrtInitRed	ld	l,a
		ld	(hl),c
		add	a,d
		djnz	PrtInitRed

		; Initialize bright cyan Brownian particles.

		ld	bc,#0645
PrtInitCyan1	ld	l,a
		ld	(hl),c
		add	a,d
		djnz	PrtInitCyan1

		; Initialize cyan Brownian particles.

		ld	bc,#0605
PrtInitCyan2	ld	l,a
		ld	(hl),c
		add	a,d
		djnz	PrtInitCyan2

		; Initialize bright white Brownian particles.

		ld	bc,#0A47
PrtInitWhite1	ld	l,a
		ld	(hl),c
		add	a,d
		djnz	PrtInitWhite1

		; Initialize white Brownian particles.

		ld	c,7
PrtInitWhite2	ld	l,a
		ld	(hl),c
		add	a,d
		jr	nc,PrtInitWhite2

		; Initialize positions.

		ld	de,PrtInitPosX
		ld	hl,PrtBankX * 256 + (64 - PRT_NUM_BROWN - PRT_NUM_REPEL) * 4
		call	PrtInitPos

		ld	hl,PrtBankY * 256 + (64 - PRT_NUM_BROWN - PRT_NUM_REPEL) * 4
PrtInitPos	ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	(hl),b
		inc	l
		ld	a,(de)
		inc	de
		ld	(hl),a
		inc	l
		jr	nz,PrtInitPos
		ret

PrtDrawInit	ld	h,PrtSpriteLoTab
		ld	l,e
		ld	e,(hl)
		inc	h
		ld	a,(hl)
		inc	h
		ld	l,d
		ld	d,(hl)
		ex	de,hl
		ld	sp,hl
		ex	de,hl
		inc	h
		or	(hl)
		inc	h
		ld	d,(hl)
		ld	e,c
		inc	h
		ld	h,(hl)
		ld	l,a

PrtDrawInitSize	equ	$ - PrtDrawInit

		; 1-column sprite, 2nd row.

PrtDrawOneRet	ld	hl,8
		add	hl,sp
		ld	sp,hl
PrtDrawOneNext	ld	hl,0
		ld	a,l
		add	a,32
		jr	nc,PrtDrawOneSkip
		ld	l,h
		ld	h,PrtBtmpNextTab
		ld	d,(hl)
		inc	h
		ld	h,(hl)
PrtDrawOneSkip	ld	l,a

PrtDrawOne	ld	a,(hl)
		or	a
		jr	z,PrtDrawOneInit

		ld	h,d

		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a

PrtDrawOneJp1	jp	PrtDrawOneRet

PrtDrawOneInit	ld	(hl),e
		ld	h,d

		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b

PrtDrawOneJp2	jp	PrtDrawOneRet

PrtDrawOneSize	equ	$ - PrtDrawOne

		; 2-column sprite, 2nd row.

PrtDrawTwoNext	ld	hl,0
		ld	a,l
		add	a,32
		jr	nc,PrtDrawTwoSkip
		ld	l,h
		ld	h,PrtBtmpNextTab
		ld	d,(hl)
		inc	h
		ld	h,(hl)
PrtDrawTwoSkip	ld	l,a

PrtDrawTwo	ld	a,(hl)
		or	a
		jr	z,PrtDrawTwoInitL

		ld	a,h
		ld	h,d

		ex	af,af'
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		ex	af,af'

		ld	h,PrtWrapTab
		ld	l,(hl)
		ld	h,a

		ld	a,(hl)
		or	a
		jr	z,PrtDrawTwoInitR

		ld	h,d

		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a

PrtDrawTwoJp1	jp	PrtDrawTwoNext

PrtDrawTwoInitL	ld	(hl),e
		ld	a,h
		ld	h,d

		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b

		ld	h,PrtWrapTab
		ld	l,(hl)
		ld	h,a

		ld	a,(hl)
		or	a
		jr	z,PrtDrawTwoInitR

		ld	h,d

		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a
		inc	h
		pop	bc
		ld	a,c
		or	(hl)
		ld	(hl),a
		inc	h
		ld	a,b
		or	(hl)
		ld	(hl),a

PrtDrawTwoJp2	jp	PrtDrawTwoNext

PrtDrawTwoInitR	ld	(hl),e
		ld	h,d

		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b
		inc	h
		pop	bc
		ld	(hl),c
		inc	h
		ld	(hl),b

PrtDrawTwoJp3	jp	PrtDrawTwoNext

PrtDrawTwoSize	equ	$ - PrtDrawTwo

PrtInitPosX	; Repeller.

		db	240, 238, 242, 237, 243, 238, 242, 240

		; Cyan.

		db	1 * 32 + 16 + 4
		db	2 * 32 + 16 + 4
		db	3 * 32 + 16 + 4
		db	4 * 32 + 16 + 4
		db	5 * 32 + 16 + 4
		db	6 * 32 + 16 + 4

		db	1 * 32 + 4
		db	2 * 32 + 4
		db	3 * 32 + 4
		db	4 * 32 + 4
		db	5 * 32 + 4
		db	6 * 32 + 4

		; White.

		db	0 * 32 + 4
		db	1 * 32 + 4
		db	2 * 32 + 4
		db	3 * 32 + 4
		db	4 * 32 + 4
		db	5 * 32 + 4
		db	6 * 32 + 4
		db	7 * 32 + 4

		db	16 + 4
		db	240 + 4

		db	0 + 4
		db	224 + 4

		db	0 * 32 + 16 + 4
		db	1 * 32 + 16 + 4
		db	2 * 32 + 16 + 4
		db	3 * 32 + 16 + 4
		db	4 * 32 + 16 + 4
		db	5 * 32 + 16 + 4
		db	6 * 32 + 16 + 4
		db	7 * 32 + 16 + 4

PrtInitPosY	; Repeller.

		db	5, 6, 6, 8, 8, 10, 10, 11

		; Cyan.

		db	84, 84, 84, 84, 84, 84
		db	100, 100, 100, 100, 100, 100

		; White.

		db	68, 68, 68, 68, 68, 68, 68, 68
		db	84, 84
		db	100, 100
		db	116, 116, 116, 116, 116, 116, 116, 116

		;---------;
		; FLYOVER ;
		;---------;

FlyHandler	call	AyOutputMusic

		SetBorder 6

		; Render color

		SetMemPage 1

FlyColorPos	ld	hl,FlyColors + 256 - 36
		ld	c,(hl)
		ld	b,c
		inc	h
		ld	e,(hl)
		inc	h
		ld	d,(hl)
		inc	h
		ld	a,(hl)
		ex	de,hl
		ld	sp,hl
		ld	h,FlyBC / 256
		ld	l,a
		ld	l,(hl)
		ld	de,#4747
		ld	ix,$ + 5
		jp	(hl)

		; Render parts 2 and 3.

		SetMemPage 6

		ld	hl,16384 + 4096
		ld	sp,hl
FlyPhaseY2	ld	ix,#FC91		; #E000 + 144 + 1
		ld	h,(ix - 1)
		ld	iy,$ + 5
		jp	(hl)

		SetBorder 5

		ld	sp,16384 + 6144
FlyPhaseY3	ld	ix,#FCC9		; #E000 + 200 + 1
		ld	h,(ix - 1)
		ld	iy,$ + 5
		jp	(hl)

		SetBorder 3

FlyAcc		ld	hl,FLY_SPEED
FlyVel		ld	bc,0
		add	hl,bc
		ld	(FlyVel + 1),hl
FlyPos		ld	bc,-36 * 256
		add	hl,bc
FlyGlitch	nop
		nop
		ld	(FlyPos + 1),hl

		ld	a,h
		ld	(FlyColorPos + 1),a

		; Update vertical animation phase.

		ld	de,#E005
		ld	hl,#E023

		or	h
		ld	(FlyPhaseY1 + 3),a
		ld	(FlyPhaseY2 + 3),a
		ld	(FlyPhaseY3 + 3),a

		; Update horizontal scroll phase.

		ld	c,32
FlyScroll	ld	a,(de)
FlyScroll1	add	a,c
		ld	(de),a
		ld	a,(hl)
FlyScroll2	add	a,c
		ld	(hl),a
		inc	d
		inc	h
		jr	nz,FlyScroll

		SetBorder 2

		; Render part 1.

		ld	l,h
		ld	sp,16384 + 2048
FlyPhaseY1	ld	ix,#FC59
		ld	h,(ix - 1)
		ld	iy,$ + 5
		jp	(hl)

		ld	sp,(HandlerSP)
		call	AyUpdateMusic
		call	Sequencer

		SetBorder 1

		ei
		ret

FLY_SPEED	equ	3

FlyEvnAcc1	ld	hl,-3 * FLY_SPEED
		ld	(FlyAcc + 1),hl
		ld	hl,0
		ld	(FlyGlitch),hl
		ret

FlyEvnAcc2	ld	hl,4 * FLY_SPEED
		ld	(FlyAcc + 1),hl
		ld	l,h
		ld	(FlyGlitch),hl
		ret

FlyEvnAcc3	ld	hl,-2 * FLY_SPEED
		ld	(FlyAcc + 1),hl
		ld	hl,0
		ld	(FlyGlitch),hl
		ret

FlyEvnAcc4	ld	hl,9
		ld	(FlyAcc + 1),hl
		ld	l,h
		ld	(FlyGlitch),hl
		ret

FlyEvnAcc5	ld	hl,-9
		ld	(FlyAcc + 1),hl
		ld	hl,0
		ld	(FlyGlitch),hl
		ret

FlyEvnGlitch1M	ld	hl,#25
		ld	(FlyGlitch),hl
		ret

FlyEvnGlitch1P	ld	hl,#24
		ld	(FlyGlitch),hl
		ret

FlyEvnAdd	ld	a,#81
		ld	(FlyScroll1),a
		ld	(FlyScroll2),a
FlyEvnGlitch2P	ld	hl,#2424
		ld	(FlyGlitch),hl
		ret

FlyEvnSub	ld	a,#91
		ld	(FlyScroll1),a
		ld	(FlyScroll2),a
		ld	hl,#2424
		ld	(FlyGlitch),hl
		ret

FlyEvnStop	xor	a
		ld	(FlyScroll1),a
		ld	(FlyScroll2),a
		ld	hl,#2424
		ld	(FlyGlitch),hl
		ret

FlyEvnExit	pop	hl
		pop	hl
		jp	StaInit

FlyEvents	db	140
		dw	FlyEvnGlitch2P
		db	20
		dw	FlyEvnAcc1
		db	140
		dw	FlyEvnGlitch1M
		db	20

		dw	FlyEvnAcc2
		db	140
		dw	FlyEvnGlitch1P
		db	20
		dw	FlyEvnAcc3
		db	140
		dw	FlyEvnGlitch2P
		db	20

		dw	FlyEvnAcc4
		db	140
		dw	FlyEvnSub
		db	20
		dw	FlyEvnAcc5
		db	140
		dw	FlyEvnGlitch2P
		db	20

		dw	FlyEvnAcc4
		db	140
		dw	FlyEvnAdd
		db	20
		dw	FlyEvnAcc5
		db	140
		dw	FlyEvnStop
		db	20

		dw	FlyEvnExit

		;-----------;
		; STARFIELD ;
		;-----------;

StaHandler	call	AyOutputMusic
		call	AyUpdateMusic
		call	Sequencer

		; Flip video RAM.

StaFlipVram	ld	a,#57
		xor	%1010
		ld	(StaFlipVram + 1),a

		; Page 3 contains lookup tables for perspective division.

		and	%11111000
		or	3
		ld	l,a
		SetMemPageL

		; Page 4 contains clipping and video RAM addressing lookup tables.

		inc	l
		ld	a,(hl)
		ex	af,af'

		SetBorder 0

		; Update camera's vertical drift.

StaCamDriftY	ld	hl,-360
		ld	bc,360
		add	hl,bc
		ld	(StaCamDriftY + 1),hl

		ld	l,h
		ld	h,StaCamDriftTab
		ld	a,(hl)
		add	a,a
		ld	c,a
		sbc	a,a
		and	7
		ld	b,a

		; Also sneakily update the camera's forward motion.

StaMoveCamera	ld	hl,StaPosTab * 256
		dec	l
		dec	l
		ld	(StaMoveCamera + 1),hl

		ld	sp,hl
		inc	h
		inc	h
		exx

		; Update camera's horizontal drift.

StaCamDriftX	ld	a,-1
		inc	a
		ld	(StaCamDriftX + 1),a
StaCamShake	xor	%11100

		ld	l,a
		ld	h,StaCamDriftTab
		ld	a,(hl)
		add	a,a
		ld	c,a
		sbc	a,a
		and	7
		ld	b,a

		SetBorder 1

		; Project quad coordinates (51 layers between distances 32..128).

		INCLUDE	"page2/starproj.inc"

		; Take projected coordinates and create display list.

		ex	af,af'
		out	(#FD),a

		SetBorder 2

		; These frequent constants are faster to push to the display list.

		ld	bc,StaNextLine2
		ld	de,StaNextLine3
		ld	hl,StaInitQuad
		exx

		; Create display list.

		ld	sp,StaDisplayBnk * 256 + 254
		ld	a,256 - StaQuadCount * 5

StaQuadLoop	ld	h,StaProjQuadBnk
		ld	l,a
		ex	af,af'
		ld	c,(hl)			; Horizontal edge distance.
		inc	l
		ld	e,(hl)			; Block position X.
		inc	l
		ld	b,(hl)			; Vertical edge distance.
		inc	l
		ld	d,(hl)			; Block position Y.
		inc	l

		ld	a,b
		and	c
		jr	z,StaNextQuad

		ld	h,(hl)			; Load quad size (table pointer).
		ld	l,c
		ld	a,(hl)
		ld	ixh,a			; Left alignment bitmap.
		inc	l
		ld	a,(hl)
		ld	ixl,a			; Right alignment bitmap.
		inc	l
		ld	a,(hl)			; 0000XXX0

		ld	l,b
		or	(hl)			; 0YYYXXX0
		rla				; 1YYYXXX0 means clip.
		jr	c,StaNextQuad

		ld	iyl,a
		inc	l
		ld	b,(hl)			; Top alignment offset.
		inc	l
		ld	h,(hl)			; Bottom alignment offset.

		xor	a
		jp	(iy)

StaJumpRet	ex	de,hl			; Load video RAM address.
		ld	d,(hl)
		inc	l
		ld	e,(hl)
		push	de			; Push video RAM address.
		push	ix			; Push left/right bitmaps.
;		ld	hl,StaInitQuad
		exx
		push	hl			; Initialize parameters.
		exx

StaNextQuad	ex	af,af'
		add	a,5
		jp	nz,StaQuadLoop

		ld	(StaRenderSP + 1),sp

		SetBorder 3

		; Pick colors.

StaFlickerPhase	ld	a,0
		add	a,4
		and	%11100
		ld	(StaFlickerPhase + 1),a
StaFlickerOn	ld	l,a
		ld	h,StaFlickerBnk
		ld	sp,hl
		pop	bc			; Clear color.
		pop	ix			; Quad color.

		; Clear screen and render display list.

		ld	a,(StaFlipVram + 1)
		out	(#FD),a

		ld	a,3
		ld	sp,#DB00
		ld	hl,$ + 6
		jp	Push256

		ld	d,StaAttrToBmpTab
StaRenderSP	ld	sp,0
		ret				; Jump to display list.
StaRenderRet
		ld	sp,(HandlerSP)

		SetBorder 6

		ei
		ret

		; Display list fillers.

StaInitQuad	pop	bc
		pop	hl
		ret

StaNextLine1	ld	a,l
		add	a,32
		ld	l,a
		dec	l
		ret	nc
		inc	h
		ret

StaNextLine2	ld	a,l
		add	a,31
		ld	l,a
		dec	l
		ret	nc
		inc	h
		ret

StaNextLine3	ld	a,l
		add	a,30
		ld	l,a
		dec	l
		ret	nc
		inc	h
		ret

StaNextLine4	ld	a,l
		add	a,29
		ld	l,a
		dec	l
		ret	nc
		inc	h
		ret

StaNextLine5	ld	a,l
		add	a,28
		ld	l,a
		dec	l
		ret	nc
		inc	h
		ret

StaQuad1x1	ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad1x2	ld	c,128
		push	bc
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad2x1	ld	l,192
		push	hl
		ld	hl,StaNextLine1		; TODO: LD H,NextLineTab?
		push	hl

		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad2x2	ld	l,192
		push	hl
		ld	l,64
		push	hl
;		ld	hl,StaNextLine2		; TODO: Place StaNextLine2 at N * 256 + 64 and reuse L?
;		push	hl
		exx
		push	bc
		exx

		ld	c,128
		push	bc
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad2x3	ld	l,192
		push	hl
		inc	h
		push	hl
		dec	h
		ld	l,64
		push	hl
;		ld	hl,StaNextLine3
;		push	hl
		exx
		push	de
		exx

		ld	c,128
		push	bc
		inc	b
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad3x2	ld	l,192
		push	hl
		ld	l,64
		push	hl
;		ld	hl,StaNextLine2
;		push	hl
		exx
		push	bc
		exx

		ld	hl,#B080
		push	hl
		ld	l,a
		push	hl
;		ld	hl,StaNextLine2
;		push	hl
		exx
		push	bc
		exx

		ld	c,128
		push	bc
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad3x3	ld	l,192
		push	hl
		inc	h
		push	hl
		dec	h
		ld	l,64
		push	hl
;		ld	hl,StaNextLine3
;		push	hl
 		exx
		push	de
		exx

		ld	hl,#B080	; TODO: exx. H = B0, BC = nextline3, DE = next line 4
		push	hl
		inc	h
		push	hl
		dec	h
		ld	l,a
		push	hl
;		ld	hl,StaNextLine3
;		push	hl
  		exx
		push	de
		exx

		ld	c,128
		push	bc
		inc	b
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad3x4	ld	l,192
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,64
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	hl,#B080		; exx? BC = #B080, DE = StaNextLine4, HL = StaNextLine5
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine4		; LD L,NextLineRoutine
		push	hl

		ld	c,128
		push	bc
		inc	b
		push	bc
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad4x3	ld	l,192
		push	hl
		inc	h
		push	hl
		dec	h
		ld	l,64
		push	hl
;		ld	hl,StaNextLine3
;		push	hl
 		exx
		push	de
		exx

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		dec	h
		ld	l,a
		push	hl
;		ld	hl,StaNextLine3
;		push	hl
 		exx
		push	de
		exx

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		dec	h
		ld	l,a
		push	hl
;		ld	hl,StaNextLine3
;		push	hl
 		exx
		push	de
		exx

		ld	c,128
		push	bc
		inc	b
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad4x4	ld	l,192
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,64
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	c,128
		push	bc
		inc	b
		push	bc
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad4x5	ld	l,192
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,64
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	c,128
		push	bc
		inc	b
		push	bc
		push	bc
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad5x4	ld	l,192
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,64
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine4
		push	hl

		ld	c,128
		push	bc
		inc	b
		push	bc
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

StaQuad5x5	ld	l,192
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,64
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	hl,#B080
		push	hl
		inc	h
		push	hl
		push	hl
		push	hl
		dec	h
		ld	l,a
		push	hl
		ld	hl,StaNextLine5
		push	hl

		ld	c,128
		push	bc
		inc	b
		push	bc
		push	bc
		push	bc
		dec	b
		ld	c,a
		push	bc
		jp	StaJumpRet

		; During Particles we overwrite page 4 with these lookup tables.

StaGenLookups1	ld	a,13
		ld	h,StaJumpTab
		ld	de,StaJumpList
StaGenJumpTab	ex	de,hl
		ld	e,(hl)
		inc	hl
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		inc	hl
		ex	de,hl
		ld	(hl),#C3
		inc	l
		ld	(hl),c
		inc	l
		ld	(hl),b
		dec	a
		jr	nz,StaGenJumpTab

		; Generate bitmaps for left alignment.

		dec	h
		ld	l,a
StaGenBmpLeft	ld	(hl),%01111111
		inc	l
		ld	(hl),%00111111
		inc	l
		ld	(hl),%00011111
		inc	l
		ld	(hl),%00001111
		inc	l
		ld	(hl),%00000111
		inc	l
		ld	(hl),%00000011
		inc	l
		ld	(hl),%00000001
		inc	l
		ld	(hl),%11111111
		inc	l
		jr	nz,StaGenBmpLeft

		; Generate bitmaps for right alignment.

		dec	h
StaGenBmpRight	ld	(hl),%11000000
		inc	l
		ld	(hl),%11100000
		inc	l
		ld	(hl),%11110000
		inc	l
		ld	(hl),%11111000
		inc	l
		ld	(hl),%11111100
		inc	l
		ld	(hl),%11111110
		inc	l
		ld	(hl),%11111111
		inc	l
		ld	(hl),%10000000
		inc	l
		jr	nz,StaGenBmpRight

		; Right alignment bitmaps.

		ld	bc,#B208		; B is first time used in StaGenTop1.
		ld	de,#E702		; -25 : 2
		ld	l,7			; 7 is the smallest quad
StaGenRight	ld	a,(hl)
		ld	(de),a
		inc	l
		ld	a,e
		add	a,c
		ld	e,a
		jr	nc,StaGenRight
		inc	l
		inc	d
		jr	nz,StaGenRight

		; Left alignment bitmaps.

		dec	e
		inc	h
;		ld	l,d
StaGenLeft1	ld	d,#E7			; -25
		ld	a,(hl)
StaGenLeft2	ld	(de),a
		inc	d
		jr	nz,StaGenLeft2
		inc	l
		ld	a,e
		add	a,c
		ld	e,a
		jr	nc,StaGenLeft1

		; Top sprite fillers.

		ld	de,#B00F
		ld	l,6
StaGenTop1	ld	h,#E7			; -25
StaGenTop2	ld	(hl),b
		inc	h
		jr	nz,StaGenTop2
		ld	a,b
		add	a,2
		and	e
		or	d
		ld	b,a
		ld	a,l
		add	a,c
		ld	l,a
		jr	nc,StaGenTop1

		; Bottom sprite fillers.

		ld	b,d
		ld	hl,#E707		; -25 | 7
StaGenBottom	ld	(hl),b
		ld	a,b
		add	a,2
		and	e
		or	d
		ld	b,a
		ld	a,l
		add	a,c
		ld	l,a
		jr	nc,StaGenBottom
		ld	a,b
		add	a,2
		and	e
		or	d
		ld	b,a
		inc	h
		jr	nz,StaGenBottom

		; Initially assume that the sprite gets clipped.

		ld	bc,#FF06		; At least bits 7 and 4 must be set for clip flags.
		ld	hl,#E703		; -25 | 2
StaGenClipInit	ld	(hl),b
		inc	l
		inc	l
		ld	(hl),b
		ld	a,l
		add	a,c
		ld	l,a
		jr	nc,StaGenClipInit
		inc	h
		jr	nz,StaGenClipInit

		; Generate horizontal block deltas.

		ld	de,#D938		; -39 | %00111000
;		ld	l,3
StaGenDeltaX1	ld	h,#E7			; -25
		ld	a,d			; Distance to screen edge (negative).
		and	e
		ld	b,a			; Block position (left / top).
		ld	a,d
		add	a,6			; 7 is the smallest possible quad.
		ld	c,a
StaGenDeltaX2	inc	c			; Overflow means that quad crosses the right / bottom edge.
		jr	z,StaGenClip
		ld	a,c
		and	e
		sub	b			; Block position (right / bottom).
		rrca
		rrca
		ld	(hl),a
		inc	h
		jr	nz,StaGenDeltaX2
StaGenClip	inc	d
		ld	a,l
		add	a,8
		ld	l,a
		jr	nc,StaGenDeltaX1

		; Generate vertical block deltas.

		ld	de,#DB06		; D is used by the next generator.
;		ld	hl,#E703		; -25 | 3
		ld	h,#E7
StaGenDeltaY	ld	a,(hl)
		inc	l
		inc	l
		rlca
		rlca
		rlca
		ld	(hl),a
		ld	a,l
		add	a,e
		ld	l,a
		jr	nc,StaGenDeltaY
		inc	h
		jr	nz,StaGenDeltaY

		; Generate video RAM addresses.

		ld	e,h
		ld	h,192 + 23
StaGenVram1	ld	l,64
StaGenVram2	dec	de
		dec	l
		dec	e
		ld	(hl),e
		inc	e
		dec	l
		ld	(hl),d
		jr	nz,StaGenVram2
		dec	h
		bit	6,h
		jr	nz,StaGenVram1

		ret

		; These lookup tables must be located in page 2 during rendering.

StaGenLookups2	SetMemPage 1

		ld	hl,StaAttrToBmpTab * 256
StaGenAttrToBmp	ld	(hl),#C0
		inc	l
		ld	(hl),#C8
		inc	l
		ld	(hl),#D0
		inc	l
		inc	l
		jr	nz,StaGenAttrToBmp

		ld	h,StaCameraDrift / 256
		ld	de,StaCamDriftTab * 256
		ld	bc,#500
StaGenCopy	ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		jp	pe,StaGenCopy

		ld	hl,StaColors
		ld	d,StaFlickerBnk
		ld	c,48
		ldir

		ld	de,StaProjQuads + 4
StaGenQuadSizes	ldi
		ld	a,e
		add	a,4
		ld	e,a
		jr	nc,StaGenQuadSizes

		ret

		; TODO: Could be placed into page 6?

StaJumpList	db	(1 - 1) * 32 + (1 - 1) * 4
		dw	StaQuad1x1
		db	(1 - 1) * 32 + (2 - 1) * 4
		dw	StaQuad1x2
		db	(2 - 1) * 32 + (1 - 1) * 4
		dw	StaQuad2x1
		db	(2 - 1) * 32 + (2 - 1) * 4
		dw	StaQuad2x2
		db	(2 - 1) * 32 + (3 - 1) * 4
		dw	StaQuad2x3
		db	(3 - 1) * 32 + (2 - 1) * 4
		dw	StaQuad3x2
		db	(3 - 1) * 32 + (3 - 1) * 4
		dw	StaQuad3x3
		db	(3 - 1) * 32 + (4 - 1) * 4
		dw	StaQuad3x4
		db	(4 - 1) * 32 + (3 - 1) * 4
		dw	StaQuad4x3
		db	(4 - 1) * 32 + (4 - 1) * 4
		dw	StaQuad4x4
		db	(4 - 1) * 32 + (5 - 1) * 4
		dw	StaQuad4x5
		db	(5 - 1) * 32 + (4 - 1) * 4
		dw	StaQuad5x4
		db	(5 - 1) * 32 + (5 - 1) * 4
		dw	StaQuad5x5

StaEvnNoShake	ld	hl,#0021
		ld	(StaFlickerOn),hl
		xor	a
		ld	(StaCamShake + 1),a
StaEvnNop	ret

StaEvnShake	ld	hl,#266F
		ld	(StaFlickerOn),hl
		ld	a,%11100
		ld	(StaCamShake + 1),a
		ret

StaEvnRedFg	xor	a
		ld	(StaFlickerOn + 1),a
		ret

StaEvnCyanFg	ld	a,32
		ld	(StaFlickerOn + 1),a
		ret

StaEvnWhiteFg	ld	a,36
		ld	(StaFlickerOn + 1),a
		ret

StaEvnCyanBg	ld	a,40
		ld	(StaFlickerOn + 1),a
		ret

StaEvnWhiteBg	ld	a,44
		ld	(StaFlickerOn + 1),a
		ret

StaEvnExit	pop	hl
		pop	hl
		jp	TileInit

StaEvents	db	20
		dw	StaEvnNoShake
		db	30
		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	5
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	15 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	15
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	5 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	5
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	15 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	15
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	5 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	5
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	15 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	15
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	5 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	5
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	15 + 50

		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	15
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	5 + 45

		dw	StaEvnShake
		db	35
		dw	StaEvnNoShake
		db	45
		dw	StaEvnShake
		db	35
		dw	StaEvnNoShake
		db	45
		dw	StaEvnShake
		db	35
		dw	StaEvnNoShake
		db	60
		dw	StaEvnCyanFg
		db	5
		dw	StaEvnRedFg
		db	5
		dw	StaEvnWhiteFg
		db	5
		dw	StaEvnRedFg
		db	5 + 45

		dw	StaEvnShake
		db	35
		dw	StaEvnNoShake
		db	45
		dw	StaEvnShake
		db	35
		dw	StaEvnNoShake
		db	45
		dw	StaEvnShake
		db	35
		dw	StaEvnNoShake
		db	60
		dw	StaEvnCyanBg
		db	5
		dw	StaEvnRedFg
		db	5
		dw	StaEvnWhiteBg
		db	5
		dw	StaEvnWhiteFg
		db	5

		dw	StaEvnExit

		;-------;
		; TILES ;
		;-------;

TileHandler	call	AyOutputMusic

		SetBorder 6

		; Render part 2.

		ld	ix,$ + 7
		jp	TileBlit2

		SetBorder 5

		ld	sp,TEMP_STACK
		call	AyUpdateMusic
		call	Sequencer

		SetMemPage 1

		; Update light direction and sprite.

TileUpdate	ld	hl,TileNormals
		inc	l
		ld	(TileUpdate + 1),hl
		ld	c,(hl)			; Raster offset for normal 0.
		inc	h
		ld	b,(hl)			; Raster offset for normal 1.
		inc	h
		ld	l,(hl)			; Raster offset for normal 2.

		inc	h
		ld	a,(hl)
		ld	(TileRasterZ0 + 1),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterZ1 + 1),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterZ2 + 1),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterZ3 + 1),a

		ld	l,b
		ld	a,(hl)
		ld	(TileRasterXY0 + 2),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterXY1 + 2),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterXY2 + 2),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterXY3 + 2),a

		ld	l,c
		ld	a,(hl)
		ld	(TileRasterXY0 + 1),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterXY1 + 1),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterXY2 + 1),a
		inc	l
		ld	a,(hl)
		ld	(TileRasterXY3 + 1),a

		; Update vertical scroll phase.

		SetBorder 2

TileScrollAcc	ld	hl,0
TileScrollVel	ld	bc,0
		add	hl,bc
		ld	(TileScrollVel + 1),hl
TileScrollPos	ld	bc,0
		add	hl,bc
		ld	(TileScrollPos + 1),hl

		ld	a,h
		and	%11111000
		ld	hl,TileSprite + 8
		ld	(TilePos3 + 1),a
		sub	l
		ld	(TilePos2 + 1),a
		sub	l
		ld	(TilePos1 + 1),a
		sub	l
		ld	l,a

TileRasterXY0	ld	bc,0
TileRasterZ0	ld	de,25 * 256
TileSprite0	call	TileUpdateB0

TileRasterXY1	ld	bc,0
TileRasterZ1	ld	e,0
TilePos1	ld	l,0
TileSprite1	call	TileUpdateB1

TileRasterXY2	ld	bc,0
TileRasterZ2	ld	e,0
TilePos2	ld	l,0
TileSprite2	call	TileUpdateB2

TileRasterXY3	ld	bc,0
TileRasterZ3	ld	e,0
TilePos3	ld	l,0
TileSprite3	call	TileUpdateB3

TileWaveAcc	ld	hl,0
TileWaveVel	ld	bc,512
		add	hl,bc
		ld	(TileWaveVel + 1),hl
TileWavePos	ld	bc,0
		add	hl,bc
		ld	(TileWavePos + 1),hl

		ld	l,h
		ld	h,TileDisplace / 256
		ld	sp,hl
		ld	hl,$ + 6
		jp	TileUpdateBlit

		SetBorder 4

		; Render part 1 (already lagging behind the beam).

		ld	ix,$ + 7
		jp	TileBlit1

		ld	sp,(HandlerSP)
		call	RecordingIcon2

		SetBorder 1

		ei
		ret

TileEvnPosAcc1	ld	hl,32
		ld	(TileScrollAcc + 1),hl
		ret

TileEvnPosAcc2	ld	hl,-3
		ld	(TileWaveAcc + 1),hl
		ld	hl,64
		ld	(TileScrollAcc + 1),hl
		ret

TileEvnNegAcc2	ld	hl,-64
		ld	(TileScrollAcc + 1),hl
		ret

TileEvnSprite	ld	hl,TileUpdateA0
		ld	(TileSprite0 + 1),hl
		ld	hl,TileUpdateA1
		ld	(TileSprite1 + 1),hl
		ld	hl,TileUpdateA2
		ld	(TileSprite2 + 1),hl
		ld	hl,TileUpdateA3
		ld	(TileSprite3 + 1),hl

		ld	hl,1
		ld	(TileWaveAcc + 1),hl

TileEvnKeep	ld	hl,0
		ld	(TileScrollAcc + 1),hl
		ret

TileEvnExit	ld	sp,(BasicSP + 1)
		jp	RotInit

TileEvents	db	0
		dw	TileEvnPosAcc1
		db	64
		dw	TileEvnKeep
		db	0
		dw	TileEvnPosAcc1
		db	64

		dw	TileEvnSprite
		db	160 - 64
		dw	TileEvnNegAcc2
		db	128
		dw	TileEvnKeep
		db	160 - 64

		dw	TileEvnPosAcc2
		db	128
		dw	TileEvnKeep
		db	320 - 128 - 64
		dw	TileEvnNegAcc2
		db	64

		dw	TileEvnExit

		;---------;
		; ROTATOR ;
		;---------;

RotHandler	call	AyOutputMusic

		SetBorder 6

		; Combine environment mapped lines with depth and output swizzled display list.

RotContDE2	ld	de,0
		ld	sp,RotDepthBnk * 256 + 255 - 128
		ld	hl,$ + 6
		jp	RotSwizzle2
		ld	(RotContDE3 + 1),de

		; Prepare rasterization constants.

		ld	ix,#1F00
;		ld	iy,#00F8
		ld	bc,#00E0
		ld	de,#7F00
		ld	hl,#00FE
		exx

		; Render part 2.

		ld	hl,RotRet2
		ld	(RotFiller81 + 1),hl

		ld	sp,16384 + 4096
		ld	hl,#FF82
		ld	d,h
		ld	e,h
		ld	a,l
		ld	l,(hl)
		ld	c,(hl)
		dec	h
		ld	h,(hl)
		ld	l,c
		ld	bc,0
		jp	(hl)
RotRet2
		SetBorder 5

		; Combine environment mapped lines with depth and output swizzled display list.

RotContDE3	ld	de,0
		ld	sp,RotDepthBnk * 256 + 255 - 64
		ld	hl,$ + 6
		jp	RotSwizzle3

		; Render part 3.

		ld	hl,RotRet3
		ld	(RotFiller81 + 1),hl

		ld	sp,16384 + 6144
		ld	hl,#FF82
		ld	d,h
		ld	e,h
		ld	a,l
		ld	l,(hl)
		ld	c,(hl)
		dec	h
		ld	h,(hl)
		ld	l,c
		ld	bc,0
		jp	(hl)
RotRet3
		SetBorder 2

		; Update animation phase.

RotAcc		ld	bc,-4
RotVel		ld	hl,0
		add	hl,bc
		ld	(RotVel + 1),hl
		ld	(RotColorVel + 1),hl
RotPos		ld	bc,0
		add	hl,bc
		ld	(RotPos + 1),hl

		ld	a,h
		ld	(RotDdaPhase + 1),a
		ld	(RotColorPhase + 1),a

		ld	sp,TEMP_STACK
		call	AyUpdateMusic
		call	Sequencer

		; Interpolate the bottom depth segment.

		ld	sp,RotDepthBnk * 256 + 255
RotDdaPhase	ld	hl,RotDdaTabsBtm
		ld	a,(hl)
		ld	iyl,a
		inc	h
		ld	a,(hl)
		ld	iyh,a			; IY = unrolled DDA loop address.
		inc	h
		ld	b,0
		ld	c,(hl)			; Always positive DDA step.
		inc	h
		ld	a,l
		ld	e,(hl)
		inc	h
		ld	h,(hl)
		ld	l,e			; HL = initial DDA value.
		scf
		rr	h
		jr	nc,$ + 3		; Align odd bottom segment sizes.
		inc	sp
		ld	ix,$ + 6
		jp	(iy)

		; Interpolate the top depth segment.

		ld	h,RotDdaTabsTop / 256
		ld	l,a
		ld	a,(hl)
		ld	iyl,a
		inc	h
		ld	a,(hl)
		ld	iyh,a			; IY = unrolled DDA loop address.
		inc	h
		dec	b
		ld	c,(hl)			; Always negative DDA step.
		inc	h
		ld	a,l
		ld	e,(hl)			; Load initial DDA value.
		inc	h
		ld	h,(hl)
		ld	l,e			; HL = initial DDA value.
		ld	ix,$ + 6
		jp	(iy)

		; Combine environment mapped lines with depth and output swizzled display list.

RotEnvMap	ld	d,RotEnvMap2 / 256
		ld	e,a
		ld	sp,RotDepthBnk * 256 + 255 - 192
		ld	hl,$ + 6
		jp	RotSwizzle1
		ld	(RotContDE2 + 1),de

		; Prepare rasterization constants.

		ld	ix,#1F00
		ld	iy,#00F8
;		ld	bc,#00E0
;		ld	de,#7F00
;		ld	hl,#00FE
;		exx

		; Render part 1.

		ld	hl,RotRet1
		ld	(RotFiller81 + 1),hl

		ld	sp,16384 + 2048
		ld	hl,#FF82
		ld	d,h
		ld	e,h
		ld	a,l
		ld	l,(hl)
		ld	c,(hl)
		dec	h
		ld	h,(hl)
		ld	l,c
		ld	bc,0
		jp	(hl)
RotRet1
		; Calculate segment colors.

RotColorVel	ld	bc,0
		ld	a,b			; "Sign-extend" D (we only need the least significant bit).
		rlca
RotColorPos	ld	hl,111 * 256		; Quadrant color change offset.
		add	hl,bc
		ld	(RotColorPos + 1),hl
RotQuadrant	adc	a,0
		ld	(RotQuadrant + 1),a

		ld	hl,%0100011101000111
		rra
		sbc	a,a
		and	%00000101
		xor	h
		ld	d,a
		ld	e,a
		rra
		sbc	a,a
		and	%01000010
		xor	h
		ld	b,a
		ld	c,a
		exx

		; Colorize select segments.

RotColorPhase	ld	hl,RotColorAddrTab
		ld	e,(hl)
		inc	h
		ld	a,(hl)
		inc	h
		ld	h,(hl)
		ld	l,a
		ld	sp,hl

		ld	d,RotFillEmpty / 256
		ld	a,(de)
		inc	e
		ld	h,d
		ld	l,a
		ld	ix,$ + 5
		jp	(hl)

		ld	sp,(HandlerSP)
		call	RecordingIcon2

		SetBorder 1

		ei
		ret

RotEvnMap1	ld	a,RotEnvMap1 / 256
		ld	(RotEnvMap + 1),a
		ret

RotEvnMap2	ld	a,RotEnvMap2 / 256
		ld	(RotEnvMap + 1),a
		ret

RotEvnMap2Acc0	ld	a,RotEnvMap2 / 256
		ld	(RotEnvMap + 1),a
RotEvnAcc0	ld	hl,0
		ld	(RotAcc + 1),hl
		ret

RotEvnMap2Acc6P	ld	a,RotEnvMap2 / 256
		ld	(RotEnvMap + 1),a
RotEvnAcc6P	ld	hl,8
		ld	(RotAcc + 1),hl
		ret

RotEvnAcc3M	ld	hl,-4
		ld	(RotAcc + 1),hl
RotEvnNop	ret

RotEvnExit	ld	sp,(BasicSP + 1)
		jp	SegInit

RotEvents	db	5
		dw	RotEvnMap1
		db	5
		dw	RotEvnMap2
		db	5
		dw	RotEvnMap1
		db	145
		dw	RotEvnAcc6P
		db	160

		dw	RotEvnAcc0
		db	160
		dw	RotEvnAcc3M
		db	160

		dw	RotEvnNop
		db	160
		dw	RotEvnMap2Acc0
		db	5
		dw	RotEvnMap1
		db	5
		dw	RotEvnMap2
		db	5
		dw	RotEvnMap1
		db	145

		dw	RotEvnMap2Acc6P
		db	5
		dw	RotEvnMap1
		db	5
		dw	RotEvnMap2
		db	5
		dw	RotEvnMap1
		db	145

		dw	RotEvnAcc3M
		db	160

		dw	RotEvnExit

		;----------;
		; SEGMENTS ;
		;----------;

SegHandler	call	AyOutputMusic
		call	AyUpdateMusic		; Also sets page 0.

		SetBorder 6

		; Clear random background lines.

SegClearRandom	ld	a,255
		ld	c,a
		add	a,a
		add	a,a
		add	a,c
		inc	a
		ld	(SegClearRandom + 1),a
		and	%00111111

SegClearLine	ld      h,%00000010
		ld      l,a
		add     hl,hl
		add     hl,hl
		add     hl,hl
		add     hl,hl
		add     hl,hl

		ld      d,h
		ld      e,l
		inc     e
		ld      (hl),0
		ld      bc,31
		ldir

		add	a,64
		cp	%11000000
		jr	c,SegClearLine

		; Draw segments.

		SetMemPage 1

SegRender	call	SegDrawOn
		call	Sequencer

		SetBorder 1

		ei
		ret

SegEvnDrawOff	ld	hl,SegDrawOff
		ld	(SegRender + 1),hl
		ret

SegEvnDrawOn	ld	hl,SegDrawOn
		ld	(SegRender + 1),hl
		ret

SegEvnDrawB	ld	hl,SegDrawB
		ld	(SegRender + 1),hl
		ret

SegEvnDrawA	ld	hl,SegDrawA
		ld	(SegRender + 1),hl
		ret

SegEvnDrawZ	ld	hl,SegDrawZ
		ld	(SegRender + 1),hl
		ret

SegEvnDrawE	ld	hl,SegDrawE
		ld	(SegRender + 1),hl
		ret

SegEvnDraw3	ld	hl,SegDraw3
		ld	(SegRender + 1),hl
		ret

SegEvnDrawS	ld	hl,SegDrawS
		ld	(SegRender + 1),hl
		ret

SegEvnDrawC	ld	hl,SegDrawC
		ld	(SegRender + 1),hl
		ret

SegEvnBlack	xor	a
		ld	(SegSetColor + 1),a
		ret

SegEvnWhite	ld	a,SegColorOff
		ld	(SegSetColor + 1),a
		ret

SegEvnExit	pop	hl
		pop	hl
		jp	BasicSP

SegEvents	db	80
		dw	SegEvnDrawOff
		db	5
		dw	SegEvnDrawOn
		db	5
		dw	SegEvnDrawOff
		db	70
		dw	SegEvnDrawB
		db	20
		dw	SegEvnDrawA
		db	20
		dw	SegEvnDrawZ
		db	20
		dw	SegEvnDrawE
		db	20
		dw	SegEvnDraw3
		db	20
		dw	SegEvnDrawS
		db	20
		dw	SegEvnDrawC
		db	20
		dw	SegEvnDrawOff
		db	5
		dw	SegEvnBlack
		db	5
		dw	SegEvnWhite
		db	5
		dw	SegEvnBlack
		db	5 + 5			; Allow a couple of ticks for the music instruments to fade out.
		dw	SegEvnExit

		; Music player.

		INCLUDE "page2/hray.asm"

		; Loading screen clear transition effect.

ClrEffect	ld	hl,ClrVramAddrs
		ld	a,#34
		ld	(ClrOpcode),a
		call	ClrSubCall
		ld	a,#35
		ld	(ClrOpcode),a
ClrSubCall	ld	a,%01000010
		ld	b,8
ClrLoop		ld	e,(hl)
ClrOpcode	nop
		inc	hl
		ld	d,(hl)
		inc	hl
		ld	(de),a
		ld	d,(hl)
		inc	hl
		push	hl
		ex	de,hl
		ld	de,255
		ld	(hl),d
		inc	h
		ld	(hl),e
		inc	h
		ld	(hl),d
		inc	h
		ld	(hl),e
		inc	h
		ld	(hl),d
		inc	h
		ld	(hl),e
		inc	h
		ld	(hl),d
		inc	h
		ld	(hl),e
		pop	hl
		djnz	ClrLoop
		ret

ClrVramAddrs	db	#80, #58, #40
		db	#C0, #58, #40
		db	#00, #59, #48
		db	#40, #59, #48
		db	#80, #59, #48
		db	#C0, #59, #48
		db	#00, #5A, #50
		db	#40, #5A, #50

		db	#BF, #58, #40
		db	#FF, #58, #40
		db	#3F, #59, #48
		db	#7F, #59, #48
		db	#BF, #59, #48
		db	#FF, #59, #48
		db	#3F, #5A, #50
		db	#7F, #5A, #50
