
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
  1c:	0c 94 a9 00 	jmp	0x152	; 0x152 <__vector_7>
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
  74:	23 e0       	ldi	r18, 0x03	; 3
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	01 c0       	rjmp	.+2      	; 0x7e <.do_clear_bss_start>

0000007c <.do_clear_bss_loop>:
  7c:	1d 92       	st	X+, r1

0000007e <.do_clear_bss_start>:
  7e:	ac 30       	cpi	r26, 0x0C	; 12
  80:	b2 07       	cpc	r27, r18
  82:	e1 f7       	brne	.-8      	; 0x7c <.do_clear_bss_loop>
  84:	0e 94 8f 00 	call	0x11e	; 0x11e <main>
  88:	0c 94 8b 01 	jmp	0x316	; 0x316 <_exit>

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

000000e6 <_Z8thread_bv>:
  e6:	c0 e2       	ldi	r28, 0x20	; 32
  e8:	85 b1       	in	r24, 0x05	; 5
  ea:	8c 27       	eor	r24, r28
  ec:	85 b9       	out	0x05, r24	; 5
  ee:	82 e4       	ldi	r24, 0x42	; 66
  f0:	0e 94 54 00 	call	0xa8	; 0xa8 <_Z7putcharc>
  f4:	60 ea       	ldi	r22, 0xA0	; 160
  f6:	76 e8       	ldi	r23, 0x86	; 134
  f8:	81 e0       	ldi	r24, 0x01	; 1
  fa:	90 e0       	ldi	r25, 0x00	; 0
  fc:	0e 94 5d 00 	call	0xba	; 0xba <_Z11delay_loopsm>
 100:	f3 cf       	rjmp	.-26     	; 0xe8 <_Z8thread_bv+0x2>

00000102 <_Z8thread_cv>:
 102:	c0 e2       	ldi	r28, 0x20	; 32
 104:	85 b1       	in	r24, 0x05	; 5
 106:	8c 27       	eor	r24, r28
 108:	85 b9       	out	0x05, r24	; 5
 10a:	83 e4       	ldi	r24, 0x43	; 67
 10c:	0e 94 54 00 	call	0xa8	; 0xa8 <_Z7putcharc>
 110:	60 e4       	ldi	r22, 0x40	; 64
 112:	7d e0       	ldi	r23, 0x0D	; 13
 114:	83 e0       	ldi	r24, 0x03	; 3
 116:	90 e0       	ldi	r25, 0x00	; 0
 118:	0e 94 5d 00 	call	0xba	; 0xba <_Z11delay_loopsm>
 11c:	f3 cf       	rjmp	.-26     	; 0x104 <_Z8thread_cv+0x2>

0000011e <main>:
 11e:	94 b1       	in	r25, 0x04	; 4
 120:	84 b1       	in	r24, 0x04	; 4
 122:	89 2b       	or	r24, r25
 124:	84 b9       	out	0x04, r24	; 4
 126:	2d 9a       	sbi	0x05, 5	; 5
 128:	0e 94 48 00 	call	0x90	; 0x90 <_Z10usart_initv>
 12c:	0e 94 fa 00 	call	0x1f4	; 0x1f4 <_Z7os_initv>
 130:	85 e6       	ldi	r24, 0x65	; 101
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	0e 94 23 01 	call	0x246	; 0x246 <_Z13os_add_threadPFvvE>
 138:	83 e7       	ldi	r24, 0x73	; 115
 13a:	90 e0       	ldi	r25, 0x00	; 0
 13c:	0e 94 23 01 	call	0x246	; 0x246 <_Z13os_add_threadPFvvE>
 140:	81 e8       	ldi	r24, 0x81	; 129
 142:	90 e0       	ldi	r25, 0x00	; 0
 144:	0e 94 23 01 	call	0x246	; 0x246 <_Z13os_add_threadPFvvE>
 148:	0e 94 41 01 	call	0x282	; 0x282 <_Z8os_startv>
 14c:	80 e0       	ldi	r24, 0x00	; 0
 14e:	90 e0       	ldi	r25, 0x00	; 0
 150:	08 95       	ret

00000152 <__vector_7>:
 152:	0f 92       	push	r0
 154:	0f b6       	in	r0, 0x3f	; 63
 156:	0f 92       	push	r0
 158:	1f 92       	push	r1
 15a:	2f 92       	push	r2
 15c:	3f 92       	push	r3
 15e:	4f 92       	push	r4
 160:	5f 92       	push	r5
 162:	6f 92       	push	r6
 164:	7f 92       	push	r7
 166:	8f 92       	push	r8
 168:	9f 92       	push	r9
 16a:	af 92       	push	r10
 16c:	bf 92       	push	r11
 16e:	cf 92       	push	r12
 170:	df 92       	push	r13
 172:	ef 92       	push	r14
 174:	ff 92       	push	r15
 176:	0f 93       	push	r16
 178:	1f 93       	push	r17
 17a:	2f 93       	push	r18
 17c:	3f 93       	push	r19
 17e:	4f 93       	push	r20
 180:	5f 93       	push	r21
 182:	6f 93       	push	r22
 184:	7f 93       	push	r23
 186:	8f 93       	push	r24
 188:	9f 93       	push	r25
 18a:	af 93       	push	r26
 18c:	bf 93       	push	r27
 18e:	cf 93       	push	r28
 190:	df 93       	push	r29
 192:	ef 93       	push	r30
 194:	ff 93       	push	r31
 196:	cd b7       	in	r28, 0x3d	; 61
 198:	de b7       	in	r29, 0x3e	; 62
 19a:	c0 93 0a 03 	sts	0x030A, r28	; 0x80030a <current_stack>
 19e:	d0 93 0b 03 	sts	0x030B, r29	; 0x80030b <current_stack+0x1>
 1a2:	c0 91 0a 03 	lds	r28, 0x030A	; 0x80030a <current_stack>
 1a6:	d0 91 0b 03 	lds	r29, 0x030B	; 0x80030b <current_stack+0x1>
 1aa:	cd bf       	out	0x3d, r28	; 61
 1ac:	de bf       	out	0x3e, r29	; 62
 1ae:	ff 91       	pop	r31
 1b0:	ef 91       	pop	r30
 1b2:	df 91       	pop	r29
 1b4:	cf 91       	pop	r28
 1b6:	bf 91       	pop	r27
 1b8:	af 91       	pop	r26
 1ba:	9f 91       	pop	r25
 1bc:	8f 91       	pop	r24
 1be:	7f 91       	pop	r23
 1c0:	6f 91       	pop	r22
 1c2:	5f 91       	pop	r21
 1c4:	4f 91       	pop	r20
 1c6:	3f 91       	pop	r19
 1c8:	2f 91       	pop	r18
 1ca:	1f 91       	pop	r17
 1cc:	0f 91       	pop	r16
 1ce:	ff 90       	pop	r15
 1d0:	ef 90       	pop	r14
 1d2:	df 90       	pop	r13
 1d4:	cf 90       	pop	r12
 1d6:	bf 90       	pop	r11
 1d8:	af 90       	pop	r10
 1da:	9f 90       	pop	r9
 1dc:	8f 90       	pop	r8
 1de:	7f 90       	pop	r7
 1e0:	6f 90       	pop	r6
 1e2:	5f 90       	pop	r5
 1e4:	4f 90       	pop	r4
 1e6:	3f 90       	pop	r3
 1e8:	2f 90       	pop	r2
 1ea:	1f 90       	pop	r1
 1ec:	0f 90       	pop	r0
 1ee:	0f be       	out	0x3f, r0	; 63
 1f0:	0f 90       	pop	r0
 1f2:	18 95       	reti

000001f4 <_Z7os_initv>:
 1f4:	10 92 0b 03 	sts	0x030B, r1	; 0x80030b <current_stack+0x1>
 1f8:	10 92 0a 03 	sts	0x030A, r1	; 0x80030a <current_stack>
 1fc:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <current_thread>
 200:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <threads_count>
 204:	4e e5       	ldi	r20, 0x5E	; 94
 206:	51 e0       	ldi	r21, 0x01	; 1
 208:	80 e0       	ldi	r24, 0x00	; 0
 20a:	90 e0       	ldi	r25, 0x00	; 0
 20c:	62 e8       	ldi	r22, 0x82	; 130
 20e:	20 e0       	ldi	r18, 0x00	; 0
 210:	30 e0       	ldi	r19, 0x00	; 0
 212:	68 9f       	mul	r22, r24
 214:	f0 01       	movw	r30, r0
 216:	69 9f       	mul	r22, r25
 218:	f0 0d       	add	r31, r0
 21a:	11 24       	eor	r1, r1
 21c:	e0 50       	subi	r30, 0x00	; 0
 21e:	ff 4f       	sbci	r31, 0xFF	; 255
 220:	df 01       	movw	r26, r30
 222:	a2 0f       	add	r26, r18
 224:	b3 1f       	adc	r27, r19
 226:	12 96       	adiw	r26, 0x02	; 2
 228:	1c 92       	st	X, r1
 22a:	2f 5f       	subi	r18, 0xFF	; 255
 22c:	3f 4f       	sbci	r19, 0xFF	; 255
 22e:	20 38       	cpi	r18, 0x80	; 128
 230:	31 05       	cpc	r19, r1
 232:	b1 f7       	brne	.-20     	; 0x220 <_Z7os_initv+0x2c>
 234:	51 83       	std	Z+1, r21	; 0x01
 236:	40 83       	st	Z, r20
 238:	01 96       	adiw	r24, 0x01	; 1
 23a:	4e 57       	subi	r20, 0x7E	; 126
 23c:	5f 4f       	sbci	r21, 0xFF	; 255
 23e:	84 30       	cpi	r24, 0x04	; 4
 240:	91 05       	cpc	r25, r1
 242:	29 f7       	brne	.-54     	; 0x20e <_Z7os_initv+0x1a>
 244:	08 95       	ret

00000246 <_Z13os_add_threadPFvvE>:
 246:	20 91 09 03 	lds	r18, 0x0309	; 0x800309 <threads_count>
 24a:	24 30       	cpi	r18, 0x04	; 4
 24c:	c0 f4       	brcc	.+48     	; 0x27e <_Z13os_add_threadPFvvE+0x38>
 24e:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <threads_count>
 252:	22 e8       	ldi	r18, 0x82	; 130
 254:	2e 9f       	mul	r18, r30
 256:	f0 01       	movw	r30, r0
 258:	11 24       	eor	r1, r1
 25a:	e0 58       	subi	r30, 0x80	; 128
 25c:	fe 4f       	sbci	r31, 0xFE	; 254
 25e:	90 83       	st	Z, r25
 260:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <threads_count>
 264:	2e 9f       	mul	r18, r30
 266:	f0 01       	movw	r30, r0
 268:	11 24       	eor	r1, r1
 26a:	ef 57       	subi	r30, 0x7F	; 127
 26c:	fe 4f       	sbci	r31, 0xFE	; 254
 26e:	80 83       	st	Z, r24
 270:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <threads_count>
 274:	8f 5f       	subi	r24, 0xFF	; 255
 276:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <threads_count>
 27a:	81 e0       	ldi	r24, 0x01	; 1
 27c:	08 95       	ret
 27e:	80 e0       	ldi	r24, 0x00	; 0
 280:	08 95       	ret

00000282 <_Z8os_startv>:
 282:	e0 91 08 03 	lds	r30, 0x0308	; 0x800308 <current_thread>
 286:	82 e8       	ldi	r24, 0x82	; 130
 288:	e8 9f       	mul	r30, r24
 28a:	f0 01       	movw	r30, r0
 28c:	11 24       	eor	r1, r1
 28e:	e0 50       	subi	r30, 0x00	; 0
 290:	ff 4f       	sbci	r31, 0xFF	; 255
 292:	80 81       	ld	r24, Z
 294:	91 81       	ldd	r25, Z+1	; 0x01
 296:	90 93 0b 03 	sts	0x030B, r25	; 0x80030b <current_stack+0x1>
 29a:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <current_stack>
 29e:	8c e7       	ldi	r24, 0x7C	; 124
 2a0:	80 93 b3 00 	sts	0x00B3, r24	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 2a4:	e0 eb       	ldi	r30, 0xB0	; 176
 2a6:	f0 e0       	ldi	r31, 0x00	; 0
 2a8:	80 81       	ld	r24, Z
 2aa:	82 60       	ori	r24, 0x02	; 2
 2ac:	80 83       	st	Z, r24
 2ae:	e1 eb       	ldi	r30, 0xB1	; 177
 2b0:	f0 e0       	ldi	r31, 0x00	; 0
 2b2:	80 81       	ld	r24, Z
 2b4:	85 60       	ori	r24, 0x05	; 5
 2b6:	80 83       	st	Z, r24
 2b8:	e0 e7       	ldi	r30, 0x70	; 112
 2ba:	f0 e0       	ldi	r31, 0x00	; 0
 2bc:	80 81       	ld	r24, Z
 2be:	82 60       	ori	r24, 0x02	; 2
 2c0:	80 83       	st	Z, r24
 2c2:	c0 91 0a 03 	lds	r28, 0x030A	; 0x80030a <current_stack>
 2c6:	d0 91 0b 03 	lds	r29, 0x030B	; 0x80030b <current_stack+0x1>
 2ca:	cd bf       	out	0x3d, r28	; 61
 2cc:	de bf       	out	0x3e, r29	; 62
 2ce:	ff 91       	pop	r31
 2d0:	ef 91       	pop	r30
 2d2:	df 91       	pop	r29
 2d4:	cf 91       	pop	r28
 2d6:	bf 91       	pop	r27
 2d8:	af 91       	pop	r26
 2da:	9f 91       	pop	r25
 2dc:	8f 91       	pop	r24
 2de:	7f 91       	pop	r23
 2e0:	6f 91       	pop	r22
 2e2:	5f 91       	pop	r21
 2e4:	4f 91       	pop	r20
 2e6:	3f 91       	pop	r19
 2e8:	2f 91       	pop	r18
 2ea:	1f 91       	pop	r17
 2ec:	0f 91       	pop	r16
 2ee:	ff 90       	pop	r15
 2f0:	ef 90       	pop	r14
 2f2:	df 90       	pop	r13
 2f4:	cf 90       	pop	r12
 2f6:	bf 90       	pop	r11
 2f8:	af 90       	pop	r10
 2fa:	9f 90       	pop	r9
 2fc:	8f 90       	pop	r8
 2fe:	7f 90       	pop	r7
 300:	6f 90       	pop	r6
 302:	5f 90       	pop	r5
 304:	4f 90       	pop	r4
 306:	3f 90       	pop	r3
 308:	2f 90       	pop	r2
 30a:	1f 90       	pop	r1
 30c:	0f 90       	pop	r0
 30e:	0f be       	out	0x3f, r0	; 63
 310:	0f 90       	pop	r0
 312:	18 95       	reti
 314:	08 95       	ret

00000316 <_exit>:
 316:	f8 94       	cli

00000318 <__stop_program>:
 318:	ff cf       	rjmp	.-2      	; 0x318 <__stop_program>
