
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
   8:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
   c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  10:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  14:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  18:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  1c:	0c 94 7e 00 	jmp	0xfc	; 0xfc <__vector_7>
  20:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  24:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  28:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  2c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  30:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  34:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  38:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  3c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  40:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  44:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  48:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  4c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  50:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  54:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  58:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  5c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  60:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  64:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_clear_bss>:
  74:	21 e0       	ldi	r18, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	01 c0       	rjmp	.+2      	; 0x7e <.do_clear_bss_start>

0000007c <.do_clear_bss_loop>:
  7c:	1d 92       	st	X+, r1

0000007e <.do_clear_bss_start>:
  7e:	a2 30       	cpi	r26, 0x02	; 2
  80:	b2 07       	cpc	r27, r18
  82:	e1 f7       	brne	.-8      	; 0x7c <.do_clear_bss_loop>
  84:	0e 94 73 00 	call	0xe6	; 0xe6 <main>
  88:	0c 94 e6 00 	jmp	0x1cc	; 0x1cc <_exit>

0000008c <__bad_interrupt>:
  8c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000090 <_Z10usart_initv>:
  90:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
  94:	87 e6       	ldi	r24, 0x67	; 103
  96:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
  9a:	88 e0       	ldi	r24, 0x08	; 8
  9c:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
  a0:	86 e0       	ldi	r24, 0x06	; 6
  a2:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
  a6:	08 95       	ret

000000a8 <_Z7putcharc>:
  a8:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
  ac:	95 fd       	sbrc	r25, 5
  ae:	02 c0       	rjmp	.+4      	; 0xb4 <_Z7putcharc+0xc>
  b0:	00 00       	nop
  b2:	fa cf       	rjmp	.-12     	; 0xa8 <_Z7putcharc>
  b4:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
  b8:	08 95       	ret

000000ba <_Z11delay_loopsm>:
  ba:	61 50       	subi	r22, 0x01	; 1
  bc:	71 09       	sbc	r23, r1
  be:	81 09       	sbc	r24, r1
  c0:	91 09       	sbc	r25, r1
  c2:	10 f0       	brcs	.+4      	; 0xc8 <_Z11delay_loopsm+0xe>
  c4:	00 00       	nop
  c6:	f9 cf       	rjmp	.-14     	; 0xba <_Z11delay_loopsm>
  c8:	08 95       	ret

000000ca <_Z8thread_av>:
  ca:	c0 e2       	ldi	r28, 0x20	; 32
  cc:	85 b1       	in	r24, 0x05	; 5
  ce:	8c 27       	eor	r24, r28
  d0:	85 b9       	out	0x05, r24	; 5
  d2:	81 e4       	ldi	r24, 0x41	; 65
  d4:	0e 94 54 00 	call	0xa8	; 0xa8 <_Z7putcharc>
  d8:	60 e5       	ldi	r22, 0x50	; 80
  da:	73 ec       	ldi	r23, 0xC3	; 195
  dc:	80 e0       	ldi	r24, 0x00	; 0
  de:	90 e0       	ldi	r25, 0x00	; 0
  e0:	0e 94 5d 00 	call	0xba	; 0xba <_Z11delay_loopsm>
  e4:	f3 cf       	rjmp	.-26     	; 0xcc <_Z8thread_av+0x2>

000000e6 <main>:
  e6:	94 b1       	in	r25, 0x04	; 4
  e8:	84 b1       	in	r24, 0x04	; 4
  ea:	89 2b       	or	r24, r25
  ec:	84 b9       	out	0x04, r24	; 4
  ee:	2d 9a       	sbi	0x05, 5	; 5
  f0:	0e 94 48 00 	call	0x90	; 0x90 <_Z10usart_initv>
  f4:	0e 94 cf 00 	call	0x19e	; 0x19e <_Z7os_initv>
  f8:	0e 94 65 00 	call	0xca	; 0xca <_Z8thread_av>

000000fc <__vector_7>:
  fc:	0f 92       	push	r0
  fe:	0f b6       	in	r0, 0x3f	; 63
 100:	0f 92       	push	r0
 102:	1f 92       	push	r1
 104:	2f 92       	push	r2
 106:	3f 92       	push	r3
 108:	4f 92       	push	r4
 10a:	5f 92       	push	r5
 10c:	6f 92       	push	r6
 10e:	7f 92       	push	r7
 110:	8f 92       	push	r8
 112:	9f 92       	push	r9
 114:	af 92       	push	r10
 116:	bf 92       	push	r11
 118:	cf 92       	push	r12
 11a:	df 92       	push	r13
 11c:	ef 92       	push	r14
 11e:	ff 92       	push	r15
 120:	0f 93       	push	r16
 122:	1f 93       	push	r17
 124:	2f 93       	push	r18
 126:	3f 93       	push	r19
 128:	4f 93       	push	r20
 12a:	5f 93       	push	r21
 12c:	6f 93       	push	r22
 12e:	7f 93       	push	r23
 130:	8f 93       	push	r24
 132:	9f 93       	push	r25
 134:	af 93       	push	r26
 136:	bf 93       	push	r27
 138:	cf 93       	push	r28
 13a:	df 93       	push	r29
 13c:	ef 93       	push	r30
 13e:	ff 93       	push	r31
 140:	cd b7       	in	r28, 0x3d	; 61
 142:	de b7       	in	r29, 0x3e	; 62
 144:	c0 93 00 01 	sts	0x0100, r28	; 0x800100 <_edata>
 148:	d0 93 01 01 	sts	0x0101, r29	; 0x800101 <_edata+0x1>
 14c:	c0 91 00 01 	lds	r28, 0x0100	; 0x800100 <_edata>
 150:	d0 91 01 01 	lds	r29, 0x0101	; 0x800101 <_edata+0x1>
 154:	cd bf       	out	0x3d, r28	; 61
 156:	de bf       	out	0x3e, r29	; 62
 158:	ff 91       	pop	r31
 15a:	ef 91       	pop	r30
 15c:	df 91       	pop	r29
 15e:	cf 91       	pop	r28
 160:	bf 91       	pop	r27
 162:	af 91       	pop	r26
 164:	9f 91       	pop	r25
 166:	8f 91       	pop	r24
 168:	7f 91       	pop	r23
 16a:	6f 91       	pop	r22
 16c:	5f 91       	pop	r21
 16e:	4f 91       	pop	r20
 170:	3f 91       	pop	r19
 172:	2f 91       	pop	r18
 174:	1f 91       	pop	r17
 176:	0f 91       	pop	r16
 178:	ff 90       	pop	r15
 17a:	ef 90       	pop	r14
 17c:	df 90       	pop	r13
 17e:	cf 90       	pop	r12
 180:	bf 90       	pop	r11
 182:	af 90       	pop	r10
 184:	9f 90       	pop	r9
 186:	8f 90       	pop	r8
 188:	7f 90       	pop	r7
 18a:	6f 90       	pop	r6
 18c:	5f 90       	pop	r5
 18e:	4f 90       	pop	r4
 190:	3f 90       	pop	r3
 192:	2f 90       	pop	r2
 194:	1f 90       	pop	r1
 196:	0f 90       	pop	r0
 198:	0f be       	out	0x3f, r0	; 63
 19a:	0f 90       	pop	r0
 19c:	18 95       	reti

0000019e <_Z7os_initv>:
 19e:	10 92 01 01 	sts	0x0101, r1	; 0x800101 <_edata+0x1>
 1a2:	10 92 00 01 	sts	0x0100, r1	; 0x800100 <_edata>
 1a6:	8c e7       	ldi	r24, 0x7C	; 124
 1a8:	80 93 b3 00 	sts	0x00B3, r24	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 1ac:	e0 eb       	ldi	r30, 0xB0	; 176
 1ae:	f0 e0       	ldi	r31, 0x00	; 0
 1b0:	80 81       	ld	r24, Z
 1b2:	82 60       	ori	r24, 0x02	; 2
 1b4:	80 83       	st	Z, r24
 1b6:	e1 eb       	ldi	r30, 0xB1	; 177
 1b8:	f0 e0       	ldi	r31, 0x00	; 0
 1ba:	80 81       	ld	r24, Z
 1bc:	85 60       	ori	r24, 0x05	; 5
 1be:	80 83       	st	Z, r24
 1c0:	e0 e7       	ldi	r30, 0x70	; 112
 1c2:	f0 e0       	ldi	r31, 0x00	; 0
 1c4:	80 81       	ld	r24, Z
 1c6:	82 60       	ori	r24, 0x02	; 2
 1c8:	80 83       	st	Z, r24
 1ca:	08 95       	ret

000001cc <_exit>:
 1cc:	f8 94       	cli

000001ce <__stop_program>:
 1ce:	ff cf       	rjmp	.-2      	; 0x1ce <__stop_program>
