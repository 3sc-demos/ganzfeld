		PUBLIC	SongInstruments
		PUBLIC	SongChannelA
		PUBLIC	SongChannelB
		PUBLIC	SongChannelC

		PUBLIC	SysBrightRed
		PUBLIC	SysBrightCyan
		PUBLIC	SysCyan
		PUBLIC	SysBlack
		PUBLIC	SysStripes
		PUBLIC	SysNoStripes

		PUBLIC	CellLookupRot
		PUBLIC	CellLookupFade
		PUBLIC	CellLookupLeft
		PUBLIC	CellLookupRight
		PUBLIC	CellDispListA1
		PUBLIC	CellDispListA2
		PUBLIC	CellDispListB1
		PUBLIC	CellDispListB2

		PUBLIC	TelFadeInTab

		PUBLIC	RotEnvMap1
		PUBLIC	RotEnvMap2
		PUBLIC	RotDdaTabsBtm
		PUBLIC	RotDdaTabsTop
		PUBLIC	RotColorAddrTab
		PUBLIC	RotUnrollLast
		PUBLIC	RotFillEmpty
		PUBLIC	RotSwizzle1
		PUBLIC	RotSwizzle2
		PUBLIC	RotSwizzle3
		PUBLIC	RotFiller81

		; Some fillers actually never get called for that particular line type.

RotFiller40	equ	0
RotFiller7C	equ	0
RotFiller7D	equ	0
RotFiller7E	equ	0
RotFiller7F	equ	0

		org	#C000

		;--------------;
		; ALIGNED DATA ;
		;--------------;

SongInstruments	db	#01, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #01, #05, #09, #0D, #4F
		db	#11, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #10, #50
		db	#21, #00, #00, #00, #00, #00, #81, #82, #83, #84, #86, #88, #8A, #8C, #8E, #CF
		db	#31, #00, #00, #00, #00, #00, #00, #81, #82, #83, #84, #85, #87, #8A, #8D, #CF
		db	#41, #00, #81, #82, #83, #84, #86, #87, #88, #89, #8A, #8B, #8C, #8D, #8E, #CF
		db	#51, #00, #00, #00, #00, #00, #10, #10, #10, #10, #10, #10, #10, #10, #10, #50
		db	#61, #10, #10, #10, #10, #10, #10, #10, #10, #10, #10, #10, #10, #50, #50, #50
		db	#71, #00, #01, #02, #03, #04, #03, #02, #02, #03, #04, #06, #08, #0A, #0B, #4C
		db	#81, #00, #01, #02, #03, #04, #05, #06, #07, #08, #09, #07, #05, #08, #0B, #4E
		db	#91, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #01, #02, #05, #08, #CC
		db	#A1, #00, #00, #00, #00, #00, #00, #00, #01, #02, #03, #02, #01, #05, #0A, #50
		db	#B1, #00, #00, #00, #00, #00, #00, #00, #00, #01, #02, #04, #07, #0A, #09, #4B
		db	#C1, #00, #01, #02, #03, #04, #03, #02, #01, #02, #04, #08, #07, #0A, #09, #4C
		db	#D1, #00, #01, #02, #03, #04, #05, #06, #07, #08, #09, #08, #07, #0C, #0D, #4E
		db	#E1, #00, #00, #00, #00, #00, #00, #00, #00, #00, #01, #02, #03, #10, #10, #50
		db	#F1, #00, #00, #00, #00, #00, #89, #0A, #89, #0A, #89, #0B, #8A, #0B, #8A, #4B

		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #0C, #0C, #0C, #0C, #0C, #0C, #0C, #0C, #0C, #0C, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #01, #02, #03, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #0C, #00, #0C, #00, #0C, #00, #0C, #00, #0C, #00, #00

		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #48, #30, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00

		dw	#0FB8	; 00 = C1
		dw	#0EE7	; 01 = C#1
		dw	#0DF9	; 02 = D1
		dw	#0D19	; 03 = D#1
		dw	#0C6C	; 04 = E1
		dw	#0BA5	; 05 = F1
		dw	#0B2E	; 06 = F#1
		dw	#0A7B	; 07 = G1
		dw	#09F0	; 08 = G#1
		dw	#0951	; 09 = A1
		dw	#08BC	; 10 = A#1
		dw	#0862	; 11 = B1
		dw	#07DC	; 12 = C2
		dw	#0774	; 13 = C#2
		dw	#06FD	; 14 = D2
		dw	#068D	; 15 = D#2
		dw	#0636	; 16 = E2
		dw	#05D2	; 17 = F2
		dw	#0597	; 18 = F#2
		dw	#053D	; 19 = G2
		dw	#04F8	; 20 = G#2
		dw	#04A8	; 21 = A2
		dw	#045E	; 22 = A#2
		dw	#0431	; 23 = B2
		dw	#03F0	; 24 = C3
		dw	#03BC	; 25 = C#3
		dw	#0380	; 26 = D3
		dw	#0348	; 27 = D#3
		dw	#031C	; 28 = E3
		dw	#02EB	; 29 = F3
		dw	#02CD	; 30 = F#3
		dw	#02A0	; 31 = G3
		dw	#027D	; 32 = G#3
		dw	#0255	; 33 = A3
		dw	#0230	; 34 = A#3
		dw	#021A	; 35 = B3
		dw	#01F8	; 36 = C4
		dw	#01DE	; 37 = C#4
		dw	#01C0	; 38 = D4
		dw	#01A4	; 39 = D#4
		dw	#018E	; 40 = E4
		dw	#0175	; 41 = F4
		dw	#0166	; 42 = F#4
		dw	#0150	; 43 = G4
		dw	#013F	; 44 = G#4
		dw	#012B	; 45 = A4
		dw	#0118	; 46 = A#4
		dw	#010D	; 47 = B4
		dw	#00FC	; 48 = C5
		dw	#00EF	; 49 = C#5
		dw	#00E0	; 50 = D5
		dw	#00D2	; 51 = D#5
		dw	#00C7	; 52 = E5
		dw	#00BB	; 53 = F5
		dw	#00B3	; 54 = F#5
		dw	#00A8	; 55 = G5
		dw	#009F	; 56 = G#5
		dw	#0095	; 57 = A5
		dw	#008C	; 58 = A#5
		dw	#0086	; 59 = B5
		dw	#007E	; 60 = C6
		dw	#0077	; 61 = C#6
		dw	#0070	; 62 = D6
		dw	#0069	; 63 = D#6
		dw	#0064	; 64 = E6
		dw	#005D	; 65 = F6
		dw	#005A	; 66 = F#6
		dw	#0054	; 67 = G6
		dw	#0050	; 68 = G#6
		dw	#004B	; 69 = A6
		dw	#0046	; 70 = A#6
		dw	#0043	; 71 = B6
		dw	#003F	; 72 = C7
		dw	#003C	; 73 = C#7
		dw	#0038	; 74 = D7
		dw	#0035	; 75 = D#7
		dw	#0032	; 76 = E7
		dw	#002F	; 77 = F7
		dw	#002D	; 78 = F#7
		dw	#002A	; 79 = G7
		dw	#0028	; 80 = G#7
		dw	#0025	; 81 = A7
		dw	#0023	; 82 = A#7
		dw	#0022	; 83 = B7
		dw	#0020	; 84 = C8
		dw	#001E	; 85 = C#8
		dw	#001C	; 86 = D8
		dw	#001A	; 87 = D#8
		dw	#0019	; 88 = E8
		dw	#0017	; 89 = F8
		dw	#0016	; 90 = F#8
		dw	#0015	; 91 = G8
		dw	#0014	; 92 = G#8
		dw	#0013	; 93 = A8
		dw	#0012	; 94 = A#8
		dw	#0011	; 95 = B8

		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

CellLookupRot	db	#80, #C0, #C0, #C0, #C0, #E0, #C1, #E0, #C0, #E0, #E0, #E0, #C2, #E1, #E1, #E1
		db	#C0, #E0, #E0, #E0, #E0, #F0, #E1, #F0, #C4, #E2, #E2, #E2, #E2, #F1, #E3, #F1
		db	#C0, #E0, #E0, #E0, #E0, #F0, #E1, #F0, #E0, #F0, #F0, #F0, #E2, #F1, #F1, #F1
		db	#C8, #E4, #E4, #E4, #E4, #F2, #E5, #F2, #E4, #F2, #F2, #F2, #E6, #F3, #F3, #9F
		db	#C0, #E0, #E0, #E0, #E0, #F0, #E1, #F0, #E0, #F0, #F0, #F0, #E2, #F1, #F1, #F1
		db	#E0, #F0, #F0, #F0, #F0, #F8, #F1, #F8, #E4, #F2, #F2, #F2, #F2, #F9, #F3, #F9
		db	#D0, #E8, #E8, #E8, #E8, #F4, #E9, #F4, #E8, #F4, #F4, #F4, #EA, #F5, #F5, #F5
		db	#E8, #F4, #F4, #F4, #F4, #FA, #F5, #FA, #EC, #F6, #F6, #F6, #F6, #FB, #F7, #3F
		db	#C0, #E0, #E0, #E0, #E0, #F0, #E1, #F0, #E0, #F0, #F0, #F0, #E2, #F1, #F1, #F1
		db	#E0, #F0, #F0, #F0, #F0, #F8, #F1, #F8, #E4, #F2, #F2, #F2, #F2, #F9, #F3, #CF
		db	#E0, #F0, #F0, #F0, #F0, #F8, #F1, #F8, #F0, #F8, #F8, #F8, #F2, #F9, #F9, #F9
		db	#E8, #F4, #F4, #F4, #F4, #FA, #F5, #FA, #F4, #FA, #FA, #FA, #F6, #FB, #FB, #7F
		db	#E0, #F0, #F0, #F0, #F0, #F8, #F1, #F8, #F0, #F8, #F8, #F8, #F2, #F9, #F9, #E7
		db	#F0, #F8, #F8, #F8, #F8, #FC, #F9, #FC, #F4, #FA, #FA, #FA, #FA, #FD, #FB, #BF
		db	#F0, #F8, #F8, #F8, #F8, #FC, #F9, #F3, #F8, #FC, #FC, #FC, #FA, #FD, #FD, #DF
		db	#F8, #FC, #FC, #F9, #FC, #FC, #FD, #EF, #FC, #FC, #FC, #F7, #FE, #FB, #FD, #FF

CellLookupFade	db	#55, #56, #57, #57, #59, #5A, #5B, #5B, #5D, #5E, #5F, #5F, #5D, #5E, #5F, #5F
		db	#65, #66, #67, #67, #69, #6A, #6B, #6B, #6D, #6E, #6F, #6F, #6D, #6E, #6F, #6F
		db	#75, #76, #77, #77, #79, #7A, #7B, #7B, #7D, #7E, #7F, #7F, #7D, #7E, #7F, #7F
		db	#75, #76, #77, #77, #79, #7A, #7B, #7B, #7D, #7E, #7F, #7F, #7D, #7E, #7F, #7F
		db	#95, #96, #97, #97, #99, #9A, #9B, #9B, #9D, #9E, #9F, #9F, #9D, #9E, #9F, #9F
		db	#A5, #A6, #A7, #A7, #A9, #AA, #AB, #AB, #AD, #AE, #AF, #AF, #AD, #AE, #AF, #AF
		db	#B5, #B6, #B7, #B7, #B9, #BA, #BB, #BB, #BD, #BE, #BF, #BF, #BD, #BE, #BF, #BF
		db	#B5, #B6, #B7, #B7, #B9, #BA, #BB, #BB, #BD, #BE, #BF, #BF, #BD, #BE, #BF, #BF
		db	#D5, #D6, #D7, #D7, #D9, #DA, #DB, #DB, #DD, #DE, #DF, #DF, #DD, #DE, #DF, #DF
		db	#E5, #E6, #E7, #E7, #E9, #EA, #EB, #EB, #ED, #EE, #EF, #EF, #ED, #EE, #EF, #EF
		db	#F5, #F6, #F7, #F7, #F9, #FA, #FB, #FB, #FD, #FE, #FF, #FF, #FD, #FE, #FF, #FF
		db	#F5, #F6, #F7, #F7, #F9, #FA, #FB, #FB, #FD, #FE, #FF, #FF, #FD, #FE, #FF, #FF
		db	#D5, #D6, #D7, #D7, #D9, #DA, #DB, #DB, #DD, #DE, #DF, #DF, #DD, #DE, #DF, #DF
		db	#E5, #E6, #E7, #E7, #E9, #EA, #EB, #EB, #ED, #EE, #EF, #EF, #ED, #EE, #EF, #EF
		db	#F5, #F6, #F7, #F7, #F9, #FA, #FB, #FB, #FD, #FE, #FF, #FF, #FD, #FE, #FF, #FF
		db	#F5, #F6, #F7, #F7, #F9, #FA, #FB, #FB, #FD, #FE, #FF, #FF, #FD, #FE, #FF, #FF

CellLookupLeft	db	#00, #01, #01, #03, #01, #03, #05, #07, #01, #03, #03, #07, #09, #0B, #0B, #0F
		db	#01, #03, #03, #07, #03, #07, #0B, #0F, #11, #13, #13, #17, #13, #17, #1B, #1F
		db	#01, #03, #03, #07, #03, #07, #0B, #0F, #03, #07, #07, #0F, #13, #17, #17, #1F
		db	#21, #23, #23, #27, #23, #27, #2B, #2F, #23, #27, #27, #2F, #33, #37, #37, #3F
		db	#01, #03, #03, #07, #03, #07, #0B, #0F, #03, #07, #07, #0F, #13, #17, #17, #1F
		db	#03, #07, #07, #0F, #07, #0F, #17, #1F, #23, #27, #27, #2F, #27, #2F, #37, #3F
		db	#41, #43, #43, #47, #43, #47, #4B, #4F, #43, #47, #47, #4F, #53, #57, #57, #5F
		db	#43, #47, #47, #4F, #47, #4F, #57, #5F, #63, #67, #67, #6F, #67, #6F, #77, #7F
		db	#01, #03, #03, #07, #03, #07, #0B, #0F, #03, #07, #07, #0F, #13, #17, #17, #1F
		db	#03, #07, #07, #0F, #07, #0F, #17, #1F, #23, #27, #27, #2F, #27, #2F, #37, #3F
		db	#03, #07, #07, #0F, #07, #0F, #17, #1F, #07, #0F, #0F, #1F, #27, #2F, #2F, #3F
		db	#43, #47, #47, #4F, #47, #4F, #57, #5F, #47, #4F, #4F, #5F, #67, #6F, #6F, #7F
		db	#81, #83, #83, #87, #83, #87, #8B, #8F, #83, #87, #87, #8F, #93, #97, #97, #9F
		db	#83, #87, #87, #8F, #87, #8F, #97, #9F, #A3, #A7, #A7, #AF, #A7, #AF, #B7, #BF
		db	#83, #87, #87, #8F, #87, #8F, #97, #9F, #87, #8F, #8F, #9F, #A7, #AF, #AF, #BF
		db	#C3, #C7, #C7, #CF, #C7, #CF, #D7, #DF, #C7, #CF, #CF, #DF, #E7, #EF, #EF, #FF

CellLookupRight	db	#00, #80, #80, #81, #80, #C0, #82, #C1, #80, #C0, #C0, #C1, #84, #C2, #C2, #C3
		db	#80, #C0, #C0, #C1, #C0, #E0, #C2, #E1, #88, #C4, #C4, #C5, #C4, #E2, #C6, #E3
		db	#80, #C0, #C0, #C1, #C0, #E0, #C2, #E1, #C0, #E0, #E0, #E1, #C4, #E2, #E2, #E3
		db	#90, #C8, #C8, #C9, #C8, #E4, #CA, #E5, #C8, #E4, #E4, #E5, #CC, #E6, #E6, #E7
		db	#80, #C0, #C0, #C1, #C0, #E0, #C2, #E1, #C0, #E0, #E0, #E1, #C4, #E2, #E2, #E3
		db	#C0, #E0, #E0, #E1, #E0, #F0, #E2, #F1, #C8, #E4, #E4, #E5, #E4, #F2, #E6, #F3
		db	#A0, #D0, #D0, #D1, #D0, #E8, #D2, #E9, #D0, #E8, #E8, #E9, #D4, #EA, #EA, #EB
		db	#D0, #E8, #E8, #E9, #E8, #F4, #EA, #F5, #D8, #EC, #EC, #ED, #EC, #F6, #EE, #F7
		db	#80, #C0, #C0, #C1, #C0, #E0, #C2, #E1, #C0, #E0, #E0, #E1, #C4, #E2, #E2, #E3
		db	#C0, #E0, #E0, #E1, #E0, #F0, #E2, #F1, #C8, #E4, #E4, #E5, #E4, #F2, #E6, #F3
		db	#C0, #E0, #E0, #E1, #E0, #F0, #E2, #F1, #E0, #F0, #F0, #F1, #E4, #F2, #F2, #F3
		db	#D0, #E8, #E8, #E9, #E8, #F4, #EA, #F5, #E8, #F4, #F4, #F5, #EC, #F6, #F6, #F7
		db	#C0, #E0, #E0, #E1, #E0, #F0, #E2, #F1, #E0, #F0, #F0, #F1, #E4, #F2, #F2, #F3
		db	#E0, #F0, #F0, #F1, #F0, #F8, #F2, #F9, #E8, #F4, #F4, #F5, #F4, #FA, #F6, #FB
		db	#E0, #F0, #F0, #F1, #F0, #F8, #F2, #F9, #F0, #F8, #F8, #F9, #F4, #FA, #FA, #FB
		db	#F0, #F8, #F8, #F9, #F8, #FC, #FA, #FD, #F8, #FC, #FC, #FD, #FC, #FE, #FE, #FF

		; 1D cylindrical environment map (90 degrees of three possible line types).

RotEnvMap1	db	#3F, #3F, #3F, #3F, #3F, #80, #80, #80, #80, #80, #80, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #80, #80, #80, #80, #80, #80, #80, #3F, #3F, #3F, #3F
		db	#3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F
		db	#3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F
		db	#3F, #3F, #3F, #3F, #80, #80, #80, #80, #80, #80, #80, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F
		db	#7F, #7F, #7F, #7F, #7F, #80, #80, #80, #80, #80, #80, #3F, #3F, #3F, #3F, #3F

RotEnvMap2	db	#3F, #3F, #3F, #3F, #3F, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #3F, #3F, #3F, #3F
		db	#3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F
		db	#3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F, #3F
		db	#3F, #3F, #3F, #3F, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #3F, #3F, #3F, #3F, #3F

		; Bottom segment's unrolled DDA loop address (lower byte).

RotDdaTabsBtm	db	(RotUnrollLast - 000) % 256, (RotUnrollLast - 000) % 256, (RotUnrollLast - 005) % 256, (RotUnrollLast - 010) % 256
		db	(RotUnrollLast - 010) % 256, (RotUnrollLast - 015) % 256, (RotUnrollLast - 015) % 256, (RotUnrollLast - 020) % 256
		db	(RotUnrollLast - 020) % 256, (RotUnrollLast - 025) % 256, (RotUnrollLast - 025) % 256, (RotUnrollLast - 030) % 256
		db	(RotUnrollLast - 030) % 256, (RotUnrollLast - 035) % 256, (RotUnrollLast - 035) % 256, (RotUnrollLast - 040) % 256
		db	(RotUnrollLast - 040) % 256, (RotUnrollLast - 045) % 256, (RotUnrollLast - 045) % 256, (RotUnrollLast - 050) % 256
		db	(RotUnrollLast - 050) % 256, (RotUnrollLast - 055) % 256, (RotUnrollLast - 055) % 256, (RotUnrollLast - 060) % 256
		db	(RotUnrollLast - 060) % 256, (RotUnrollLast - 065) % 256, (RotUnrollLast - 065) % 256, (RotUnrollLast - 065) % 256
		db	(RotUnrollLast - 070) % 256, (RotUnrollLast - 070) % 256, (RotUnrollLast - 075) % 256, (RotUnrollLast - 075) % 256
		db	(RotUnrollLast - 080) % 256, (RotUnrollLast - 080) % 256, (RotUnrollLast - 080) % 256, (RotUnrollLast - 085) % 256
		db	(RotUnrollLast - 085) % 256, (RotUnrollLast - 090) % 256, (RotUnrollLast - 090) % 256, (RotUnrollLast - 090) % 256
		db	(RotUnrollLast - 095) % 256, (RotUnrollLast - 095) % 256, (RotUnrollLast - 100) % 256, (RotUnrollLast - 100) % 256
		db	(RotUnrollLast - 100) % 256, (RotUnrollLast - 105) % 256, (RotUnrollLast - 105) % 256, (RotUnrollLast - 110) % 256
		db	(RotUnrollLast - 110) % 256, (RotUnrollLast - 110) % 256, (RotUnrollLast - 115) % 256, (RotUnrollLast - 115) % 256
		db	(RotUnrollLast - 115) % 256, (RotUnrollLast - 120) % 256, (RotUnrollLast - 120) % 256, (RotUnrollLast - 125) % 256
		db	(RotUnrollLast - 125) % 256, (RotUnrollLast - 125) % 256, (RotUnrollLast - 130) % 256, (RotUnrollLast - 130) % 256
		db	(RotUnrollLast - 130) % 256, (RotUnrollLast - 135) % 256, (RotUnrollLast - 135) % 256, (RotUnrollLast - 135) % 256
		db	(RotUnrollLast - 140) % 256, (RotUnrollLast - 140) % 256, (RotUnrollLast - 140) % 256, (RotUnrollLast - 145) % 256
		db	(RotUnrollLast - 145) % 256, (RotUnrollLast - 145) % 256, (RotUnrollLast - 150) % 256, (RotUnrollLast - 150) % 256
		db	(RotUnrollLast - 150) % 256, (RotUnrollLast - 155) % 256, (RotUnrollLast - 155) % 256, (RotUnrollLast - 155) % 256
		db	(RotUnrollLast - 160) % 256, (RotUnrollLast - 160) % 256, (RotUnrollLast - 160) % 256, (RotUnrollLast - 165) % 256
		db	(RotUnrollLast - 165) % 256, (RotUnrollLast - 165) % 256, (RotUnrollLast - 170) % 256, (RotUnrollLast - 170) % 256
		db	(RotUnrollLast - 170) % 256, (RotUnrollLast - 175) % 256, (RotUnrollLast - 175) % 256, (RotUnrollLast - 175) % 256
		db	(RotUnrollLast - 180) % 256, (RotUnrollLast - 180) % 256, (RotUnrollLast - 180) % 256, (RotUnrollLast - 180) % 256
		db	(RotUnrollLast - 185) % 256, (RotUnrollLast - 185) % 256, (RotUnrollLast - 185) % 256, (RotUnrollLast - 190) % 256
		db	(RotUnrollLast - 190) % 256, (RotUnrollLast - 190) % 256, (RotUnrollLast - 195) % 256, (RotUnrollLast - 195) % 256
		db	(RotUnrollLast - 195) % 256, (RotUnrollLast - 200) % 256, (RotUnrollLast - 200) % 256, (RotUnrollLast - 200) % 256
		db	(RotUnrollLast - 200) % 256, (RotUnrollLast - 205) % 256, (RotUnrollLast - 205) % 256, (RotUnrollLast - 205) % 256
		db	(RotUnrollLast - 210) % 256, (RotUnrollLast - 210) % 256, (RotUnrollLast - 210) % 256, (RotUnrollLast - 215) % 256
		db	(RotUnrollLast - 215) % 256, (RotUnrollLast - 215) % 256, (RotUnrollLast - 215) % 256, (RotUnrollLast - 220) % 256
		db	(RotUnrollLast - 220) % 256, (RotUnrollLast - 220) % 256, (RotUnrollLast - 225) % 256, (RotUnrollLast - 225) % 256
		db	(RotUnrollLast - 225) % 256, (RotUnrollLast - 225) % 256, (RotUnrollLast - 230) % 256, (RotUnrollLast - 230) % 256
		db	(RotUnrollLast - 230) % 256, (RotUnrollLast - 235) % 256, (RotUnrollLast - 235) % 256, (RotUnrollLast - 235) % 256
		db	(RotUnrollLast - 240) % 256, (RotUnrollLast - 240) % 256, (RotUnrollLast - 240) % 256, (RotUnrollLast - 240) % 256
		db	(RotUnrollLast - 245) % 256, (RotUnrollLast - 245) % 256, (RotUnrollLast - 245) % 256, (RotUnrollLast - 250) % 256
		db	(RotUnrollLast - 250) % 256, (RotUnrollLast - 250) % 256, (RotUnrollLast - 250) % 256, (RotUnrollLast - 255) % 256
		db	(RotUnrollLast - 255) % 256, (RotUnrollLast - 255) % 256, (RotUnrollLast - 260) % 256, (RotUnrollLast - 260) % 256
		db	(RotUnrollLast - 260) % 256, (RotUnrollLast - 265) % 256, (RotUnrollLast - 265) % 256, (RotUnrollLast - 265) % 256
		db	(RotUnrollLast - 265) % 256, (RotUnrollLast - 270) % 256, (RotUnrollLast - 270) % 256, (RotUnrollLast - 270) % 256
		db	(RotUnrollLast - 275) % 256, (RotUnrollLast - 275) % 256, (RotUnrollLast - 275) % 256, (RotUnrollLast - 280) % 256
		db	(RotUnrollLast - 280) % 256, (RotUnrollLast - 280) % 256, (RotUnrollLast - 280) % 256, (RotUnrollLast - 285) % 256
		db	(RotUnrollLast - 285) % 256, (RotUnrollLast - 285) % 256, (RotUnrollLast - 290) % 256, (RotUnrollLast - 290) % 256
		db	(RotUnrollLast - 290) % 256, (RotUnrollLast - 295) % 256, (RotUnrollLast - 295) % 256, (RotUnrollLast - 295) % 256
		db	(RotUnrollLast - 300) % 256, (RotUnrollLast - 300) % 256, (RotUnrollLast - 300) % 256, (RotUnrollLast - 305) % 256
		db	(RotUnrollLast - 305) % 256, (RotUnrollLast - 305) % 256, (RotUnrollLast - 305) % 256, (RotUnrollLast - 310) % 256
		db	(RotUnrollLast - 310) % 256, (RotUnrollLast - 310) % 256, (RotUnrollLast - 315) % 256, (RotUnrollLast - 315) % 256
		db	(RotUnrollLast - 315) % 256, (RotUnrollLast - 320) % 256, (RotUnrollLast - 320) % 256, (RotUnrollLast - 320) % 256
		db	(RotUnrollLast - 325) % 256, (RotUnrollLast - 325) % 256, (RotUnrollLast - 325) % 256, (RotUnrollLast - 330) % 256
		db	(RotUnrollLast - 330) % 256, (RotUnrollLast - 330) % 256, (RotUnrollLast - 335) % 256, (RotUnrollLast - 335) % 256
		db	(RotUnrollLast - 335) % 256, (RotUnrollLast - 340) % 256, (RotUnrollLast - 340) % 256, (RotUnrollLast - 345) % 256
		db	(RotUnrollLast - 345) % 256, (RotUnrollLast - 345) % 256, (RotUnrollLast - 350) % 256, (RotUnrollLast - 350) % 256
		db	(RotUnrollLast - 350) % 256, (RotUnrollLast - 355) % 256, (RotUnrollLast - 355) % 256, (RotUnrollLast - 355) % 256
		db	(RotUnrollLast - 360) % 256, (RotUnrollLast - 360) % 256, (RotUnrollLast - 365) % 256, (RotUnrollLast - 365) % 256
		db	(RotUnrollLast - 365) % 256, (RotUnrollLast - 370) % 256, (RotUnrollLast - 370) % 256, (RotUnrollLast - 370) % 256
		db	(RotUnrollLast - 375) % 256, (RotUnrollLast - 375) % 256, (RotUnrollLast - 380) % 256, (RotUnrollLast - 380) % 256
		db	(RotUnrollLast - 380) % 256, (RotUnrollLast - 385) % 256, (RotUnrollLast - 385) % 256, (RotUnrollLast - 390) % 256
		db	(RotUnrollLast - 390) % 256, (RotUnrollLast - 390) % 256, (RotUnrollLast - 395) % 256, (RotUnrollLast - 395) % 256
		db	(RotUnrollLast - 400) % 256, (RotUnrollLast - 400) % 256, (RotUnrollLast - 405) % 256, (RotUnrollLast - 405) % 256
		db	(RotUnrollLast - 405) % 256, (RotUnrollLast - 410) % 256, (RotUnrollLast - 410) % 256, (RotUnrollLast - 415) % 256
		db	(RotUnrollLast - 415) % 256, (RotUnrollLast - 420) % 256, (RotUnrollLast - 420) % 256, (RotUnrollLast - 425) % 256
		db	(RotUnrollLast - 425) % 256, (RotUnrollLast - 430) % 256, (RotUnrollLast - 430) % 256, (RotUnrollLast - 435) % 256
		db	(RotUnrollLast - 435) % 256, (RotUnrollLast - 440) % 256, (RotUnrollLast - 440) % 256, (RotUnrollLast - 445) % 256
		db	(RotUnrollLast - 445) % 256, (RotUnrollLast - 450) % 256, (RotUnrollLast - 450) % 256, (RotUnrollLast - 455) % 256
		db	(RotUnrollLast - 455) % 256, (RotUnrollLast - 460) % 256, (RotUnrollLast - 460) % 256, (RotUnrollLast - 465) % 256
		db	(RotUnrollLast - 470) % 256, (RotUnrollLast - 470) % 256, (RotUnrollLast - 475) % 256, (RotUnrollLast - 470) % 256

		; Bottom segment's unrolled DDA loop address (higher byte).

		db	(RotUnrollLast - 000) / 256, (RotUnrollLast - 000) / 256, (RotUnrollLast - 005) / 256, (RotUnrollLast - 010) / 256
		db	(RotUnrollLast - 010) / 256, (RotUnrollLast - 015) / 256, (RotUnrollLast - 015) / 256, (RotUnrollLast - 020) / 256
		db	(RotUnrollLast - 020) / 256, (RotUnrollLast - 025) / 256, (RotUnrollLast - 025) / 256, (RotUnrollLast - 030) / 256
		db	(RotUnrollLast - 030) / 256, (RotUnrollLast - 035) / 256, (RotUnrollLast - 035) / 256, (RotUnrollLast - 040) / 256
		db	(RotUnrollLast - 040) / 256, (RotUnrollLast - 045) / 256, (RotUnrollLast - 045) / 256, (RotUnrollLast - 050) / 256
		db	(RotUnrollLast - 050) / 256, (RotUnrollLast - 055) / 256, (RotUnrollLast - 055) / 256, (RotUnrollLast - 060) / 256
		db	(RotUnrollLast - 060) / 256, (RotUnrollLast - 065) / 256, (RotUnrollLast - 065) / 256, (RotUnrollLast - 065) / 256
		db	(RotUnrollLast - 070) / 256, (RotUnrollLast - 070) / 256, (RotUnrollLast - 075) / 256, (RotUnrollLast - 075) / 256
		db	(RotUnrollLast - 080) / 256, (RotUnrollLast - 080) / 256, (RotUnrollLast - 080) / 256, (RotUnrollLast - 085) / 256
		db	(RotUnrollLast - 085) / 256, (RotUnrollLast - 090) / 256, (RotUnrollLast - 090) / 256, (RotUnrollLast - 090) / 256
		db	(RotUnrollLast - 095) / 256, (RotUnrollLast - 095) / 256, (RotUnrollLast - 100) / 256, (RotUnrollLast - 100) / 256
		db	(RotUnrollLast - 100) / 256, (RotUnrollLast - 105) / 256, (RotUnrollLast - 105) / 256, (RotUnrollLast - 110) / 256
		db	(RotUnrollLast - 110) / 256, (RotUnrollLast - 110) / 256, (RotUnrollLast - 115) / 256, (RotUnrollLast - 115) / 256
		db	(RotUnrollLast - 115) / 256, (RotUnrollLast - 120) / 256, (RotUnrollLast - 120) / 256, (RotUnrollLast - 125) / 256
		db	(RotUnrollLast - 125) / 256, (RotUnrollLast - 125) / 256, (RotUnrollLast - 130) / 256, (RotUnrollLast - 130) / 256
		db	(RotUnrollLast - 130) / 256, (RotUnrollLast - 135) / 256, (RotUnrollLast - 135) / 256, (RotUnrollLast - 135) / 256
		db	(RotUnrollLast - 140) / 256, (RotUnrollLast - 140) / 256, (RotUnrollLast - 140) / 256, (RotUnrollLast - 145) / 256
		db	(RotUnrollLast - 145) / 256, (RotUnrollLast - 145) / 256, (RotUnrollLast - 150) / 256, (RotUnrollLast - 150) / 256
		db	(RotUnrollLast - 150) / 256, (RotUnrollLast - 155) / 256, (RotUnrollLast - 155) / 256, (RotUnrollLast - 155) / 256
		db	(RotUnrollLast - 160) / 256, (RotUnrollLast - 160) / 256, (RotUnrollLast - 160) / 256, (RotUnrollLast - 165) / 256
		db	(RotUnrollLast - 165) / 256, (RotUnrollLast - 165) / 256, (RotUnrollLast - 170) / 256, (RotUnrollLast - 170) / 256
		db	(RotUnrollLast - 170) / 256, (RotUnrollLast - 175) / 256, (RotUnrollLast - 175) / 256, (RotUnrollLast - 175) / 256
		db	(RotUnrollLast - 180) / 256, (RotUnrollLast - 180) / 256, (RotUnrollLast - 180) / 256, (RotUnrollLast - 180) / 256
		db	(RotUnrollLast - 185) / 256, (RotUnrollLast - 185) / 256, (RotUnrollLast - 185) / 256, (RotUnrollLast - 190) / 256
		db	(RotUnrollLast - 190) / 256, (RotUnrollLast - 190) / 256, (RotUnrollLast - 195) / 256, (RotUnrollLast - 195) / 256
		db	(RotUnrollLast - 195) / 256, (RotUnrollLast - 200) / 256, (RotUnrollLast - 200) / 256, (RotUnrollLast - 200) / 256
		db	(RotUnrollLast - 200) / 256, (RotUnrollLast - 205) / 256, (RotUnrollLast - 205) / 256, (RotUnrollLast - 205) / 256
		db	(RotUnrollLast - 210) / 256, (RotUnrollLast - 210) / 256, (RotUnrollLast - 210) / 256, (RotUnrollLast - 215) / 256
		db	(RotUnrollLast - 215) / 256, (RotUnrollLast - 215) / 256, (RotUnrollLast - 215) / 256, (RotUnrollLast - 220) / 256
		db	(RotUnrollLast - 220) / 256, (RotUnrollLast - 220) / 256, (RotUnrollLast - 225) / 256, (RotUnrollLast - 225) / 256
		db	(RotUnrollLast - 225) / 256, (RotUnrollLast - 225) / 256, (RotUnrollLast - 230) / 256, (RotUnrollLast - 230) / 256
		db	(RotUnrollLast - 230) / 256, (RotUnrollLast - 235) / 256, (RotUnrollLast - 235) / 256, (RotUnrollLast - 235) / 256
		db	(RotUnrollLast - 240) / 256, (RotUnrollLast - 240) / 256, (RotUnrollLast - 240) / 256, (RotUnrollLast - 240) / 256
		db	(RotUnrollLast - 245) / 256, (RotUnrollLast - 245) / 256, (RotUnrollLast - 245) / 256, (RotUnrollLast - 250) / 256
		db	(RotUnrollLast - 250) / 256, (RotUnrollLast - 250) / 256, (RotUnrollLast - 250) / 256, (RotUnrollLast - 255) / 256
		db	(RotUnrollLast - 255) / 256, (RotUnrollLast - 255) / 256, (RotUnrollLast - 260) / 256, (RotUnrollLast - 260) / 256
		db	(RotUnrollLast - 260) / 256, (RotUnrollLast - 265) / 256, (RotUnrollLast - 265) / 256, (RotUnrollLast - 265) / 256
		db	(RotUnrollLast - 265) / 256, (RotUnrollLast - 270) / 256, (RotUnrollLast - 270) / 256, (RotUnrollLast - 270) / 256
		db	(RotUnrollLast - 275) / 256, (RotUnrollLast - 275) / 256, (RotUnrollLast - 275) / 256, (RotUnrollLast - 280) / 256
		db	(RotUnrollLast - 280) / 256, (RotUnrollLast - 280) / 256, (RotUnrollLast - 280) / 256, (RotUnrollLast - 285) / 256
		db	(RotUnrollLast - 285) / 256, (RotUnrollLast - 285) / 256, (RotUnrollLast - 290) / 256, (RotUnrollLast - 290) / 256
		db	(RotUnrollLast - 290) / 256, (RotUnrollLast - 295) / 256, (RotUnrollLast - 295) / 256, (RotUnrollLast - 295) / 256
		db	(RotUnrollLast - 300) / 256, (RotUnrollLast - 300) / 256, (RotUnrollLast - 300) / 256, (RotUnrollLast - 305) / 256
		db	(RotUnrollLast - 305) / 256, (RotUnrollLast - 305) / 256, (RotUnrollLast - 305) / 256, (RotUnrollLast - 310) / 256
		db	(RotUnrollLast - 310) / 256, (RotUnrollLast - 310) / 256, (RotUnrollLast - 315) / 256, (RotUnrollLast - 315) / 256
		db	(RotUnrollLast - 315) / 256, (RotUnrollLast - 320) / 256, (RotUnrollLast - 320) / 256, (RotUnrollLast - 320) / 256
		db	(RotUnrollLast - 325) / 256, (RotUnrollLast - 325) / 256, (RotUnrollLast - 325) / 256, (RotUnrollLast - 330) / 256
		db	(RotUnrollLast - 330) / 256, (RotUnrollLast - 330) / 256, (RotUnrollLast - 335) / 256, (RotUnrollLast - 335) / 256
		db	(RotUnrollLast - 335) / 256, (RotUnrollLast - 340) / 256, (RotUnrollLast - 340) / 256, (RotUnrollLast - 345) / 256
		db	(RotUnrollLast - 345) / 256, (RotUnrollLast - 345) / 256, (RotUnrollLast - 350) / 256, (RotUnrollLast - 350) / 256
		db	(RotUnrollLast - 350) / 256, (RotUnrollLast - 355) / 256, (RotUnrollLast - 355) / 256, (RotUnrollLast - 355) / 256
		db	(RotUnrollLast - 360) / 256, (RotUnrollLast - 360) / 256, (RotUnrollLast - 365) / 256, (RotUnrollLast - 365) / 256
		db	(RotUnrollLast - 365) / 256, (RotUnrollLast - 370) / 256, (RotUnrollLast - 370) / 256, (RotUnrollLast - 370) / 256
		db	(RotUnrollLast - 375) / 256, (RotUnrollLast - 375) / 256, (RotUnrollLast - 380) / 256, (RotUnrollLast - 380) / 256
		db	(RotUnrollLast - 380) / 256, (RotUnrollLast - 385) / 256, (RotUnrollLast - 385) / 256, (RotUnrollLast - 390) / 256
		db	(RotUnrollLast - 390) / 256, (RotUnrollLast - 390) / 256, (RotUnrollLast - 395) / 256, (RotUnrollLast - 395) / 256
		db	(RotUnrollLast - 400) / 256, (RotUnrollLast - 400) / 256, (RotUnrollLast - 405) / 256, (RotUnrollLast - 405) / 256
		db	(RotUnrollLast - 405) / 256, (RotUnrollLast - 410) / 256, (RotUnrollLast - 410) / 256, (RotUnrollLast - 415) / 256
		db	(RotUnrollLast - 415) / 256, (RotUnrollLast - 420) / 256, (RotUnrollLast - 420) / 256, (RotUnrollLast - 425) / 256
		db	(RotUnrollLast - 425) / 256, (RotUnrollLast - 430) / 256, (RotUnrollLast - 430) / 256, (RotUnrollLast - 435) / 256
		db	(RotUnrollLast - 435) / 256, (RotUnrollLast - 440) / 256, (RotUnrollLast - 440) / 256, (RotUnrollLast - 445) / 256
		db	(RotUnrollLast - 445) / 256, (RotUnrollLast - 450) / 256, (RotUnrollLast - 450) / 256, (RotUnrollLast - 455) / 256
		db	(RotUnrollLast - 455) / 256, (RotUnrollLast - 460) / 256, (RotUnrollLast - 460) / 256, (RotUnrollLast - 465) / 256
		db	(RotUnrollLast - 470) / 256, (RotUnrollLast - 470) / 256, (RotUnrollLast - 475) / 256, (RotUnrollLast - 470) / 256

		; Bottom segment's DDA step (lower byte).

		db	#00, #EF, #EF, #EF, #EF, #EF, #EF, #EF, #EF, #EF, #EF, #EE, #EE, #EE, #EE, #EE
		db	#EE, #EE, #ED, #ED, #ED, #ED, #ED, #EC, #EC, #EC, #EC, #EC, #EB, #EB, #EB, #EA
		db	#EA, #EA, #EA, #E9, #E9, #E9, #E8, #E8, #E8, #E7, #E7, #E6, #E6, #E6, #E5, #E5
		db	#E4, #E4, #E3, #E3, #E3, #E2, #E2, #E1, #E1, #E0, #E0, #DF, #DF, #DE, #DD, #DD
		db	#DC, #DC, #DB, #DB, #DA, #D9, #D9, #D8, #D7, #D7, #D6, #D6, #D5, #D4, #D4, #D3
		db	#D2, #D1, #D1, #D0, #CF, #CF, #CE, #CD, #CC, #CC, #CB, #CA, #C9, #C8, #C8, #C7
		db	#C6, #C5, #C4, #C3, #C3, #C2, #C1, #C0, #BF, #BE, #BD, #BC, #BC, #BB, #BA, #B9
		db	#B8, #B7, #B6, #B5, #B4, #B3, #B2, #B1, #B0, #AF, #AE, #AD, #AC, #AB, #AA, #A9
		db	#A8, #A7, #A6, #A5, #A4, #A3, #A2, #A1, #9F, #9E, #9D, #9C, #9B, #9A, #99, #98
		db	#97, #95, #94, #93, #92, #91, #90, #8E, #8D, #8C, #8B, #8A, #88, #87, #86, #85
		db	#84, #82, #81, #80, #7F, #7D, #7C, #7B, #7A, #78, #77, #76, #75, #73, #72, #71
		db	#6F, #6E, #6D, #6B, #6A, #69, #68, #66, #65, #64, #62, #61, #60, #5E, #5D, #5B
		db	#5A, #59, #57, #56, #55, #53, #52, #51, #4F, #4E, #4C, #4B, #4A, #48, #47, #45
		db	#44, #43, #41, #40, #3E, #3D, #3C, #3A, #39, #37, #36, #34, #33, #32, #30, #2F
		db	#2D, #2C, #2A, #29, #27, #26, #25, #23, #22, #20, #1F, #1D, #1C, #1A, #19, #17
		db	#16, #15, #13, #12, #10, #0F, #0D, #0C, #0A, #09, #07, #06, #04, #03, #01, #00

		; Bottom segment's initial DDA value (lower byte).

		db	#39, #AD, #34, #AA, #10, #98, #00, #8A, #F2, #7E, #E8, #82, #ED, #7D, #E9, #7A
		db	#E7, #79, #FB, #90, #FF, #95, #05, #B4, #25, #BE, #2F, #B5, #6C, #DF, #7B, #0D
		db	#AC, #1F, #A8, #6B, #DF, #80, #19, #A5, #49, #E4, #8A, #27, #B5, #5E, #FD, #A7
		db	#63, #D7, #B2, #26, #B7, #96, #09, #EB, #7E, #24, #D6, #9E, #11, #FC, #A4, #39
		db	#29, #9A, #68, #22, #CD, #9E, #5B, #07, #DB, #9B, #48, #DF, #E1, #8E, #26, #2C
		db	#DA, #B5, #7D, #5B, #09, #D3, #B4, #62, #77, #11, #BF, #A3, #BE, #6C, #07, #26
		db	#D4, #BC, #E1, #CB, #2A, #52, #3F, #EC, #D9, #08, #B5, #A4, #84, #75, #21, #59
		db	#4D, #F8, #EB, #2A, #D4, #CA, #0E, #06, #AE, #A6, #F1, #99, #92, #E2, #DE, #84
		db	#D8, #D6, #7A, #78, #D3, #75, #75, #D4, #3B, #DC, #DE, #44, #E4, #E7, #52, #58
		db	#F5, #CF, #D6, #71, #79, #EF, #88, #FE, #7B, #86, #1C, #9D, #1B, #AF, #BB, #43
		db	#D5, #56, #E4, #74, #83, #8B, #9D, #2A, #C1, #4C, #D7, #73, #88, #8B, #9F, #42
		db	#45, #5A, #03, #05, #1B, #CA, #4A, #E3, #97, #14, #B0, #69, #E4, #84, #42, #41
		db	#5D, #20, #1F, #E6, #04, #02, #CE, #EE, #EA, #BC, #B8, #D9, #AF, #AB, #85, #3B
		db	#A3, #82, #7D, #A0, #1B, #7E, #66, #5F, #85, #0D, #6A, #F8, #53, #7A, #0F, #67
		db	#02, #57, #F8, #4B, #18, #1C, #6D, #1A, #68, #1B, #67, #1F, #69, #27, #6E, #32
		db	#77, #90, #84, #A1, #94, #B4, #A8, #CC, #BF, #E7, #DA, #05, #F4, #2B, #1A, #4D

		; Bottom segment's initial DDA value (higher byte) with alignment flag.

		db	#CB, #C8, #C7, #C5, #C6, #C3, #C4, #C1, #C0, #BF, #BE, #BD, #BC, #BB, #BA, #B9
		db	#B8, #B7, #B6, #B5, #B4, #B3, #B4, #B1, #B2, #AF, #B0, #AE, #AD, #AC, #AB, #AC
		db	#A9, #AA, #A8, #A7, #A6, #A5, #A6, #A4, #A3, #A2, #A1, #A2, #A0, #9F, #9E, #9D
		db	#9D, #9C, #9B, #9C, #9A, #99, #9A, #97, #97, #98, #95, #95, #96, #93, #94, #94
		db	#93, #92, #92, #91, #90, #90, #8F, #90, #8E, #8D, #8E, #8C, #8B, #8C, #8C, #8B
		db	#8A, #8A, #89, #89, #8A, #87, #87, #88, #87, #87, #86, #86, #85, #86, #86, #85
		db	#84, #84, #83, #83, #84, #83, #83, #82, #82, #83, #82, #82, #81, #81, #82, #81
		db	#81, #80, #80, #81, #80, #80, #81, #81, #80, #80, #7F, #80, #80, #7F, #7F, #80
		db	#7F, #7F, #80, #80, #7F, #80, #80, #7F, #81, #80, #80, #81, #80, #80, #81, #81
		db	#80, #81, #81, #82, #82, #81, #82, #82, #83, #83, #84, #83, #85, #84, #84, #85
		db	#84, #86, #85, #86, #86, #87, #87, #88, #87, #89, #88, #89, #89, #8A, #8A, #8B
		db	#8C, #8C, #8D, #8E, #8E, #8D, #8E, #8E, #8F, #90, #90, #91, #90, #92, #93, #94
		db	#94, #95, #96, #95, #97, #98, #97, #97, #98, #99, #9A, #9A, #9B, #9C, #9D, #9F
		db	#9E, #9F, #A0, #A0, #A3, #A2, #A3, #A4, #A4, #A7, #A6, #A7, #A8, #A8, #AB, #AA
		db	#AD, #AC, #AD, #AE, #B0, #B1, #B0, #B3, #B2, #B5, #B4, #B7, #B6, #B9, #B8, #BB
		db	#BA, #BB, #BC, #BD, #BE, #BF, #C0, #C1, #C2, #C3, #C4, #C7, #C7, #C8, #CB, #CA

		; Top segment's unrolled DDA loop address (lower byte).

RotDdaTabsTop	db	(RotUnrollLast - 475) % 256, (RotUnrollLast - 470) % 256, (RotUnrollLast - 470) % 256, (RotUnrollLast - 465) % 256
		db	(RotUnrollLast - 460) % 256, (RotUnrollLast - 460) % 256, (RotUnrollLast - 455) % 256, (RotUnrollLast - 455) % 256
		db	(RotUnrollLast - 450) % 256, (RotUnrollLast - 450) % 256, (RotUnrollLast - 445) % 256, (RotUnrollLast - 445) % 256
		db	(RotUnrollLast - 440) % 256, (RotUnrollLast - 440) % 256, (RotUnrollLast - 435) % 256, (RotUnrollLast - 435) % 256
		db	(RotUnrollLast - 430) % 256, (RotUnrollLast - 430) % 256, (RotUnrollLast - 425) % 256, (RotUnrollLast - 425) % 256
		db	(RotUnrollLast - 420) % 256, (RotUnrollLast - 420) % 256, (RotUnrollLast - 415) % 256, (RotUnrollLast - 415) % 256
		db	(RotUnrollLast - 410) % 256, (RotUnrollLast - 410) % 256, (RotUnrollLast - 405) % 256, (RotUnrollLast - 405) % 256
		db	(RotUnrollLast - 405) % 256, (RotUnrollLast - 400) % 256, (RotUnrollLast - 400) % 256, (RotUnrollLast - 395) % 256
		db	(RotUnrollLast - 395) % 256, (RotUnrollLast - 390) % 256, (RotUnrollLast - 390) % 256, (RotUnrollLast - 390) % 256
		db	(RotUnrollLast - 385) % 256, (RotUnrollLast - 385) % 256, (RotUnrollLast - 380) % 256, (RotUnrollLast - 380) % 256
		db	(RotUnrollLast - 380) % 256, (RotUnrollLast - 375) % 256, (RotUnrollLast - 375) % 256, (RotUnrollLast - 370) % 256
		db	(RotUnrollLast - 370) % 256, (RotUnrollLast - 370) % 256, (RotUnrollLast - 365) % 256, (RotUnrollLast - 365) % 256
		db	(RotUnrollLast - 365) % 256, (RotUnrollLast - 360) % 256, (RotUnrollLast - 360) % 256, (RotUnrollLast - 355) % 256
		db	(RotUnrollLast - 355) % 256, (RotUnrollLast - 355) % 256, (RotUnrollLast - 350) % 256, (RotUnrollLast - 350) % 256
		db	(RotUnrollLast - 350) % 256, (RotUnrollLast - 345) % 256, (RotUnrollLast - 345) % 256, (RotUnrollLast - 345) % 256
		db	(RotUnrollLast - 340) % 256, (RotUnrollLast - 340) % 256, (RotUnrollLast - 335) % 256, (RotUnrollLast - 335) % 256
		db	(RotUnrollLast - 335) % 256, (RotUnrollLast - 330) % 256, (RotUnrollLast - 330) % 256, (RotUnrollLast - 330) % 256
		db	(RotUnrollLast - 325) % 256, (RotUnrollLast - 325) % 256, (RotUnrollLast - 325) % 256, (RotUnrollLast - 320) % 256
		db	(RotUnrollLast - 320) % 256, (RotUnrollLast - 320) % 256, (RotUnrollLast - 315) % 256, (RotUnrollLast - 315) % 256
		db	(RotUnrollLast - 315) % 256, (RotUnrollLast - 310) % 256, (RotUnrollLast - 310) % 256, (RotUnrollLast - 310) % 256
		db	(RotUnrollLast - 305) % 256, (RotUnrollLast - 305) % 256, (RotUnrollLast - 305) % 256, (RotUnrollLast - 305) % 256
		db	(RotUnrollLast - 300) % 256, (RotUnrollLast - 300) % 256, (RotUnrollLast - 300) % 256, (RotUnrollLast - 295) % 256
		db	(RotUnrollLast - 295) % 256, (RotUnrollLast - 295) % 256, (RotUnrollLast - 290) % 256, (RotUnrollLast - 290) % 256
		db	(RotUnrollLast - 290) % 256, (RotUnrollLast - 285) % 256, (RotUnrollLast - 285) % 256, (RotUnrollLast - 285) % 256
		db	(RotUnrollLast - 280) % 256, (RotUnrollLast - 280) % 256, (RotUnrollLast - 280) % 256, (RotUnrollLast - 280) % 256
		db	(RotUnrollLast - 275) % 256, (RotUnrollLast - 275) % 256, (RotUnrollLast - 275) % 256, (RotUnrollLast - 270) % 256
		db	(RotUnrollLast - 270) % 256, (RotUnrollLast - 270) % 256, (RotUnrollLast - 265) % 256, (RotUnrollLast - 265) % 256
		db	(RotUnrollLast - 265) % 256, (RotUnrollLast - 265) % 256, (RotUnrollLast - 260) % 256, (RotUnrollLast - 260) % 256
		db	(RotUnrollLast - 260) % 256, (RotUnrollLast - 255) % 256, (RotUnrollLast - 255) % 256, (RotUnrollLast - 255) % 256
		db	(RotUnrollLast - 250) % 256, (RotUnrollLast - 250) % 256, (RotUnrollLast - 250) % 256, (RotUnrollLast - 250) % 256
		db	(RotUnrollLast - 245) % 256, (RotUnrollLast - 245) % 256, (RotUnrollLast - 245) % 256, (RotUnrollLast - 240) % 256
		db	(RotUnrollLast - 240) % 256, (RotUnrollLast - 240) % 256, (RotUnrollLast - 240) % 256, (RotUnrollLast - 235) % 256
		db	(RotUnrollLast - 235) % 256, (RotUnrollLast - 235) % 256, (RotUnrollLast - 230) % 256, (RotUnrollLast - 230) % 256
		db	(RotUnrollLast - 230) % 256, (RotUnrollLast - 225) % 256, (RotUnrollLast - 225) % 256, (RotUnrollLast - 225) % 256
		db	(RotUnrollLast - 225) % 256, (RotUnrollLast - 220) % 256, (RotUnrollLast - 220) % 256, (RotUnrollLast - 220) % 256
		db	(RotUnrollLast - 215) % 256, (RotUnrollLast - 215) % 256, (RotUnrollLast - 215) % 256, (RotUnrollLast - 215) % 256
		db	(RotUnrollLast - 210) % 256, (RotUnrollLast - 210) % 256, (RotUnrollLast - 210) % 256, (RotUnrollLast - 205) % 256
		db	(RotUnrollLast - 205) % 256, (RotUnrollLast - 205) % 256, (RotUnrollLast - 200) % 256, (RotUnrollLast - 200) % 256
		db	(RotUnrollLast - 200) % 256, (RotUnrollLast - 200) % 256, (RotUnrollLast - 195) % 256, (RotUnrollLast - 195) % 256
		db	(RotUnrollLast - 195) % 256, (RotUnrollLast - 190) % 256, (RotUnrollLast - 190) % 256, (RotUnrollLast - 190) % 256
		db	(RotUnrollLast - 185) % 256, (RotUnrollLast - 185) % 256, (RotUnrollLast - 185) % 256, (RotUnrollLast - 180) % 256
		db	(RotUnrollLast - 180) % 256, (RotUnrollLast - 180) % 256, (RotUnrollLast - 180) % 256, (RotUnrollLast - 175) % 256
		db	(RotUnrollLast - 175) % 256, (RotUnrollLast - 175) % 256, (RotUnrollLast - 170) % 256, (RotUnrollLast - 170) % 256
		db	(RotUnrollLast - 170) % 256, (RotUnrollLast - 165) % 256, (RotUnrollLast - 165) % 256, (RotUnrollLast - 165) % 256
		db	(RotUnrollLast - 160) % 256, (RotUnrollLast - 160) % 256, (RotUnrollLast - 160) % 256, (RotUnrollLast - 155) % 256
		db	(RotUnrollLast - 155) % 256, (RotUnrollLast - 155) % 256, (RotUnrollLast - 150) % 256, (RotUnrollLast - 150) % 256
		db	(RotUnrollLast - 150) % 256, (RotUnrollLast - 145) % 256, (RotUnrollLast - 145) % 256, (RotUnrollLast - 145) % 256
		db	(RotUnrollLast - 140) % 256, (RotUnrollLast - 140) % 256, (RotUnrollLast - 140) % 256, (RotUnrollLast - 135) % 256
		db	(RotUnrollLast - 135) % 256, (RotUnrollLast - 135) % 256, (RotUnrollLast - 130) % 256, (RotUnrollLast - 130) % 256
		db	(RotUnrollLast - 130) % 256, (RotUnrollLast - 125) % 256, (RotUnrollLast - 125) % 256, (RotUnrollLast - 125) % 256
		db	(RotUnrollLast - 120) % 256, (RotUnrollLast - 120) % 256, (RotUnrollLast - 115) % 256, (RotUnrollLast - 115) % 256
		db	(RotUnrollLast - 115) % 256, (RotUnrollLast - 110) % 256, (RotUnrollLast - 110) % 256, (RotUnrollLast - 110) % 256
		db	(RotUnrollLast - 105) % 256, (RotUnrollLast - 105) % 256, (RotUnrollLast - 100) % 256, (RotUnrollLast - 100) % 256
		db	(RotUnrollLast - 100) % 256, (RotUnrollLast - 095) % 256, (RotUnrollLast - 095) % 256, (RotUnrollLast - 090) % 256
		db	(RotUnrollLast - 090) % 256, (RotUnrollLast - 090) % 256, (RotUnrollLast - 085) % 256, (RotUnrollLast - 085) % 256
		db	(RotUnrollLast - 080) % 256, (RotUnrollLast - 080) % 256, (RotUnrollLast - 080) % 256, (RotUnrollLast - 075) % 256
		db	(RotUnrollLast - 075) % 256, (RotUnrollLast - 070) % 256, (RotUnrollLast - 070) % 256, (RotUnrollLast - 065) % 256
		db	(RotUnrollLast - 065) % 256, (RotUnrollLast - 065) % 256, (RotUnrollLast - 060) % 256, (RotUnrollLast - 060) % 256
		db	(RotUnrollLast - 055) % 256, (RotUnrollLast - 055) % 256, (RotUnrollLast - 050) % 256, (RotUnrollLast - 050) % 256
		db	(RotUnrollLast - 045) % 256, (RotUnrollLast - 045) % 256, (RotUnrollLast - 040) % 256, (RotUnrollLast - 040) % 256
		db	(RotUnrollLast - 035) % 256, (RotUnrollLast - 035) % 256, (RotUnrollLast - 030) % 256, (RotUnrollLast - 030) % 256
		db	(RotUnrollLast - 025) % 256, (RotUnrollLast - 025) % 256, (RotUnrollLast - 020) % 256, (RotUnrollLast - 020) % 256
		db	(RotUnrollLast - 015) % 256, (RotUnrollLast - 015) % 256, (RotUnrollLast - 010) % 256, (RotUnrollLast - 010) % 256
		db	(RotUnrollLast - 005) % 256, (RotUnrollLast - 000) % 256, (RotUnrollLast - 000) % 256, (RotUnrollLast - 000) % 256

		; Top segment's unrolled DDA loop address (higher byte).

		db	(RotUnrollLast - 475) / 256, (RotUnrollLast - 470) / 256, (RotUnrollLast - 470) / 256, (RotUnrollLast - 465) / 256
		db	(RotUnrollLast - 460) / 256, (RotUnrollLast - 460) / 256, (RotUnrollLast - 455) / 256, (RotUnrollLast - 455) / 256
		db	(RotUnrollLast - 450) / 256, (RotUnrollLast - 450) / 256, (RotUnrollLast - 445) / 256, (RotUnrollLast - 445) / 256
		db	(RotUnrollLast - 440) / 256, (RotUnrollLast - 440) / 256, (RotUnrollLast - 435) / 256, (RotUnrollLast - 435) / 256
		db	(RotUnrollLast - 430) / 256, (RotUnrollLast - 430) / 256, (RotUnrollLast - 425) / 256, (RotUnrollLast - 425) / 256
		db	(RotUnrollLast - 420) / 256, (RotUnrollLast - 420) / 256, (RotUnrollLast - 415) / 256, (RotUnrollLast - 415) / 256
		db	(RotUnrollLast - 410) / 256, (RotUnrollLast - 410) / 256, (RotUnrollLast - 405) / 256, (RotUnrollLast - 405) / 256
		db	(RotUnrollLast - 405) / 256, (RotUnrollLast - 400) / 256, (RotUnrollLast - 400) / 256, (RotUnrollLast - 395) / 256
		db	(RotUnrollLast - 395) / 256, (RotUnrollLast - 390) / 256, (RotUnrollLast - 390) / 256, (RotUnrollLast - 390) / 256
		db	(RotUnrollLast - 385) / 256, (RotUnrollLast - 385) / 256, (RotUnrollLast - 380) / 256, (RotUnrollLast - 380) / 256
		db	(RotUnrollLast - 380) / 256, (RotUnrollLast - 375) / 256, (RotUnrollLast - 375) / 256, (RotUnrollLast - 370) / 256
		db	(RotUnrollLast - 370) / 256, (RotUnrollLast - 370) / 256, (RotUnrollLast - 365) / 256, (RotUnrollLast - 365) / 256
		db	(RotUnrollLast - 365) / 256, (RotUnrollLast - 360) / 256, (RotUnrollLast - 360) / 256, (RotUnrollLast - 355) / 256
		db	(RotUnrollLast - 355) / 256, (RotUnrollLast - 355) / 256, (RotUnrollLast - 350) / 256, (RotUnrollLast - 350) / 256
		db	(RotUnrollLast - 350) / 256, (RotUnrollLast - 345) / 256, (RotUnrollLast - 345) / 256, (RotUnrollLast - 345) / 256
		db	(RotUnrollLast - 340) / 256, (RotUnrollLast - 340) / 256, (RotUnrollLast - 335) / 256, (RotUnrollLast - 335) / 256
		db	(RotUnrollLast - 335) / 256, (RotUnrollLast - 330) / 256, (RotUnrollLast - 330) / 256, (RotUnrollLast - 330) / 256
		db	(RotUnrollLast - 325) / 256, (RotUnrollLast - 325) / 256, (RotUnrollLast - 325) / 256, (RotUnrollLast - 320) / 256
		db	(RotUnrollLast - 320) / 256, (RotUnrollLast - 320) / 256, (RotUnrollLast - 315) / 256, (RotUnrollLast - 315) / 256
		db	(RotUnrollLast - 315) / 256, (RotUnrollLast - 310) / 256, (RotUnrollLast - 310) / 256, (RotUnrollLast - 310) / 256
		db	(RotUnrollLast - 305) / 256, (RotUnrollLast - 305) / 256, (RotUnrollLast - 305) / 256, (RotUnrollLast - 305) / 256
		db	(RotUnrollLast - 300) / 256, (RotUnrollLast - 300) / 256, (RotUnrollLast - 300) / 256, (RotUnrollLast - 295) / 256
		db	(RotUnrollLast - 295) / 256, (RotUnrollLast - 295) / 256, (RotUnrollLast - 290) / 256, (RotUnrollLast - 290) / 256
		db	(RotUnrollLast - 290) / 256, (RotUnrollLast - 285) / 256, (RotUnrollLast - 285) / 256, (RotUnrollLast - 285) / 256
		db	(RotUnrollLast - 280) / 256, (RotUnrollLast - 280) / 256, (RotUnrollLast - 280) / 256, (RotUnrollLast - 280) / 256
		db	(RotUnrollLast - 275) / 256, (RotUnrollLast - 275) / 256, (RotUnrollLast - 275) / 256, (RotUnrollLast - 270) / 256
		db	(RotUnrollLast - 270) / 256, (RotUnrollLast - 270) / 256, (RotUnrollLast - 265) / 256, (RotUnrollLast - 265) / 256
		db	(RotUnrollLast - 265) / 256, (RotUnrollLast - 265) / 256, (RotUnrollLast - 260) / 256, (RotUnrollLast - 260) / 256
		db	(RotUnrollLast - 260) / 256, (RotUnrollLast - 255) / 256, (RotUnrollLast - 255) / 256, (RotUnrollLast - 255) / 256
		db	(RotUnrollLast - 250) / 256, (RotUnrollLast - 250) / 256, (RotUnrollLast - 250) / 256, (RotUnrollLast - 250) / 256
		db	(RotUnrollLast - 245) / 256, (RotUnrollLast - 245) / 256, (RotUnrollLast - 245) / 256, (RotUnrollLast - 240) / 256
		db	(RotUnrollLast - 240) / 256, (RotUnrollLast - 240) / 256, (RotUnrollLast - 240) / 256, (RotUnrollLast - 235) / 256
		db	(RotUnrollLast - 235) / 256, (RotUnrollLast - 235) / 256, (RotUnrollLast - 230) / 256, (RotUnrollLast - 230) / 256
		db	(RotUnrollLast - 230) / 256, (RotUnrollLast - 225) / 256, (RotUnrollLast - 225) / 256, (RotUnrollLast - 225) / 256
		db	(RotUnrollLast - 225) / 256, (RotUnrollLast - 220) / 256, (RotUnrollLast - 220) / 256, (RotUnrollLast - 220) / 256
		db	(RotUnrollLast - 215) / 256, (RotUnrollLast - 215) / 256, (RotUnrollLast - 215) / 256, (RotUnrollLast - 215) / 256
		db	(RotUnrollLast - 210) / 256, (RotUnrollLast - 210) / 256, (RotUnrollLast - 210) / 256, (RotUnrollLast - 205) / 256
		db	(RotUnrollLast - 205) / 256, (RotUnrollLast - 205) / 256, (RotUnrollLast - 200) / 256, (RotUnrollLast - 200) / 256
		db	(RotUnrollLast - 200) / 256, (RotUnrollLast - 200) / 256, (RotUnrollLast - 195) / 256, (RotUnrollLast - 195) / 256
		db	(RotUnrollLast - 195) / 256, (RotUnrollLast - 190) / 256, (RotUnrollLast - 190) / 256, (RotUnrollLast - 190) / 256
		db	(RotUnrollLast - 185) / 256, (RotUnrollLast - 185) / 256, (RotUnrollLast - 185) / 256, (RotUnrollLast - 180) / 256
		db	(RotUnrollLast - 180) / 256, (RotUnrollLast - 180) / 256, (RotUnrollLast - 180) / 256, (RotUnrollLast - 175) / 256
		db	(RotUnrollLast - 175) / 256, (RotUnrollLast - 175) / 256, (RotUnrollLast - 170) / 256, (RotUnrollLast - 170) / 256
		db	(RotUnrollLast - 170) / 256, (RotUnrollLast - 165) / 256, (RotUnrollLast - 165) / 256, (RotUnrollLast - 165) / 256
		db	(RotUnrollLast - 160) / 256, (RotUnrollLast - 160) / 256, (RotUnrollLast - 160) / 256, (RotUnrollLast - 155) / 256
		db	(RotUnrollLast - 155) / 256, (RotUnrollLast - 155) / 256, (RotUnrollLast - 150) / 256, (RotUnrollLast - 150) / 256
		db	(RotUnrollLast - 150) / 256, (RotUnrollLast - 145) / 256, (RotUnrollLast - 145) / 256, (RotUnrollLast - 145) / 256
		db	(RotUnrollLast - 140) / 256, (RotUnrollLast - 140) / 256, (RotUnrollLast - 140) / 256, (RotUnrollLast - 135) / 256
		db	(RotUnrollLast - 135) / 256, (RotUnrollLast - 135) / 256, (RotUnrollLast - 130) / 256, (RotUnrollLast - 130) / 256
		db	(RotUnrollLast - 130) / 256, (RotUnrollLast - 125) / 256, (RotUnrollLast - 125) / 256, (RotUnrollLast - 125) / 256
		db	(RotUnrollLast - 120) / 256, (RotUnrollLast - 120) / 256, (RotUnrollLast - 115) / 256, (RotUnrollLast - 115) / 256
		db	(RotUnrollLast - 115) / 256, (RotUnrollLast - 110) / 256, (RotUnrollLast - 110) / 256, (RotUnrollLast - 110) / 256
		db	(RotUnrollLast - 105) / 256, (RotUnrollLast - 105) / 256, (RotUnrollLast - 100) / 256, (RotUnrollLast - 100) / 256
		db	(RotUnrollLast - 100) / 256, (RotUnrollLast - 095) / 256, (RotUnrollLast - 095) / 256, (RotUnrollLast - 090) / 256
		db	(RotUnrollLast - 090) / 256, (RotUnrollLast - 090) / 256, (RotUnrollLast - 085) / 256, (RotUnrollLast - 085) / 256
		db	(RotUnrollLast - 080) / 256, (RotUnrollLast - 080) / 256, (RotUnrollLast - 080) / 256, (RotUnrollLast - 075) / 256
		db	(RotUnrollLast - 075) / 256, (RotUnrollLast - 070) / 256, (RotUnrollLast - 070) / 256, (RotUnrollLast - 065) / 256
		db	(RotUnrollLast - 065) / 256, (RotUnrollLast - 065) / 256, (RotUnrollLast - 060) / 256, (RotUnrollLast - 060) / 256
		db	(RotUnrollLast - 055) / 256, (RotUnrollLast - 055) / 256, (RotUnrollLast - 050) / 256, (RotUnrollLast - 050) / 256
		db	(RotUnrollLast - 045) / 256, (RotUnrollLast - 045) / 256, (RotUnrollLast - 040) / 256, (RotUnrollLast - 040) / 256
		db	(RotUnrollLast - 035) / 256, (RotUnrollLast - 035) / 256, (RotUnrollLast - 030) / 256, (RotUnrollLast - 030) / 256
		db	(RotUnrollLast - 025) / 256, (RotUnrollLast - 025) / 256, (RotUnrollLast - 020) / 256, (RotUnrollLast - 020) / 256
		db	(RotUnrollLast - 015) / 256, (RotUnrollLast - 015) / 256, (RotUnrollLast - 010) / 256, (RotUnrollLast - 010) / 256
		db	(RotUnrollLast - 005) / 256, (RotUnrollLast - 000) / 256, (RotUnrollLast - 000) / 256, (RotUnrollLast - 000) / 256

		; Top segment's DDA step (lower byte).

		db	#FF, #FD, #FC, #FA, #F9, #F7, #F6, #F4, #F3, #F1, #F0, #EE, #ED, #EB, #EA, #E9
		db	#E7, #E6, #E4, #E3, #E1, #E0, #DE, #DD, #DB, #DA, #D9, #D7, #D6, #D4, #D3, #D1
		db	#D0, #CE, #CD, #CC, #CA, #C9, #C7, #C6, #C4, #C3, #C2, #C0, #BF, #BD, #BC, #BB
		db	#B9, #B8, #B6, #B5, #B4, #B2, #B1, #AF, #AE, #AD, #AB, #AA, #A9, #A7, #A6, #A5
		db	#A3, #A2, #A0, #9F, #9E, #9C, #9B, #9A, #98, #97, #96, #95, #93, #92, #91, #8F
		db	#8E, #8D, #8B, #8A, #89, #88, #86, #85, #84, #83, #81, #80, #7F, #7E, #7C, #7B
		db	#7A, #79, #78, #76, #75, #74, #73, #72, #70, #6F, #6E, #6D, #6C, #6B, #69, #68
		db	#67, #66, #65, #64, #63, #62, #61, #5F, #5E, #5D, #5C, #5B, #5A, #59, #58, #57
		db	#56, #55, #54, #53, #52, #51, #50, #4F, #4E, #4D, #4C, #4B, #4A, #49, #48, #47
		db	#46, #45, #44, #44, #43, #42, #41, #40, #3F, #3E, #3D, #3D, #3C, #3B, #3A, #39
		db	#38, #38, #37, #36, #35, #34, #34, #33, #32, #31, #31, #30, #2F, #2F, #2E, #2D
		db	#2C, #2C, #2B, #2A, #2A, #29, #29, #28, #27, #27, #26, #25, #25, #24, #24, #23
		db	#23, #22, #21, #21, #20, #20, #1F, #1F, #1E, #1E, #1D, #1D, #1D, #1C, #1C, #1B
		db	#1B, #1A, #1A, #1A, #19, #19, #18, #18, #18, #17, #17, #17, #16, #16, #16, #16
		db	#15, #15, #15, #14, #14, #14, #14, #14, #13, #13, #13, #13, #13, #12, #12, #12
		db	#12, #12, #12, #12, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #00, #00

		; Top segment's initial DDA value (lower byte).

		db	#D9, #62, #E8, #67, #E9, #68, #E5, #60, #D9, #4F, #C4, #37, #A7, #15, #81, #EB
		db	#53, #B9, #1D, #7E, #DE, #3B, #96, #EF, #46, #9A, #ED, #66, #B6, #03, #4F, #98
		db	#DF, #24, #9A, #DC, #1C, #5A, #96, #09, #42, #79, #AD, #E0, #52, #81, #AF, #DA
		db	#4A, #73, #99, #BE, #2C, #4E, #6D, #8B, #F8, #13, #2B, #98, #AE, #C1, #D3, #3E
		db	#4D, #5A, #C4, #CE, #D6, #40, #46, #49, #B2, #B3, #B1, #1A, #16, #10, #78, #6F
		db	#65, #CC, #BF, #25, #16, #04, #6B, #57, #41, #A6, #8E, #F4, #D9, #BC, #21, #02
		db	#E1, #46, #23, #87, #61, #3A, #9E, #74, #D8, #AC, #7F, #E2, #B2, #16, #E4, #B0
		db	#13, #DD, #41, #08, #CF, #32, #F6, #59, #1B, #7E, #3F, #FD, #60, #1D, #80, #3B
		db	#F4, #57, #0E, #72, #27, #DB, #3E, #F1, #54, #05, #68, #17, #C5, #29, #D5, #38
		db	#E3, #8C, #F0, #98, #FC, #A2, #48, #AC, #50, #B4, #57, #F8, #5D, #FD, #62, #01
		db	#9F, #04, #A1, #3D, #A2, #3D, #A3, #3D, #D6, #3C, #D4, #6B, #D2, #68, #D0, #65
		db	#FA, #62, #F6, #89, #F2, #84, #16, #7F, #10, #A1, #0B, #9B, #2B, #96, #25, #B4
		db	#1F, #AE, #3C, #C9, #36, #C4, #51, #BE, #4B, #D8, #64, #D3, #5F, #EB, #77, #E8
		db	#74, #00, #8B, #FD, #89, #15, #A1, #2D, #A1, #2D, #BA, #46, #D2, #49, #D6, #63
		db	#F0, #7E, #0B, #99, #13, #A2, #31, #C0, #50, #E0, #70, #01, #92, #23, #B5, #48
		db	#DB, #6F, #03, #98, #2D, #C3, #59, #F1, #89, #21, #BB, #55, #01, #9C, #39, #4D

		; Top segment's initial DDA value (higher byte).

		db	#E5, #E6, #E6, #E7, #E7, #E8, #E8, #E9, #E9, #EA, #EA, #EB, #EB, #EC, #EC, #EC
		db	#ED, #ED, #EE, #EE, #EE, #EF, #EF, #EF, #F0, #F0, #F0, #F1, #F1, #F2, #F2, #F2
		db	#F2, #F3, #F3, #F3, #F4, #F4, #F4, #F5, #F5, #F5, #F5, #F5, #F6, #F6, #F6, #F6
		db	#F7, #F7, #F7, #F7, #F8, #F8, #F8, #F8, #F8, #F9, #F9, #F9, #F9, #F9, #F9, #FA
		db	#FA, #FA, #FA, #FA, #FA, #FB, #FB, #FB, #FB, #FB, #FB, #FC, #FC, #FC, #FC, #FC
		db	#FC, #FC, #FC, #FD, #FD, #FD, #FD, #FD, #FD, #FD, #FD, #FD, #FD, #FD, #FE, #FE
		db	#FD, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FF, #FE, #FE
		db	#FF, #FE, #FF, #FF, #FE, #FF, #FE, #FF, #FF, #FF, #FF, #FE, #FF, #FF, #FF, #FF
		db	#FE, #FF, #FF, #FF, #FF, #FE, #FF, #FE, #FF, #FF, #FF, #FF, #FE, #FF, #FE, #FF
		db	#FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FE, #FD, #FE, #FD, #FE, #FE
		db	#FD, #FE, #FD, #FD, #FD, #FD, #FD, #FD, #FC, #FD, #FC, #FC, #FC, #FC, #FC, #FC
		db	#FB, #FC, #FB, #FB, #FB, #FB, #FB, #FB, #FB, #FA, #FB, #FA, #FA, #FA, #FA, #F9
		db	#FA, #F9, #F9, #F8, #F9, #F8, #F8, #F8, #F8, #F7, #F7, #F7, #F7, #F6, #F6, #F6
		db	#F6, #F6, #F5, #F5, #F5, #F5, #F4, #F4, #F4, #F4, #F3, #F3, #F2, #F3, #F2, #F2
		db	#F1, #F1, #F1, #F0, #F1, #F0, #F0, #EF, #EF, #EE, #EE, #EE, #ED, #ED, #EC, #EC
		db	#EB, #EB, #EB, #EA, #EA, #E9, #E9, #E8, #E8, #E8, #E7, #E7, #E6, #E5, #E5, #E5

RotColorAddrTab	db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListA % 256, RotListA % 256
		db	RotListC % 256, RotListC % 256, RotListC % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListC % 256, RotListC % 256
		db	RotListC % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListC % 256, RotListC % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListE % 256, RotListE % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListN % 256, RotListN % 256, RotListN % 256, RotListI % 256
		db	RotListI % 256, RotListI % 256, RotListI % 256, RotListM % 256
		db	RotListM % 256, RotListM % 256, RotListM % 256, RotListH % 256
		db	RotListH % 256, RotListH % 256, RotListL % 256, RotListL % 256
		db	RotListL % 256, RotListL % 256, RotListL % 256, RotListG % 256
		db	RotListG % 256, RotListG % 256, RotListK % 256, RotListK % 256
		db	RotListK % 256, RotListK % 256, RotListF % 256, RotListF % 256
		db	RotListF % 256, RotListF % 256, RotListJ % 256, RotListJ % 256
		db	RotListJ % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListE % 256
		db	RotListE % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListC % 256, RotListC % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListC % 256, RotListC % 256, RotListC % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListD % 256, RotListD % 256
		db	RotListD % 256, RotListD % 256, RotListC % 256, RotListC % 256
		db	RotListC % 256, RotListC % 256, RotListA % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListB % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListB % 256
		db	RotListB % 256, RotListB % 256, RotListB % 256, RotListB % 256
		db	RotListA % 256, RotListA % 256, RotListA % 256, RotListA % 256

		; Initial attribute address (lower byte).

		db	#C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#A0, #A0, #A0, #A0, #A0, #A0, #A0, #80, #80, #80, #80, #80, #80, #80, #80, #80
		db	#80, #80, #80, #80, #80, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60, #60
		db	#60, #60, #40, #40, #40, #40, #40, #40, #40, #40, #40, #40, #40, #40, #20, #20
		db	#20, #20, #20, #20, #20, #20, #20, #20, #20, #20, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0
		db	#C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#A0, #A0, #A0, #80, #80, #80, #80, #80, #80, #80, #80, #60, #60, #60, #60, #60
		db	#60, #60, #60, #40, #40, #40, #40, #40, #40, #40, #20, #20, #20, #20, #20, #20
		db	#20, #00, #00, #00, #00, #00, #00, #00, #00, #E0, #E0, #E0, #E0, #E0, #E0, #E0
		db	#E0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #C0, #A0, #A0, #A0, #A0, #A0, #A0
		db	#A0, #A0, #A0, #A0, #80, #80, #80, #80, #80, #80, #80, #80, #80, #80, #60, #60
		db	#60, #60, #60, #60, #60, #60, #60, #60, #60, #40, #40, #40, #40, #40, #40, #40
		db	#40, #40, #40, #40, #40, #20, #20, #20, #20, #20, #20, #20, #20, #20, #20, #20
		db	#20, #20, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #E0
		db	#E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #E0, #C0, #C0, #C0, #C0

		; Initial attribute address (higher byte).

		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59
		db	#59, #59, #59, #59, #59, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58, #58
		db	#58, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5B, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A
		db	#5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #5A, #59
		db	#59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59, #59

RotFillEmpty	exx
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
		push	hl
		push	hl
		push	hl
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		jp	(hl)

RotFillPtrnA	exx
		push	hl
		push	bc
		push	bc
		push	bc
		push	bc
		push	hl
		push	de
		push	de
		push	de
		push	de
		push	hl
		push	bc
		push	bc
		push	bc
		push	bc
		push	hl
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		jp	(hl)

RotFillPtrnB	exx
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		push	hl
		push	de
		push	de
		push	de
		push	de
		push	hl
		push	bc
		push	bc
		push	bc
		push	bc
		push	bc
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		jp	(hl)

RotFillRstSP	ld	sp,#5B00

		; Also swap segment colors for the next quadrant.

		exx
		ld	a,b
		xor	%01000010
		ld	b,a
		ld	c,a
		ld	a,d
		xor	%00000101
		ld	d,a
		ld	e,a
		exx
		ld	a,(de)
		inc	e
		ld	l,a
		jp	(hl)

RotFillRet	jp	(ix)
		
RotListA	db	RotFillEmpty
		db	RotFillPtrnA
		db	RotFillPtrnA
		db	RotFillEmpty
		db	RotFillRet

RotListB	db	RotFillEmpty
		db	RotFillPtrnA
		db	RotFillPtrnA
		db	RotFillPtrnA
		db	RotFillEmpty
		db	RotFillRet

RotListC	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListD	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListE	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListF	db	RotFillEmpty
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListG	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListH	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListI	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillEmpty
		db	RotFillRet

RotListJ	db	RotFillEmpty
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListK	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListL	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListM	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillPtrnB
		db	RotFillEmpty
		db	RotFillRet

RotListN	db	RotFillEmpty
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillPtrnB
		db	RotFillRstSP
		db	RotFillEmpty
		db	RotFillRet

		;----------------;
		; UNALIGNED DATA ;
		;----------------;

		; Unrolled DDA loop used to calculate screen space depths.

		REPT	95
		ld	d,h
		add	hl,bc
		ld	e,h
		push	de
		add	hl,bc
		ENDM
RotUnrollLast	ld	d,h
		add	hl,bc
		ld	e,h
		push	de
		jp	(ix)

		; Combine environment mapped lines with depth and output swizzled display list.

RotSwizzle1	pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 63),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 55),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 47),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 39),a
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 31),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 23),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 15),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 7),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 62),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 54),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 46),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 38),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 30),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 22),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 14),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 6),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 61),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 53),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 45),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 37),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 29),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 21),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 13),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 5),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 60),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 52),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 44),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 36),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 28),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 20),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 12),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 4),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 59),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 51),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 43),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 35),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 27),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 19),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 11),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 3),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 58),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 50),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 42),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 34),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 26),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 18),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 10),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 2),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 57),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 49),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 41),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 33),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 25),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 17),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 9),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 1),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 56),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 48),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 40),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 32),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 24),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 16),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 8),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 0),a
		inc	e
		inc	e
		jp	(hl)

RotSwizzle2	pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 63),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 55),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 47),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 39),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 31),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 23),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 15),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 7),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 62),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 54),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 46),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 38),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 30),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 22),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 14),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 6),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 61),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 53),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 45),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 37),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 29),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 21),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 13),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 5),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 60),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 52),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 44),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 36),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 28),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 20),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 12),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 4),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 59),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 51),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 43),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 35),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 27),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 19),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 11),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 3),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 58),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 50),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 42),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 34),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 26),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 18),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 10),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 2),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 57),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 49),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 41),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 33),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 25),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 17),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 9),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 1),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 56),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 48),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 40),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 32),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 24),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 16),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 8),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 0),a
		inc	e
		inc	e
		jp	(hl)

RotSwizzle3	pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 63),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 55),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 47),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 39),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 31),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 23),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 15),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 7),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 62),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 54),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 46),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 38),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 30),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 22),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 14),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 6),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 61),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 53),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 45),a
		inc	e
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 37),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 29),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 21),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 13),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 5),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 60),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 52),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 44),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 36),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 28),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 20),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 12),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 4),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 59),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 51),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 43),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 35),a
		inc	e
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 27),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 19),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 11),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 3),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 58),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 50),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 42),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 34),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 26),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 18),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 10),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 2),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 57),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 49),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 41),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 33),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 25),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 17),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 9),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 1),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 56),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 48),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 40),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 32),a
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 24),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 16),a
		inc	e
		pop	bc
		ld	a,(de)
		and	c
		ld	(#FF82 + 8),a
		inc	e
		ld	a,(de)
		and	b
		ld	(#FF82 + 0),a
		jp	(hl)

		; Bitmap fillers optimized for 64 possible depths.

RotFiller00	push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller01	push	de
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller02	push	de
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller03	push	de
		push	de
		push	de
		push	bc
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		push	bc
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller04	push	de
		push	de
		push	de
		ld	hl,#0100
		push	hl
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		ld	hl,#0080
		push	hl
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller05	push	de
		push	de
		push	de
		ld	hl,#0100
		push	hl
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		ld	hl,#0080
		push	hl
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller06	push	de
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller07	push	de
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller08	push	de
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller09	push	de
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller0A	push	de
		push	de
		push	de
		push	ix
		push	bc
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		push	bc
		push	iy
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller0B	push	de
		push	de
		push	de
		push	ix
		push	bc
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		push	bc
		push	iy
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller0C	push	de
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller0D	push	de
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller0E	push	de
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller0F	ld	hl,#FEFF
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#FF7F
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller10	ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller11	ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller12	ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller13	ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller14	ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller15	ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller16	exx
		push	hl
		exx
		push	de
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	de
		exx
		push	de
		exx
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller17	ld	hl,#00FC
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller18	push	iy
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		push	ix
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller19	exx
		push	bc
		exx
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller1A	ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller1B	ld	hl,#0080
		push	hl
		push	de
		push	de
		push	de
		push	bc
		push	bc
		ld	l,e
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		push	bc
		push	de
		push	de
		push	de
		ld	h,#01
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller1C	push	bc
		push	de
		push	de
		push	de
		push	bc
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		push	bc
		push	de
		push	de
		push	de
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller1D	push	bc
		ld	hl,#FEFF
		push	hl
		push	de
		push	de
		ld	hl,#0100
		push	hl
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		ld	hl,#0080
		push	hl
		push	de
		push	de
		ld	h,d
		dec	l
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller1E	push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller1F	push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller20	push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller21	push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller22	push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller23	push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		push	ix
		push	bc
		ld	l,#FC
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		push	iy
		push	de
		push	de
		ld	h,d
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller24	push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		push	ix
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		push	iy
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller25	push	bc
		ld	hl,#00FC
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller26	push	bc
		push	iy
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		push	ix
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller27	push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		exx
		push	de
		exx
		push	bc
		push	iy
		push	de
		push	de
		push	ix
		push	bc
		exx
		push	hl
		exx
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller28	push	bc
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		push	iy
		push	de
		push	de
		push	ix
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller29	push	bc
		ld	hl,#0080
		push	hl
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	iy
		push	de
		push	de
		push	ix
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		ld	hl,#0100
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller2A	push	bc
		push	bc
		push	de
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		push	iy
		push	de
		push	de
		push	ix
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		push	de
		push	bc
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller2B	push	bc
		push	bc
		ld	hl,#FEFF
		push	hl
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller2C	ld	hl,#0100
		push	hl
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		ld	hl,#0080
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller2D	ex	af,af'
		push	af
		ex	af,af'
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		ld	hl,#FF07
		push	hl
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		exx
		push	bc
		exx
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller2E	ld	hl,#0F00
		push	hl
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		ld	hl,#0F00
		push	hl
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		ld	hl,#00F0
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller2F	ld	hl,#3F00
		push	hl
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		ld	hl,#00FC
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller30	exx
		push	de
		exx
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		exx
		push	hl
		exx
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller31	ld	hl,#FF01
		push	hl
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		ld	hl,#80FF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller32	ld	hl,#FF03
		push	hl
		push	bc
		exx
		push	hl
		exx
		push	de
		ld	l,#7F
		push	hl
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		exx
		push	de
		exx
		push	bc
		ld	h,#C0
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller33	ld	hl,#FF0F
		push	hl
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		exx
		push	bc
		exx
		push	de
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		dec	h
		ld	l,e
		push	hl
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		ld	hl,#F0FF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller34	ld	hl,#FF1F
		push	hl
		push	bc
		push	iy
		push	de
		push	de
		push	bc
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		push	de
		push	de
		push	ix
		push	bc
		ld	hl,#F8FF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller35	ld	hl,#FF7F
		push	hl
		push	bc
		ld	hl,#00F0
		push	hl
		push	de
		push	de
		push	bc
		ld	l,#C0
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		push	de
		push	de
		ld	h,#0F
		push	hl
		push	bc
		ld	hl,#FEFF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller36	push	de
		push	bc
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		inc	h
		ld	l,c
		push	hl
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		ld	hl,#0080
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		push	bc
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller37	push	de
		ld	hl,#0300
		push	hl
		ld	hl,#0080
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		ld	hl,#0300
		push	hl
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		inc	h
		ld	l,c
		push	hl
		ld	hl,#00C0
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller38	push	de
		ld	hl,#0F00
		push	hl
		push	bc
		push	de
		push	de
		ld	h,#03
		push	hl
		ld	hl,#0080
		push	hl
		push	de
		push	de
		inc	h
		ld	l,c
		push	hl
		ld	hl,#00C0
		push	hl
		push	de
		push	de
		push	bc
		ld	l,#F0
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller39	push	de
		push	ix
		push	bc
		ld	hl,#FEFF
		push	hl
		push	de
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,#0080
		push	hl
		push	de
		push	de
		inc	h
		ld	l,c
		push	hl
		exx
		push	bc
		exx
		push	de
		ld	hl,#FF7F
		push	hl
		push	bc
		push	iy
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller3A	push	de
		exx
		push	de
		exx
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		ld	hl,#0F00
		push	hl
		ld	hl,#0080
		push	hl
		push	de
		push	de
		inc	h
		ld	l,c
		push	hl
		ld	hl,#00F0
		push	hl
		push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		exx
		push	hl
		exx
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller3B	push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		ld	hl,#0F00
		push	hl
		ld	hl,#0080
		push	hl
		push	de
		push	de
		inc	h
		ld	l,c
		push	hl
		ld	hl,#00F0
		push	hl
		push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller3C	push	de
		ld	hl,#FF03
		push	hl
		push	bc
		ld	hl,#F0FF
		push	hl
		push	de
		push	ix
		push	bc
		push	de
		push	de
		push	bc
		push	iy
		push	de
		ld	hl,#FF0F
		push	hl
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller3D	push	de
		ld	hl,#FF07
		push	hl
		push	bc
		ld	hl,#C0FF
		push	hl
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		push	de
		push	de
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		ld	hl,#FF03
		push	hl
		push	bc
		ld	hl,#E0FF
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller3E	push	de
		ld	hl,#FF1F
		push	hl
		push	bc
		ld	hl,#80FF
		push	hl
		push	de
		ld	hl,#3F00
		push	hl
		push	bc
		push	de
		push	de
		push	bc
		ld	hl,#00FC
		push	hl
		push	de
		ld	hl,#FF01
		push	hl
		push	bc
		ld	hl,#F8FF
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller3F	push	de
		ld	hl,#FF3F
		push	hl
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		push	de
		exx
		push	de
		exx
		push	bc
		push	de
		push	de
		push	bc
		exx
		push	hl
		exx
		push	de
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		ld	hl,#FCFF
		push	hl
		push	de
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller41	push	bc
		push	bc
		push	bc
		push	bc
		push	de
		push	bc
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		push	bc
		push	de
		push	bc
		push	bc
		push	bc
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller42	push	bc
		push	bc
		push	bc
		push	bc
		push	de
		ld	hl,#0100
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#0080
		push	hl
		push	de
		push	bc
		push	bc
		push	bc
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller43	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#FEFF
		push	hl
		ld	hl,#0100
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#0080
		push	hl
		ld	h,d
		dec	l
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller44	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#FEFF
		push	hl
		ld	hl,#0300
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00C0
		push	hl
		ld	hl,#FF7F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller45	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#0300
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00C0
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller46	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#FCFF
		push	hl
		ld	hl,#0300
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00C0
		push	hl
		ld	hl,#FF3F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller47	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F8FF
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		ld	hl,#FF1F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller48	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F8FF
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		ld	hl,#FF1F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller49	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F0FF
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		ld	hl,#FF0F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller4A	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller4B	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller4C	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		push	ix
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		push	iy
		ld	hl,#FF07
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller4D	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		push	ix
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		push	iy
		ld	hl,#FF03
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller4E	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		push	ix
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		push	iy
		ld	hl,#FF03
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller4F	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller50	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00FC
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller51	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#00FC
		push	hl
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller52	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		exx
		push	de
		exx
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		exx
		push	hl
		exx
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller53	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	hl
		exx
		exx
		push	de
		exx
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		exx
		push	hl
		exx
		exx
		push	de
		exx
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller54	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	hl
		exx
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		exx
		push	de
		exx
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller55	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00FC
		push	hl
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller56	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00FC
		push	hl
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		ld	hl,#3F00
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller57	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	iy
		ld	hl,#FF01
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		push	ix
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller58	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	iy
		ld	hl,#FF01
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		push	ix
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller59	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller5A	push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00F0
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0F00
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller5B	ld	hl,#0300
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		ld	hl,#FF03
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00C0
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller5C	ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		ld	hl,#FF07
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller5D	ld	hl,#0F00
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00C0
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0300
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00F0
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller5E	push	ix
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#0080
		push	hl
		ld	hl,#FF07
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		ld	hl,#0100
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	iy
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller5F	exx
		push	de
		exx
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#0080
		push	hl
		ld	hl,#FF0F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F0FF
		push	hl
		ld	hl,#0100
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	hl
		exx
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller60	ld	h,d
		ld	l,c
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		ld	hl,#FF0F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F0FF
		push	hl
		push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller61	ld	hl,#FF01
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		ld	hl,#FF1F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F8FF
		push	hl
		push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller62	ld	hl,#FF03
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FE1F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F87F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller63	ld	hl,#FF0F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FE1F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F87F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F0FF
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller64	ld	hl,#FE1F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FC3F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FC3F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#F87F
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller65	ld	hl,#FC3F
		push	hl
		push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#FC3F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FC3F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		ld	hl,#FC3F
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller66	ld	hl,#F0FF
		push	hl
		push	bc
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F83F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FC1F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	bc
		ld	hl,#FF0F
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller67	ld	hl,#E0FF
		push	hl
		ld	hl,#0100
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F87F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FE1F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#0080
		push	hl
		ld	hl,#FF07
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller68	ld	hl,#C0FF
		push	hl
		ld	hl,#0300
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F07F
		push	hl
		ld	hl,-8
		add	hl,sp
		ld	sp,hl
		ld	hl,#FE0F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00C0
		push	hl
		ld	hl,#FF03
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller69	ld	h,b
		ld	l,e
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F0FF
		push	hl
		push	bc
		push	bc
		push	bc
		push	bc
		ld	hl,#FF0F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	bc
		exx
		ld	h,d
		ld	l,c
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller6A	exx
		push	hl
		exx
		push	ix
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		push	bc
		push	bc
		push	bc
		push	bc
		ld	hl,#FF07
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		push	iy
		exx
		push	de
		exx
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller6B	push	iy
		ld	hl,#3F00
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		push	bc
		push	bc
		push	bc
		push	bc
		ld	hl,#FF07
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#00FC
		push	hl
		push	ix
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller6C	ld	hl,#00F0
		push	hl
		exx
		push	de
		exx
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0100
		push	hl
		push	bc
		push	bc
		ld	hl,#0080
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		exx
		push	hl
		exx
		ld	hl,#0F00
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller6D	ld	hl,#00C0
		push	hl
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0100
		push	hl
		push	bc
		push	bc
		ld	hl,#0080
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		ld	hl,#0300
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller6E	ld	hl,#0080
		push	hl
		ld	hl,#FF03
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0100
		push	hl
		push	bc
		push	bc
		ld	hl,#0080
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#C0FF
		push	hl
		ld	hl,#0100
		push	hl
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller6F	push	bc
		ld	hl,#FF07
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#80FF
		push	hl
		ld	hl,#0300
		push	hl
		push	bc
		push	bc
		ld	hl,#00C0
		push	hl
		ld	hl,#FF01
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#E0FF
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller70	push	bc
		ld	hl,#FC0F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		ld	hl,#0300
		push	hl
		push	bc
		push	bc
		ld	hl,#00C0
		push	hl
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#F03F
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller71	push	bc
		ld	hl,#F83F
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	h,b
		ld	l,e
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		exx
		push	bc
		exx
		ld	h,d
		ld	l,c
		push	hl
		ld	hl,-6
		add	hl,sp
		ld	sp,hl
		ld	hl,#FC1F
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller72	push	bc
		ld	hl,#E07F
		push	hl
		push	bc
		push	bc
		push	bc
		exx
		push	hl
		exx
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		exx
		push	bc
		exx
		exx
		push	de
		exx
		push	bc
		push	bc
		push	bc
		ld	hl,#FE07
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller73	push	bc
		ld	hl,#C0FF
		push	hl
		push	bc
		push	bc
		push	bc
		exx
		push	hl
		exx
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		exx
		push	bc
		exx
		exx
		push	de
		exx
		push	bc
		push	bc
		push	bc
		ld	hl,#FF03
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller74	push	bc
		ld	hl,#80FF
		push	hl
		ld	hl,#0100
		push	hl
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		ld	hl,#0F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00F0
		push	hl
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		ld	hl,#0080
		push	hl
		ld	hl,#FF01
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller75	push	bc
		exx
		push	hl
		exx
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		ld	hl,#0F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00F0
		push	hl
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		exx
		push	bc
		exx
		exx
		push	de
		exx
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller76	push	bc
		ld	hl,#00FC
		push	hl
		ld	hl,#0F00
		push	hl
		push	bc
		push	bc
		push	iy
		push	ix
		push	bc
		push	bc
		push	iy
		push	ix
		push	bc
		push	bc
		ld	hl,#00F0
		push	hl
		ld	hl,#3F00
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller77	push	bc
		ld	hl,#00F0
		push	hl
		push	ix
		push	bc
		push	bc
		push	iy
		push	ix
		push	bc
		push	bc
		push	iy
		push	ix
		push	bc
		push	bc
		push	iy
		ld	hl,#0F00
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller78	push	bc
		exx
		push	bc
		exx
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00F0
		push	hl
		push	ix
		push	bc
		push	bc
		push	iy
		ld	hl,#0F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller79	push	bc
		ld	hl,#00C0
		push	hl
		ld	h,d
		ld	l,c
		push	hl
		push	bc
		push	bc
		ld	hl,#00F0
		push	hl
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		ld	hl,#0F00
		push	hl
		push	bc
		push	bc
		ld	h,b
		ld	l,e
		push	hl
		ld	hl,#0300
		push	hl
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller7A	push	bc
		push	bc
		ld	hl,#FF01
		push	hl
		push	bc
		push	bc
		exx
		push	bc
		exx
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		ld	hl,#80FF
		push	hl
		push	bc
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

RotFiller7B	push	bc
		push	bc
		ld	hl,#FE03
		push	hl
		push	bc
		push	bc
		exx
		push	bc
		exx
		ld	hl,#3F00
		push	hl
		push	bc
		push	bc
		ld	hl,#00FC
		push	hl
		ex	af,af'
		push	af
		ex	af,af'
		push	bc
		push	bc
		ld	hl,#C07F
		push	hl
		push	bc
		push	bc
		inc	a
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

		; Diplay list contains filler address, source scanline address and destination scanline address.

CellDispListA1	dw	CellRenderTwo, #429F, #409F, #449F, #429F
		dw	CellRenderTwo, #469F, #449F, #40BF, #469F
		dw	CellRenderTwo, #42BF, #40BF, #44BF, #42BF
		dw	CellRenderTwo, #46BF, #44BF, #40DF, #46BF
		dw	CellRenderTwo, #42DF, #40DF, #44DF, #42DF
		dw	CellRenderTwo, #46DF, #44DF, #40FF, #46DF
		dw	CellRenderTwo, #42FF, #40FF, #44FF, #42FF
		dw	CellRenderTwo, #46FF, #44FF, #481F, #46FF
		dw	CellRenderTwo, #4A1F, #481F, #4C1F, #4A1F
		dw	CellRenderTwo, #4E1F, #4C1F, #483F, #4E1F
		dw	CellRenderTwo, #4A3F, #483F, #4C3F, #4A3F
		dw	CellRenderTwo, #4E3F, #4C3F, #485F, #4E3F
		dw	CellRenderTwo, #4A5F, #485F, #4C5F, #4A5F
		dw	CellRenderTwo, #4E5F, #4C5F, #487F, #4E5F
		dw	CellRenderTwo, #4A7F, #487F, #4C7F, #4A7F
		dw	CellRenderTwo, #4E7F, #4C7F, #489F, #4E7F
		dw	CellRenderTwo, #4A9F, #489F, #4C9F, #4A9F
		dw	CellRenderTwo, #4E9F, #4C9F, #48BF, #4E9F
		dw	CellRenderTwo, #4ABF, #48BF, #4CBF, #4ABF
		dw	CellRenderTwo, #4EBF, #4CBF, #48DF, #4EBF
		dw	CellRenderTwo, #4ADF, #48DF, #4CDF, #4ADF
		dw	CellRenderTwo, #4EDF, #4CDF, #48FF, #4EDF
		dw	CellRetHook1

CellDispListA2	dw	CellRenderTwo, #4AFF, #48FF, #4CFF, #4AFF
		dw	CellRenderTwo, #4EFF, #4CFF, #501F, #4EFF
		dw	CellRenderTwo, #521F, #501F, #541F, #521F
		dw	CellRenderTwo, #561F, #541F, #503F, #561F
		dw	CellRenderTwo, #523F, #503F, #543F, #523F
		dw	CellRenderTwo, #563F, #543F, #505F, #563F
		dw	CellRenderTwo, #525F, #505F, #545F, #525F
		dw	CellRenderTwo, #565F, #545F, #507F, #565F
		dw	CellRenderTwo, #527F, #507F, #547F, #527F
		dw	CellRenderTwo, #567F, #547F, #409F, #567F
		dw	CellRetHook2

CellDispListB1	dw	CellRenderTwo, #439F, #419F, #459F, #439F
		dw	CellRenderTwo, #479F, #459F, #41BF, #479F
		dw	CellRenderTwo, #43BF, #41BF, #45BF, #43BF
		dw	CellRenderTwo, #47BF, #45BF, #41DF, #47BF
		dw	CellRenderTwo, #43DF, #41DF, #45DF, #43DF
		dw	CellRenderTwo, #47DF, #45DF, #41FF, #47DF
		dw	CellRenderTwo, #43FF, #41FF, #45FF, #43FF
		dw	CellRenderTwo, #47FF, #45FF, #491F, #47FF
		dw	CellRenderTwo, #4B1F, #491F, #4D1F, #4B1F
		dw	CellRenderTwo, #4F1F, #4D1F, #493F, #4F1F
		dw	CellRenderTwo, #4B3F, #493F, #4D3F, #4B3F
		dw	CellRenderTwo, #4F3F, #4D3F, #495F, #4F3F
		dw	CellRenderTwo, #4B5F, #495F, #4D5F, #4B5F
		dw	CellRenderTwo, #4F5F, #4D5F, #497F, #4F5F
		dw	CellRenderTwo, #4B7F, #497F, #4D7F, #4B7F
		dw	CellRenderTwo, #4F7F, #4D7F, #499F, #4F7F
		dw	CellRenderTwo, #4B9F, #499F, #4D9F, #4B9F
		dw	CellRenderTwo, #4F9F, #4D9F, #49BF, #4F9F
		dw	CellRenderTwo, #4BBF, #49BF, #4DBF, #4BBF
		dw	CellRenderTwo, #4FBF, #4DBF, #49DF, #4FBF
		dw	CellRenderTwo, #4BDF, #49DF, #4DDF, #4BDF
		dw	CellRenderTwo, #4FDF, #4DDF, #49FF, #4FDF
		dw	CellRetHook1

CellDispListB2	dw	CellRenderTwo, #4BFF, #49FF, #4DFF, #4BFF
		dw	CellRenderTwo, #4FFF, #4DFF, #511F, #4FFF
		dw	CellRenderTwo, #531F, #511F, #551F, #531F
		dw	CellRenderTwo, #571F, #551F, #513F, #571F
		dw	CellRenderTwo, #533F, #513F, #553F, #533F
		dw	CellRenderTwo, #573F, #553F, #515F, #573F
		dw	CellRenderTwo, #535F, #515F, #555F, #535F
		dw	CellRenderTwo, #575F, #555F, #517F, #575F
		dw	CellRenderTwo, #537F, #517F, #557F, #537F
		dw	CellRenderTwo, #577F, #557F, #419F, #577F
		dw	CellRetHook2

		; H = Lookup table address.
		; (BC) must be non-zero to prevent underflow of H.

CellRenderTwo	pop	bc
		pop	de
		REPT	31
		ld	a,(bc)
		ld	l,a
		ldd
		ENDM
		ld	a,(bc)
		ld	l,a
		ld	a,(hl)
		ld	(de),a

CellRenderOne	pop	bc
		pop	de
		REPT	31
		ld	a,(bc)
		ld	l,a
		ldd
		ENDM
		ld	a,(bc)
		ld	l,a
		ld	a,(hl)
		ld	(de),a
		ret

		org	$ + ($ & 1)

SongChannelA	dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack0D
		dw	SongTrack0D
		dw	SongTrack0D
		dw	SongTrack0D
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack06
		dw	SongTrack07
		dw	SongTrack06
		dw	SongTrack07
		dw	SongTrack06
		dw	SongTrack07
		dw	SongTrack06
		dw	SongTrack07
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack03
		dw	SongTrack08
		dw	SongTrack09
		dw	SongTrack08
		dw	SongTrack09
		dw	SongTrack04
		dw	SongTrack04
		dw	SongTrack04
		dw	SongTrack04
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack01
		dw	0

SongChannelB	dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack02
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack01
		dw	SongTrack0B
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack06
		dw	SongTrack06
		dw	SongTrack06
		dw	SongTrack06
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack08
		dw	SongTrack09
		dw	SongTrack08
		dw	SongTrack09
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack10
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack11
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack00
		dw	SongTrack01
		dw	SongTrack0B
		dw	SongTrack01
		dw	0

SongChannelC	dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0C
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0C
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0A
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack05
		dw	SongTrack05
		dw	SongTrack05
		dw	SongTrack05
		dw	SongTrack0E
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0F
		dw	SongTrack0A
		dw	SongTrack0F
		dw	SongTrack0C
		dw	SongTrack0A
		dw	SongTrack0C
		dw	SongTrack05
		dw	SongTrack01
		dw	0

SongTrack00	db	#BE, #03, #BE, #1D, #B2, #0F, #7F, #BE, #03, #7F, #B9, #0F, #7F, #7F, #7F, #B9, #0F, #7F, #C2, #0F, #7F, #BA, #0F, #7F, #BE, #03, #BE, #1D, #BA, #0F, #7F, #C2, #03, #7F, #B0, #0F, #7F, #B2, #0F, #7F, #C2, #1F, #7F, #7F, #7F, #DD, #13, #7F, 0
SongTrack01	db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, 0
SongTrack02	db	#C5, #19, #7F, #7F, #7F, #C8, #19, #7F, #CA, #19, #7F, #DA, #13, #7F, #C5, #19, #7F, #CB, #19, #7F, #CB, #19, #7F, #C5, #19, #7F, #7F, #7F, #C8, #19, #7F, #CA, #19, #7F, #DA, #13, #7F, #C5, #19, #7F, #CB, #19, #7F, #CB, #19, #7F, 0
SongTrack03	db	#AD, #35, #00, #00, #AA, #15, #AD, #15, #7F, #AD, #15, #AA, #15, #AD, #15, #AE, #15, #7F, #7F, #B3, #17, #BA, #17, #B9, #17, #7F, #7F, #7F, #AD, #35, #00, #00, #AA, #15, #AD, #15, #7F, #AA, #15, #AD, #15, #AA, #15, #AE, #15, #7F, #7F, #B3, #17, #B3, #17, #B9, #17, #BA, #17, #7F, #7F, 0
SongTrack04	db	#AD, #35, #00, #00, #AA, #15, #AD, #15, #7F, #AD, #15, #AA, #15, #AD, #15, #AE, #15, #7F, #7F, #B3, #17, #BA, #17, #B9, #17, #7F, #7F, #7F, #AD, #35, #00, #00, #AA, #15, #AD, #15, #7F, #AA, #15, #AD, #15, #AA, #15, #AE, #15, #7F, #7F, #B6, #17, #BC, #17, #BF, #17, #7F, #C2, #17, #7F, 0
SongTrack05	db	#CA, #CD, #38, #0E, #7F, #AA, #CB, #1C, #0C, #7F, #CE, #CD, #38, #0E, #7F, #8E, #0B, #7F, #A7, #CB, #15, #0C, #7F, #8C, #4B, #0E, #7F, #95, #8B, #1C, #7F, #C8, #8D, #38, #7F, #CA, #0D, #7F, #AA, #CB, #1C, #0C, #7F, #CE, #CD, #38, #0E, #7F, #8E, #0B, #7F, #98, #8B, #15, #7F, #AE, #4B, #0C, #7F, #96, #4B, #0E, #7F, #A7, #CB, #16, #0C, #7F, 0
SongTrack06	db	#B2, #31, #00, #00, #B6, #11, #7F, #B9, #11, #C2, #1F, #7F, #B6, #11, #7F, #BA, #11, #7F, #BA, #11, #7F, #B9, #11, #7F, #B9, #11, #7F, #B0, #11, #B2, #11, #7F, #B9, #11, #C5, #1F, #7F, #DD, #13, #7F, #C3, #1F, #7F, #C6, #1F, #7F, #B2, #2F, #EB, #FF, #7F, #B2, #0F, #7F, 0
SongTrack07	db	#B2, #31, #00, #00, #B9, #11, #7F, #BC, #11, #C5, #1F, #7F, #B9, #11, #7F, #BF, #11, #7F, #BF, #11, #7F, #BE, #11, #7F, #BE, #11, #7F, #B9, #11, #BC, #11, #7F, #BE, #11, #C5, #1F, #7F, #DD, #13, #7F, #C3, #1F, #7F, #C6, #1F, #7F, #B2, #2F, #EB, #FF, #7F, #B2, #0F, #7F, 0
SongTrack08	db	#AA, #1B, #AE, #1B, #7F, #AD, #1B, #B6, #03, #BA, #03, #A6, #1B, #AE, #1B, #7F, #BC, #1F, #7F, #BF, #1B, #BE, #1B, #C2, #1F, #7F, #BF, #1B, #A6, #1B, #AE, #1B, #7F, #AD, #1B, #B6, #03, #BA, #03, #A6, #1B, #AA, #1B, #7F, #B9, #1F, #7F, #BC, #1B, #BE, #1B, #C2, #1F, #7F, #BF, #1B, 0
SongTrack09	db	#AA, #1B, #AE, #1B, #7F, #AD, #1B, #B6, #03, #BA, #03, #AA, #1B, #AE, #1B, #7F, #BC, #1F, #7F, #BF, #1B, #BE, #1B, #C2, #1F, #7F, #BF, #1B, #A6, #1B, #AE, #1B, #7F, #AD, #1B, #B6, #03, #BA, #03, #A6, #1B, #AA, #1B, #7F, #B6, #1F, #7F, #BC, #1B, #BF, #1B, #7F, #C2, #1B, #7F, 0
SongTrack0A	db	#CA, #CD, #38, #0E, #7F, #7F, #CA, #0B, #CB, #0D, #7F, #CA, #0D, #7F, #CA, #0D, #7F, #C5, #0D, #7F, #C8, #CD, #E0, #0C, #7F, #CB, #0D, #7F, 0
SongTrack0B	db	#7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #B2, #2F, #EB, #FF, #7F, #B2, #0F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #AD, #25, #00, #00, #DA, #07, #9A, #21, #C0, #01, #7F, #AD, #25, #00, #00, #7F, 0
SongTrack0C	db	#CA, #CD, #38, #0E, #7F, #7F, #CA, #0B, #CB, #0D, #7F, #CA, #0D, #7F, #CA, #0D, #7F, #C5, #0D, #7F, #C8, #CD, #D2, #0C, #7F, #CB, #0D, #7F, 0
SongTrack0D	db	#BE, #03, #BE, #1D, #7F, #7F, #BE, #03, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #B2, #2F, #EB, #FF, #7F, #B2, #0F, #7F, #7F, #7F, #7F, #7F, #7F, #7F, #B3, #37, #00, #00, #BA, #17, #B9, #17, #7F, #7F, #7F, 0
SongTrack0E	db	#CA, #CD, #38, #0E, #7F, #AA, #CB, #1C, #0C, #7F, #CE, #CD, #38, #0E, #7F, #8E, #0B, #7F, #A7, #CB, #15, #0C, #7F, #8C, #4B, #0E, #7F, #95, #8B, #1C, #7F, #CE, #8D, #38, #7F, #CA, #0D, #7F, #AA, #CB, #1C, #0C, #7F, #CE, #CD, #38, #0E, #7F, #8E, #0B, #7F, #98, #8B, #15, #7F, #A7, #4B, #0C, #7F, #96, #4B, #0E, #7F, #8F, #CB, #2A, #0C, #7F, 0
SongTrack0F	db	#CA, #CD, #38, #0E, #7F, #7F, #CA, #0B, #CB, #0D, #7F, #CA, #CD, #70, #0C, #7F, #CA, #0D, #7F, #C5, #0D, #7F, #C8, #CD, #E0, #0C, #7F, #CB, #0D, #7F, 0
SongTrack10	db	#9A, #21, #C0, #01, #A1, #3D, #00, #00, #DA, #09, #9A, #21, #C0, #01, #AD, #25, #00, #00, #A1, #1D, #A6, #1D, #AA, #0B, #DD, #09, #7F, #DA, #07, #9A, #21, #C0, #01, #AD, #25, #00, #00, #7F, #9E, #1D, #A1, #1D, #9A, #21, #C0, #01, #A1, #3D, #00, #00, #DA, #09, #9A, #21, #C0, #01, #AD, #25, #00, #00, #9E, #1D, #A1, #1D, #A6, #0B, #DA, #07, #9A, #21, #C0, #01, #AD, #25, #00, #00, #7F, #DD, #09, #9A, #21, #C0, #01, #AD, #25, #00, #00, #DD, #09, 0
SongTrack11	db	#9A, #21, #C0, #01, #9E, #3D, #00, #00, #A1, #1D, #A6, #1D, #AD, #05, #A6, #1D, #9A, #21, #C0, #01, #7F, #7F, #DA, #27, #00, #00, #AD, #05, #7F, #DD, #09, #7F, #DA, #07, #7F, #9A, #21, #C0, #01, #9E, #3D, #00, #00, #A1, #1D, #A6, #1D, #AD, #05, #7F, #C5, #03, #C6, #03, #BE, #03, #C2, #03, #C6, #03, #C5, #03, #DA, #07, #7F, #DD, #09, #7F, 0

		org	#FD00

		; Fade-in flicker based on 2.2 gamma curve and sawtooth /|/|/|/| dithering threshold.
		; The first sample starts at offset 96.

TelFadeInTab	db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00
		db	#FF, #00, #00, #00, #00, #00, #00, #00, #00, #00, #FF, #00, #00, #00, #00, #00
		db	#00, #00, #00, #00, #FF, #00, #00, #00, #00, #00, #00, #00, #00, #00, #FF, #00
		db	#00, #00, #00, #00, #00, #00, #00, #00, #FF, #00, #00, #00, #00, #00, #00, #00
		db	#00, #00, #FF, #00, #00, #00, #00, #00, #00, #00, #00, #00, #FF, #FF, #00, #00
		db	#00, #00, #00, #00, #00, #00, #FF, #FF, #00, #00, #00, #00, #00, #00, #00, #00
		db	#FF, #FF, #FF, #00, #00, #00, #00, #00, #00, #00, #FF, #FF, #FF, #00, #00, #00
		db	#00, #00, #00, #00, #FF, #FF, #FF, #FF, #00, #00, #00, #00, #00, #00, #FF, #FF
		db	#FF, #FF, #FF, #00, #00, #00, #00, #00, #FF, #FF, #FF, #FF, #FF, #FF, #00, #00
		db	#00, #00, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #00, #00, #00, #FF, #FF, #FF, #FF
		db	#FF, #FF, #FF, #FF, #00, #00, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF, #FF

		org	#FE00

		; Filler addresses (higher byte).

		db	RotFiller00 / 256, RotFiller01 / 256, RotFiller02 / 256, RotFiller03 / 256
		db	RotFiller04 / 256, RotFiller05 / 256, RotFiller06 / 256, RotFiller07 / 256
		db	RotFiller08 / 256, RotFiller09 / 256, RotFiller0A / 256, RotFiller0B / 256
		db	RotFiller0C / 256, RotFiller0D / 256, RotFiller0E / 256, RotFiller0F / 256
		db	RotFiller10 / 256, RotFiller11 / 256, RotFiller12 / 256, RotFiller13 / 256
		db	RotFiller14 / 256, RotFiller15 / 256, RotFiller16 / 256, RotFiller17 / 256
		db	RotFiller18 / 256, RotFiller19 / 256, RotFiller1A / 256, RotFiller1B / 256
		db	RotFiller1C / 256, RotFiller1D / 256, RotFiller1E / 256, RotFiller1F / 256
		db	RotFiller20 / 256, RotFiller21 / 256, RotFiller22 / 256, RotFiller23 / 256
		db	RotFiller24 / 256, RotFiller25 / 256, RotFiller26 / 256, RotFiller27 / 256
		db	RotFiller28 / 256, RotFiller29 / 256, RotFiller2A / 256, RotFiller2B / 256
		db	RotFiller2C / 256, RotFiller2D / 256, RotFiller2E / 256, RotFiller2F / 256
		db	RotFiller30 / 256, RotFiller31 / 256, RotFiller32 / 256, RotFiller33 / 256
		db	RotFiller34 / 256, RotFiller35 / 256, RotFiller36 / 256, RotFiller37 / 256
		db	RotFiller38 / 256, RotFiller39 / 256, RotFiller3A / 256, RotFiller3B / 256
		db	RotFiller3C / 256, RotFiller3D / 256, RotFiller3E / 256, RotFiller3F / 256
		db	RotFiller40 / 256, RotFiller41 / 256, RotFiller42 / 256, RotFiller43 / 256
		db	RotFiller44 / 256, RotFiller45 / 256, RotFiller46 / 256, RotFiller47 / 256
		db	RotFiller48 / 256, RotFiller49 / 256, RotFiller4A / 256, RotFiller4B / 256
		db	RotFiller4C / 256, RotFiller4D / 256, RotFiller4E / 256, RotFiller4F / 256
		db	RotFiller50 / 256, RotFiller51 / 256, RotFiller52 / 256, RotFiller53 / 256
		db	RotFiller54 / 256, RotFiller55 / 256, RotFiller56 / 256, RotFiller57 / 256
		db	RotFiller58 / 256, RotFiller59 / 256, RotFiller5A / 256, RotFiller5B / 256
		db	RotFiller5C / 256, RotFiller5D / 256, RotFiller5E / 256, RotFiller5F / 256
		db	RotFiller60 / 256, RotFiller61 / 256, RotFiller62 / 256, RotFiller63 / 256
		db	RotFiller64 / 256, RotFiller65 / 256, RotFiller66 / 256, RotFiller67 / 256
		db	RotFiller68 / 256, RotFiller69 / 256, RotFiller6A / 256, RotFiller6B / 256
		db	RotFiller6C / 256, RotFiller6D / 256, RotFiller6E / 256, RotFiller6F / 256
		db	RotFiller70 / 256, RotFiller71 / 256, RotFiller72 / 256, RotFiller73 / 256
		db	RotFiller74 / 256, RotFiller75 / 256, RotFiller76 / 256, RotFiller77 / 256
		db	RotFiller78 / 256, RotFiller79 / 256, RotFiller7A / 256, RotFiller7B / 256
		db	RotFiller7C / 256, RotFiller7D / 256, RotFiller7E / 256, RotFiller7F / 256
		db	RotFiller80 / 256, RotFiller81 / 256

		; Empty line filler uses the empty space between aligned lookup tables.

RotFiller80	push	bc
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
		ld	h,d
		ld	l,a
		ld	l,(hl)
		ld	e,(hl)
		dec	h
		ld	h,(hl)
		ld	l,e
		ld	e,d
		jp	(hl)

		; Return hooks.

RotFiller81	jp	0
CellRetHook1	jp	(ix)
CellRetHook2	jp	(iy)

		; Stripe colors.

SysBrightRed	equ	%0111101001111010
SysBrightCyan	equ	%0100010101000101
SysCyan		equ	%0011110100111101
SysBlack	equ	%0111100001111000

		; Stripe definitions (relative vertical position, color, PUSH opcode).

SysStripes	db	0 + 1, SysCyan, #D5
		db	2 + 1, SysCyan, #D5
		db	4 + 1, SysCyan, #D5
		db	6 + 1, SysBrightRed, #C5

		db	12 + 1, SysCyan, #D5
		db	14 + 1, SysCyan, #D5
		db	16 + 1, SysBrightRed, #C5

		db	24 + 1, SysCyan, #D5
		db	26 + 1, SysBrightRed, #C5

SysNoStripes	db	0 + 1, SysBrightRed, #C5
		db	2 + 1, SysBrightRed, #C5
		db	4 + 1, SysBrightRed, #C5
		db	6 + 1, SysBrightRed, #C5

		db	12 + 1, SysBrightRed, #C5
		db	14 + 1, SysBrightRed, #C5
		db	16 + 1, SysBrightRed, #C5

		db	24 + 1, SysBrightRed, #C5
		db	26 + 1, SysBrightRed, #C5

		org	#FF00

		; Filler addresses (lower byte).

		db	RotFiller00 % 256, RotFiller01 % 256, RotFiller02 % 256, RotFiller03 % 256
		db	RotFiller04 % 256, RotFiller05 % 256, RotFiller06 % 256, RotFiller07 % 256
		db	RotFiller08 % 256, RotFiller09 % 256, RotFiller0A % 256, RotFiller0B % 256
		db	RotFiller0C % 256, RotFiller0D % 256, RotFiller0E % 256, RotFiller0F % 256
		db	RotFiller10 % 256, RotFiller11 % 256, RotFiller12 % 256, RotFiller13 % 256
		db	RotFiller14 % 256, RotFiller15 % 256, RotFiller16 % 256, RotFiller17 % 256
		db	RotFiller18 % 256, RotFiller19 % 256, RotFiller1A % 256, RotFiller1B % 256
		db	RotFiller1C % 256, RotFiller1D % 256, RotFiller1E % 256, RotFiller1F % 256
		db	RotFiller20 % 256, RotFiller21 % 256, RotFiller22 % 256, RotFiller23 % 256
		db	RotFiller24 % 256, RotFiller25 % 256, RotFiller26 % 256, RotFiller27 % 256
		db	RotFiller28 % 256, RotFiller29 % 256, RotFiller2A % 256, RotFiller2B % 256
		db	RotFiller2C % 256, RotFiller2D % 256, RotFiller2E % 256, RotFiller2F % 256
		db	RotFiller30 % 256, RotFiller31 % 256, RotFiller32 % 256, RotFiller33 % 256
		db	RotFiller34 % 256, RotFiller35 % 256, RotFiller36 % 256, RotFiller37 % 256
		db	RotFiller38 % 256, RotFiller39 % 256, RotFiller3A % 256, RotFiller3B % 256
		db	RotFiller3C % 256, RotFiller3D % 256, RotFiller3E % 256, RotFiller3F % 256
		db	RotFiller40 % 256, RotFiller41 % 256, RotFiller42 % 256, RotFiller43 % 256
		db	RotFiller44 % 256, RotFiller45 % 256, RotFiller46 % 256, RotFiller47 % 256
		db	RotFiller48 % 256, RotFiller49 % 256, RotFiller4A % 256, RotFiller4B % 256
		db	RotFiller4C % 256, RotFiller4D % 256, RotFiller4E % 256, RotFiller4F % 256
		db	RotFiller50 % 256, RotFiller51 % 256, RotFiller52 % 256, RotFiller53 % 256
		db	RotFiller54 % 256, RotFiller55 % 256, RotFiller56 % 256, RotFiller57 % 256
		db	RotFiller58 % 256, RotFiller59 % 256, RotFiller5A % 256, RotFiller5B % 256
		db	RotFiller5C % 256, RotFiller5D % 256, RotFiller5E % 256, RotFiller5F % 256
		db	RotFiller60 % 256, RotFiller61 % 256, RotFiller62 % 256, RotFiller63 % 256
		db	RotFiller64 % 256, RotFiller65 % 256, RotFiller66 % 256, RotFiller67 % 256
		db	RotFiller68 % 256, RotFiller69 % 256, RotFiller6A % 256, RotFiller6B % 256
		db	RotFiller6C % 256, RotFiller6D % 256, RotFiller6E % 256, RotFiller6F % 256
		db	RotFiller70 % 256, RotFiller71 % 256, RotFiller72 % 256, RotFiller73 % 256
		db	RotFiller74 % 256, RotFiller75 % 256, RotFiller76 % 256, RotFiller77 % 256
		db	RotFiller78 % 256, RotFiller79 % 256, RotFiller7A % 256, RotFiller7B % 256
		db	RotFiller7C % 256, RotFiller7D % 256, RotFiller7E % 256, RotFiller7F % 256
		db	RotFiller80 % 256, RotFiller81 % 256
