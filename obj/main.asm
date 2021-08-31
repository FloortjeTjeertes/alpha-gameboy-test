;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12439 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _MakeSprite
	.globl _MoveSprite
	.globl _sound
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _delay
	.globl _spritesize
	.globl _alpha
	.globl _Chibi_babies2_data
	.globl _devil_map
	.globl _devil_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_alpha::
	.ds 34
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_spritesize::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:21: void sound(){
;	---------------------------------
; Function sound
; ---------------------------------
_sound::
;src/main.c:23: NR52_REG = 0x80; 
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;src/main.c:24: NR50_REG = 0x77; 
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;src/main.c:25: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;src/main.c:28: NR10_REG = 0x16;
	ld	a, #0x16
	ldh	(_NR10_REG + 0), a
;src/main.c:29: NR11_REG = 0x40;
	ld	a, #0x40
	ldh	(_NR11_REG + 0), a
;src/main.c:30: NR12_REG = 0x73; 
	ld	a, #0x73
	ldh	(_NR12_REG + 0), a
;src/main.c:31: NR13_REG = 0x00;   
	xor	a, a
	ldh	(_NR13_REG + 0), a
;src/main.c:32: NR14_REG = 0xC3;
	ld	a, #0xc3
	ldh	(_NR14_REG + 0), a
;src/main.c:33: }
	ret
_devil_data:
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xe7	; 231
	.db #0x18	; 24
	.db #0xa7	; 167
	.db #0x58	; 88	'X'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x30	; 48	'0'
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xf7	; 247
	.db #0x08	; 8
	.db #0xf7	; 247
	.db #0x08	; 8
	.db #0xc7	; 199
	.db #0x38	; 56	'8'
	.db #0xdb	; 219
	.db #0x24	; 36
	.db #0x4a	; 74	'J'
	.db #0xb4	; 180
	.db #0xde	; 222
	.db #0x20	; 32
	.db #0xce	; 206
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x80	; 128
	.db #0x8d	; 141
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x39	; 57	'9'
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe1	; 225
	.db #0x1e	; 30
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xbb	; 187
	.db #0x44	; 68	'D'
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xaf	; 175
	.db #0x41	; 65	'A'
	.db #0x87	; 135
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xf6	; 246
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x04	; 4
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xe6	; 230
	.db #0x19	; 25
	.db #0x7a	; 122	'z'
	.db #0x01	; 1
	.db #0x7c	; 124
	.db #0x03	; 3
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x17	; 23
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xf7	; 247
	.db #0x08	; 8
	.db #0x5b	; 91
	.db #0xa4	; 164
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xbd	; 189
	.db #0x42	; 66	'B'
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xec	; 236
	.db #0x1f	; 31
	.db #0x84	; 132
	.db #0x7f	; 127
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xfd	; 253
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x2c	; 44
	.db #0x18	; 24
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf4	; 244
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0xc7	; 199
	.db #0x1b	; 27
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x60	; 96
	.db #0xf7	; 247
	.db #0x78	; 120	'x'
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0x0e	; 14
	.db #0xf7	; 247
	.db #0x18	; 24
	.db #0xc1	; 193
	.db #0x30	; 48	'0'
	.db #0xa8	; 168
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xa7	; 167
	.db #0x5f	; 95
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xef	; 239
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x8f	; 143
	.db #0xdc	; 220
	.db #0x3f	; 63
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x0e	; 14
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xbf	; 191
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xf9	; 249
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xdf	; 223
	.db #0x60	; 96
	.db #0x7b	; 123
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x8f	; 143
	.db #0xf7	; 247
	.db #0x0f	; 15
	.db #0xf7	; 247
	.db #0x0f	; 15
	.db #0xf7	; 247
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfd	; 253
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xff	; 255
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x5f	; 95
	.db #0x3f	; 63
	.db #0x5f	; 95
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x37	; 55	'7'
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xf3	; 243
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0x69	; 105	'i'
	.db #0x9e	; 158
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0x97	; 151
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x01	; 1
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x87	; 135
	.db #0x0f	; 15
	.db #0xf7	; 247
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xf6	; 246
	.db #0xee	; 238
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0xee	; 238
	.db #0x1e	; 30
	.db #0xee	; 238
	.db #0x0b	; 11
	.db #0xf6	; 246
	.db #0x05	; 5
	.db #0xfa	; 250
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x87	; 135
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x97	; 151
	.db #0x5f	; 95
	.db #0x87	; 135
	.db #0x1b	; 27
	.db #0xc7	; 199
	.db #0x03	; 3
	.db #0xef	; 239
	.db #0x17	; 23
	.db #0xeb	; 235
	.db #0x07	; 7
	.db #0xfb	; 251
	.db #0x0f	; 15
	.db #0xfb	; 251
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xfe	; 254
	.db #0x3f	; 63
	.db #0x7e	; 126
	.db #0xbf	; 191
	.db #0x24	; 36
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0x7e	; 126
	.db #0x80	; 128
	.db #0xe1	; 225
	.db #0x10	; 16
	.db #0x74	; 116	't'
	.db #0xe0	; 224
	.db #0x79	; 121	'y'
	.db #0xf0	; 240
	.db #0x1e	; 30
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0x3d	; 61
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0xcb	; 203
	.db #0x04	; 4
	.db #0x37	; 55	'7'
	.db #0x08	; 8
	.db #0x83	; 131
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x41	; 65	'A'
	.db #0x80	; 128
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xf0	; 240
	.db #0x77	; 119	'w'
	.db #0x87	; 135
	.db #0x47	; 71	'G'
	.db #0x87	; 135
	.db #0x27	; 39
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfd	; 253
	.db #0xe1	; 225
	.db #0xfe	; 254
	.db #0x67	; 103	'g'
	.db #0x98	; 152
	.db #0x2f	; 47
	.db #0xf0	; 240
	.db #0xe7	; 231
	.db #0xf8	; 248
	.db #0xe7	; 231
	.db #0xf8	; 248
	.db #0xc3	; 195
	.db #0xfc	; 252
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xdf	; 223
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xaf	; 175
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xf9	; 249
	.db #0x06	; 6
	.db #0xf0	; 240
	.db #0x0e	; 14
	.db #0xe2	; 226
	.db #0x1c	; 28
	.db #0xe2	; 226
	.db #0x1c	; 28
	.db #0xc2	; 194
	.db #0x3c	; 60
	.db #0xc6	; 198
	.db #0x3c	; 60
	.db #0xfe	; 254
	.db #0x3c	; 60
	.db #0xbe	; 190
	.db #0x7c	; 124
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x77	; 119	'w'
	.db #0x4f	; 79	'O'
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xd4	; 212
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0xc0	; 192
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0xe7	; 231
	.db #0x0f	; 15
	.db #0xf7	; 247
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc1	; 193
	.db #0xfe	; 254
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0x60	; 96
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x70	; 112	'p'
	.db #0x8f	; 143
	.db #0x38	; 56	'8'
	.db #0xc7	; 199
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xe2	; 226
	.db #0x1c	; 28
	.db #0x7a	; 122	'z'
	.db #0x84	; 132
	.db #0x3e	; 62
	.db #0xc0	; 192
	.db #0x06	; 6
	.db #0xf8	; 248
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbe	; 190
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x30	; 48	'0'
	.db #0x7f	; 127
	.db #0xfc	; 252
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1c	; 28
	.db #0xe3	; 227
	.db #0x0c	; 12
	.db #0xf3	; 243
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xf3	; 243
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf4	; 244
	.db #0x0f	; 15
	.db #0xf1	; 241
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x3e	; 62
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x88	; 136
	.db #0x7f	; 127
	.db #0x70	; 112	'p'
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xcc	; 204
	.db #0x3c	; 60
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0xbc	; 188
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x64	; 100	'd'
	.db #0xff	; 255
	.db #0xc4	; 196
	.db #0x3b	; 59
	.db #0xc2	; 194
	.db #0x31	; 49	'1'
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x83	; 131
	.db #0x67	; 103	'g'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xf0	; 240
	.db #0x4f	; 79	'O'
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x27	; 39
	.db #0xf8	; 248
	.db #0x27	; 39
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x88	; 136
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0x36	; 54	'6'
	.db #0xcf	; 207
	.db #0x59	; 89	'Y'
	.db #0xe6	; 230
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0xce	; 206
	.db #0x30	; 48	'0'
	.db #0x1c	; 28
	.db #0x0f	; 15
	.db #0x13	; 19
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x43	; 67	'C'
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x70	; 112	'p'
	.db #0x13	; 19
	.db #0x80	; 128
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x3f	; 63
	.db #0xa0	; 160
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0xe1	; 225
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0x02	; 2
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xf9	; 249
	.db #0x06	; 6
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xf9	; 249
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x6c	; 108	'l'
	.db #0xf3	; 243
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x7f	; 127
	.db #0xb0	; 176
	.db #0x7f	; 127
	.db #0x98	; 152
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc1	; 193
	.db #0x3f	; 63
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0x3a	; 58
	.db #0xc7	; 199
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0x07	; 7
	.db #0xb7	; 183
	.db #0x4f	; 79	'O'
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0xe7	; 231
	.db #0xf8	; 248
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xd8	; 216
	.db #0xe7	; 231
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0xbf	; 191
	.db #0x40	; 64
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xbe	; 190
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0xe7	; 231
	.db #0x8c	; 140
	.db #0x73	; 115	's'
	.db #0x17	; 23
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xcc	; 204
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x8f	; 143
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0x13	; 19
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0xd0	; 208
	.db #0x16	; 22
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x79	; 121	'y'
	.db #0xff	; 255
	.db #0x13	; 19
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x70	; 112	'p'
	.db #0x8f	; 143
	.db #0x78	; 120	'x'
	.db #0x87	; 135
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0xde	; 222
	.db #0x21	; 33
	.db #0x9e	; 158
	.db #0x01	; 1
	.db #0x84	; 132
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0x38	; 56	'8'
	.db #0xff	; 255
	.db #0x1c	; 28
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0x7b	; 123
	.db #0xfc	; 252
	.db #0x77	; 119	'w'
	.db #0xf8	; 248
	.db #0x6f	; 111	'o'
	.db #0xf0	; 240
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7c	; 124
	.db #0xff	; 255
	.db #0xa0	; 160
	.db #0x7f	; 127
	.db #0xe7	; 231
	.db #0x18	; 24
	.db #0xfb	; 251
	.db #0x04	; 4
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0x70	; 112	'p'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xeb	; 235
	.db #0x17	; 23
	.db #0x67	; 103	'g'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x41	; 65	'A'
	.db #0xbf	; 191
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xf3	; 243
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xc4	; 196
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x07	; 7
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xf9	; 249
	.db #0xfe	; 254
	.db #0x6c	; 108	'l'
	.db #0xf0	; 240
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
_devil_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x1e	; 30
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_Chibi_babies2_data:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x1e	; 30
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x5f	; 95
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x77	; 119	'w'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x07	; 7
	.db #0xb9	; 185
	.db #0xe1	; 225
	.db #0x41	; 65	'A'
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc8	; 200
	.db #0xd0	; 208
	.db #0xdc	; 220
	.db #0xc0	; 192
	.db #0xd8	; 216
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0x7c	; 124
	.db #0xfc	; 252
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x1e	; 30
	.db #0x47	; 71	'G'
	.db #0x07	; 7
	.db #0x5f	; 95
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x15	; 21
	.db #0x2e	; 46
	.db #0x17	; 23
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x0e	; 14
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc2	; 194
	.db #0xc0	; 192
	.db #0xe4	; 228
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0x7f	; 127
	.db #0xc7	; 199
	.db #0x77	; 119	'w'
	.db #0xe1	; 225
	.db #0x1d	; 29
	.db #0xf1	; 241
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x78	; 120	'x'
	.db #0xfa	; 250
	.db #0x78	; 120	'x'
	.db #0xfe	; 254
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0xf9	; 249
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0x06	; 6
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xf4	; 244
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xfb	; 251
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xf8	; 248
	.db #0x31	; 49	'1'
	.db #0x70	; 112	'p'
	.db #0x67	; 103	'g'
	.db #0x23	; 35
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xbc	; 188
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0xc4	; 196
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x7a	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x00	; 0
	.db #0x8e	; 142
	.db #0x00	; 0
	.db #0x9e	; 158
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xf6	; 246
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
;src/main.c:39: void MoveSprite(struct character* characterstruct,UINT8 x,UINT8 y){
;	---------------------------------
; Function MoveSprite
; ---------------------------------
_MoveSprite::
	add	sp, #-9
;src/main.c:43: move_sprite(characterstruct->spriteids[0],x,y);
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:44: move_sprite(characterstruct->spriteids[1],x+spritesize,y);
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), a
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:45: move_sprite(characterstruct->spriteids[2],x+spritesize*2,y);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	push	af
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(hl), a
	pop	af
	add	a, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), a
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:46: move_sprite(characterstruct->spriteids[3],x+spritesize*3,y);
;setupPair	HL
	ld	a, (#_spritesize)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#2
	add	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x0003
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl), a
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:47: move_sprite(characterstruct->spriteids[3],x+spritesize*4,y);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl+), a
	pop	af
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	(hl-), a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:50: move_sprite(characterstruct->spriteids[4],x,y+spritesize);
	ldhl	sp,	#0
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	e, a
	ld	hl, #0x0004
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, d
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(de), a
;src/main.c:51: move_sprite(characterstruct->spriteids[5],x+spritesize,y+spritesize*1);
;setupPair	HL
	ld	hl, #_spritesize
	ld	e, (hl)
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl+), a
	inc	hl
	add	a, e
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0005
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:52: move_sprite(characterstruct->spriteids[6],x+spritesize*2,y+spritesize*1);
;setupPair	HL
	ld	hl, #_spritesize
	ld	e, (hl)
	ldhl	sp,	#5
	ld	a, (hl+)
	inc	hl
	add	a, e
	ld	(hl), a
	ld	a, e
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0006
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:53: move_sprite(characterstruct->spriteids[7],x+spritesize*3,y+spritesize*1);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#8
	add	a, (hl)
	dec	hl
	ld	(hl+), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0007
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:54: move_sprite(characterstruct->spriteids[3],x+spritesize*4,y+spritesize*1);
;setupPair	HL
	ld	hl, #_spritesize
	ld	e, (hl)
	ldhl	sp,	#5
	ld	a, (hl+)
	add	a, e
	ld	(hl), a
	ld	a, e
	add	a, a
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl+), a
	pop	af
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	(hl-), a
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#6
	ld	a, (hl+)
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:57: move_sprite(characterstruct->spriteids[8],x,y+spritesize*2);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	ld	e, a
	ld	hl, #0x0008
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, d
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(de), a
;src/main.c:58: move_sprite(characterstruct->spriteids[9],x+spritesize,y+spritesize*2);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0009
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:59: move_sprite(characterstruct->spriteids[10],x+spritesize*2,y+spritesize*2);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	ld	e, a
	ldhl	sp,	#5
	ld	a, (hl+)
	inc	hl
	add	a, e
	ld	(hl), a
	ldhl	sp,	#2
	ld	a, (hl)
	add	a, e
	ld	d, a
	ld	hl, #0x000a
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:60: move_sprite(characterstruct->spriteids[11],x+spritesize*3,y+spritesize*2);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (hl)
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl+), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x000b
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:61: move_sprite(characterstruct->spriteids[12],x+spritesize*4,y+spritesize*2);
;setupPair	HL
	ld	hl, #_spritesize
	ld	e, (hl)
	ld	a, e
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ld	a, e
	add	a, a
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x000c
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:64: move_sprite(characterstruct->spriteids[13],x,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	ld	e, a
	ld	hl, #0x000d
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, d
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(de), a
;src/main.c:65: move_sprite(characterstruct->spriteids[14],x+spritesize,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	d, a
	ld	hl, #0x000e
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:66: move_sprite(characterstruct->spriteids[15],x+spritesize*2,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl+), a
	ld	a, (hl)
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x000f
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:67: move_sprite(characterstruct->spriteids[16],x+spritesize*3,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#8
	add	a, (hl)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#8
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0010
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:68: move_sprite(characterstruct->spriteids[17],x+spritesize*4,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl+), a
	ld	a, (hl)
	add	a, a
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0011
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:71: move_sprite(characterstruct->spriteids[3],x,y+spritesize*4);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#8
	ld	(hl), a
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl)
	ld	(de), a
	inc	de
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(de), a
;src/main.c:72: move_sprite(characterstruct->spriteids[18],x+spritesize,y+spritesize*4);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0012
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:73: move_sprite(characterstruct->spriteids[19],x+spritesize*2,y+spritesize*4);
;setupPair	HL
	ld	hl, #_spritesize
	ld	e, (hl)
	ld	a, e
	add	a, a
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ld	a, e
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0013
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:74: move_sprite(characterstruct->spriteids[20],x+spritesize*3,y+spritesize*4);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (hl)
	add	a, a
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl+), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#2
	add	a, (hl)
	ld	d, a
	ld	hl, #0x0014
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl), d
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:75: move_sprite(characterstruct->spriteids[3],x+spritesize*4,y+spritesize*4);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	add	a, a
	ld	e, a
	ldhl	sp,	#5
	ld	a, (hl+)
	inc	hl
	add	a, e
	ld	(hl), a
	ldhl	sp,	#2
	ld	a, (hl+)
	add	a, e
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ldhl	sp,	#10
	ld	(hl-), a
	dec	hl
	pop	af
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	(hl+), a
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	e, l
	ld	d, h
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ldhl	sp,	#7
	ld	a, (hl-)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/main.c:80: move_sprite(characterstruct->spriteids[21+0],x+spritesize+2,y+spritesize);
	ldhl	sp,	#0
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	e, a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x0015
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:81: move_sprite(characterstruct->spriteids[21+1],x+(spritesize*2)+2,y+spritesize);
	ldhl	sp,	#0
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	ld	e, a
;setupPair	HL
	ld	a, (hl)
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x0016
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:84: move_sprite(characterstruct->spriteids[21+3],x+spritesize+2,y+spritesize*2);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	ld	e, a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x0018
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:85: move_sprite(characterstruct->spriteids[21+4],x+(spritesize*2)+2,y+spritesize*2);
;setupPair	HL
	ld	a, (#_spritesize)
	add	a, a
	ld	d, a
	ldhl	sp,	#5
	ld	a, (hl)
	add	a, d
	ld	e, a
	ldhl	sp,	#2
	ld	a, (hl)
	add	a, d
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x0019
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:86: move_sprite(characterstruct->spriteids[21+5],x+(spritesize*4)+2,y+spritesize*2);
;setupPair	HL
	ld	hl, #_spritesize
	ld	d, (hl)
	ld	a, d
	add	a, a
	ldhl	sp,	#5
	add	a, (hl)
	ld	e, a
	ld	a, d
	add	a, a
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x001a
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:89: move_sprite(characterstruct->spriteids[21+6],x+spritesize+2,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	ld	e, a
	ldhl	sp,	#1
	ld	a, (hl)
;setupPair	HL
	ld	hl, #_spritesize
	add	a, (hl)
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x001b
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:91: move_sprite(characterstruct->spriteids[21+7],x+(spritesize*2)+2,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	ld	e, a
	ldhl	sp,	#8
	ld	a, (hl)
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	add	a, #0x02
	ldhl	sp,	#8
	ld	(hl), a
	ld	hl, #0x001c
	add	hl, bc
	ld	d, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, e
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
;src/main.c:92: move_sprite(characterstruct->spriteids[21+8],x+(spritesize*4)+2,y+spritesize*3);
;setupPair	HL
	ld	a, (#_spritesize)
	ldhl	sp,	#8
	ld	(hl), a
	ld	a, (hl)
	ld	e, a
	add	a, a
	add	a, e
	ldhl	sp,	#5
	add	a, (hl)
	ld	d, a
	ldhl	sp,	#8
	ld	a, (hl)
	add	a, a
	add	a, a
	ldhl	sp,	#2
	add	a, (hl)
	add	a, #0x02
	ld	e, a
	ld	hl, #0x001d
	add	hl, bc
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1247: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1248: itm->y=y, itm->x=x;
	ld	a, d
	ld	(hl+), a
	ld	(hl), e
;src/main.c:92: move_sprite(characterstruct->spriteids[21+8],x+(spritesize*4)+2,y+spritesize*3);
;src/main.c:95: }
	add	sp, #9
	ret
;src/main.c:99: void MakeSprite(){
;	---------------------------------
; Function MakeSprite
; ---------------------------------
_MakeSprite::
	dec	sp
;src/main.c:100: alpha.x=80;
	ld	hl, #(_alpha + 30)
	ld	(hl), #0x50
;src/main.c:101: alpha.y=80;
	ld	hl, #(_alpha + 31)
	ld	(hl), #0x50
;src/main.c:102: alpha.width=40;
	ld	hl, #(_alpha + 32)
	ld	(hl), #0x28
;src/main.c:103: alpha.height=40;
	ld	hl, #(_alpha + 33)
	ld	(hl), #0x28
;src/main.c:105: for(int i=0;i<30;i++){
	ld	bc, #0x0000
00106$:
	ld	a, c
	sub	a, #0x1e
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00101$
;src/main.c:106: set_sprite_tile(i,i);
	ldhl	sp,	#0
	ld	(hl), c
	ld	e, (hl)
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1174: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
	ld	d, #0x00
	ld	h, d
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), e
;src/main.c:107: alpha.spriteids[i]=i;
	ld	hl, #_alpha
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
;src/main.c:105: for(int i=0;i<30;i++){
	inc	bc
	jr	00106$
00101$:
;src/main.c:109: for(int j=0;j<9;j++){
	ld	bc, #0x0000
00109$:
	ld	a, c
	sub	a, #0x09
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00102$
;src/main.c:110: set_sprite_prop(21+j, S_PALETTE); 
	ld	a, c
	add	a, #0x15
	ld	e, a
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:1220: shadow_OAM[nb].prop=prop;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x10
;src/main.c:109: for(int j=0;j<9;j++){
	inc	bc
	jr	00109$
00102$:
;src/main.c:114: MoveSprite(&alpha,alpha.x,alpha.y);
	ld	a, (#(_alpha + 31) + 0)
	ld	hl, #(_alpha + 30)
	ld	b, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	de, #_alpha
	push	de
	call	_MoveSprite
;src/main.c:115: } 
	add	sp, #5
	ret
;src/main.c:119: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:121: set_bkg_data(0, 153, devil_data);
	ld	de, #_devil_data
	push	de
	ld	hl, #0x9900
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:122: set_bkg_tiles(0, 0, 20, 18, devil_map);
	ld	de, #_devil_map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;src/main.c:123: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:124: set_sprite_data(0, 30, Chibi_babies2_data);
	ld	de, #_Chibi_babies2_data
	push	de
	ld	hl, #0x1e00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/main.c:126: MakeSprite();
	call	_MakeSprite
;src/main.c:128: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src/main.c:130: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/main.c:131: while(1) {
00115$:
;src/main.c:144: if(joypad()&J_LEFT){
	call	_joypad
	bit	1, e
	jr	Z, 00103$
;src/main.c:145: for(int i=0; i<=5; i=i+1) {
	ld	bc, #0x0000
00119$:
	ld	e, b
	ld	d, #0x00
	ld	a, #0x05
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00189$
	bit	7, d
	jr	NZ, 00190$
	cp	a, a
	jr	00190$
00189$:
	bit	7, d
	jr	Z, 00190$
	scf
00190$:
	jr	C, 00103$
;src/main.c:146: alpha.x-=5;
	ld	de, #_alpha+30
	ld	a, (de)
	add	a, #0xfb
	ld	(de), a
;src/main.c:150: delay(20);
	push	bc
	ld	de, #0x0014
	push	de
	call	_delay
	pop	hl
	pop	bc
;src/main.c:145: for(int i=0; i<=5; i=i+1) {
	inc	bc
	jr	00119$
00103$:
;src/main.c:155: if(joypad()&J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00106$
;src/main.c:156: for(int i=0; i<=5; i=i+1) {
	ld	bc, #0x0000
00122$:
	ld	e, b
	ld	d, #0x00
	ld	a, #0x05
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00192$
	bit	7, d
	jr	NZ, 00193$
	cp	a, a
	jr	00193$
00192$:
	bit	7, d
	jr	Z, 00193$
	scf
00193$:
	jr	C, 00106$
;src/main.c:157: alpha.x+=5;
	ld	de, #_alpha+30
	ld	a, (de)
	add	a, #0x05
	ld	(de), a
;src/main.c:160: delay(20);
	push	bc
	ld	de, #0x0014
	push	de
	call	_delay
	pop	hl
	pop	bc
;src/main.c:156: for(int i=0; i<=5; i=i+1) {
	inc	bc
	jr	00122$
00106$:
;src/main.c:166: if(joypad()&J_A){
	call	_joypad
	bit	4, e
	jr	Z, 00113$
;src/main.c:168: for (INT8 i = 0; i < 10; i++)
	ld	c, #0x00
00125$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x8a
	jr	NC, 00113$
;src/main.c:172: alpha.y-=(1 *i)^2 + (1 * i);
	ld	hl, #(_alpha + 31)
	ld	b, (hl)
	ld	a, c
	ld	e, a
	rlca
	ld	a, c
	inc	a
	inc	a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	xor	a, l
	ld	e, a
	ld	a, b
	sub	a, e
	ld	(#(_alpha + 31)),a
;src/main.c:175: delay(20);
	push	bc
	ld	de, #0x0014
	push	de
	call	_delay
	pop	hl
	pop	bc
;src/main.c:168: for (INT8 i = 0; i < 10; i++)
	inc	c
	jr	00125$
;src/main.c:182: for (INT8 i = 0; i < 10; i++)
00113$:
;src/main.c:202: MoveSprite(&alpha,alpha.x,alpha.y);
	ld	hl, #_alpha + 31
	ld	b, (hl)
	ld	a, (#(_alpha + 30) + 0)
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	de, #_alpha
	push	de
	call	_MoveSprite
	add	sp, #4
;/Users/florianmac/Documents/sdk/gbdk/include/gb/gb.h:860: SCX_REG+=x, SCY_REG+=y;
;src/main.c:208: wait_vbl_done();
	call	_wait_vbl_done
;src/main.c:210: }
	jp	00115$
	.area _CODE
	.area _INITIALIZER
__xinit__spritesize:
	.db #0x08	; 8
	.area _CABS (ABS)
