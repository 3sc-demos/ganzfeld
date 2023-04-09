		org	#C000

		INCLUDE "page6/flyover.inc"

MACRO		FlyCopySprite, Depth

		org	#E000 + #100 * Depth

		ld	(_FlySetVram1 + 1),sp	
		ld	sp,#C010 + #100 * Depth

		pop	af			
		pop	bc			
		pop	de			
		pop	hl			
		exx				
		ex	af,af'			
		pop	af			
		pop	bc			
		pop	de			
		pop	hl			

_FlySetVram1	ld	sp,0			

		push	hl			
		push	de			
		push	bc			
		push	af			
		exx				
		ex	af,af'			
		push	hl			
		push	de			
		push	bc			
		push	af			

		ld	(_FlySetVram0 + 1),sp	
		ld	sp,#C000 + #100 * Depth

		pop	af			
		pop	bc			
		pop	de			
		pop	hl			
		exx				
		ex	af,af'			
		pop	af			
		pop	bc			
		pop	de			
		pop	hl			

_FlySetVram0	ld	sp,0			

		push	hl			
		push	de			
		push	bc			
		push	af			
		exx				
		ex	af,af'			
		push	hl			
		push	de			
		push	bc			
		push	af			

		ld	h,(ix + 0)		
		ld	l,0
		inc	ixl
		jp	(hl)
ENDM
		FlyCopySprite 0
		FlyCopySprite 1
		FlyCopySprite 2
		FlyCopySprite 3
		FlyCopySprite 4
		FlyCopySprite 5
		FlyCopySprite 6
		FlyCopySprite 7
		FlyCopySprite 8
		FlyCopySprite 9
		FlyCopySprite 10
		FlyCopySprite 11
		FlyCopySprite 12
		FlyCopySprite 13
		FlyCopySprite 14
		FlyCopySprite 15
		FlyCopySprite 16
		FlyCopySprite 17
		FlyCopySprite 18
		FlyCopySprite 19
		FlyCopySprite 20
		FlyCopySprite 21
		FlyCopySprite 22
		FlyCopySprite 23
		FlyCopySprite 24
		FlyCopySprite 25
		FlyCopySprite 26
		FlyCopySprite 27
		FlyCopySprite 28
		FlyCopySprite 29
		FlyCopySprite 30
		FlyCopySprite 31
