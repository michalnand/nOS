
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
  88:	0c 94 b9 01 	jmp	0x372	; 0x372 <_exit>

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
 12c:	0e 94 28 01 	call	0x250	; 0x250 <_Z7os_initv>
 130:	85 e6       	ldi	r24, 0x65	; 101
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	0e 94 51 01 	call	0x2a2	; 0x2a2 <_Z13os_add_threadPFvvE>
 138:	83 e7       	ldi	r24, 0x73	; 115
 13a:	90 e0       	ldi	r25, 0x00	; 0
 13c:	0e 94 51 01 	call	0x2a2	; 0x2a2 <_Z13os_add_threadPFvvE>
 140:	81 e8       	ldi	r24, 0x81	; 129
 142:	90 e0       	ldi	r25, 0x00	; 0
 144:	0e 94 51 01 	call	0x2a2	; 0x2a2 <_Z13os_add_threadPFvvE>
 148:	0e 94 6f 01 	call	0x2de	; 0x2de <_Z8os_startv>
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
 1a2:	e0 91 08 03 	lds	r30, 0x0308	; 0x800308 <current_thread>
 1a6:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <current_stack>
 1aa:	90 91 0b 03 	lds	r25, 0x030B	; 0x80030b <current_stack+0x1>
 1ae:	22 e8       	ldi	r18, 0x82	; 130
 1b0:	e2 9f       	mul	r30, r18
 1b2:	f0 01       	movw	r30, r0
 1b4:	11 24       	eor	r1, r1
 1b6:	e0 50       	subi	r30, 0x00	; 0
 1b8:	ff 4f       	sbci	r31, 0xFF	; 255
 1ba:	91 83       	std	Z+1, r25	; 0x01
 1bc:	80 83       	st	Z, r24
 1be:	20 91 08 03 	lds	r18, 0x0308	; 0x800308 <current_thread>
 1c2:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <threads_count>
 1c6:	30 e0       	ldi	r19, 0x00	; 0
 1c8:	90 e0       	ldi	r25, 0x00	; 0
 1ca:	01 97       	sbiw	r24, 0x01	; 1
 1cc:	28 17       	cp	r18, r24
 1ce:	39 07       	cpc	r19, r25
 1d0:	34 f4       	brge	.+12     	; 0x1de <__vector_7+0x8c>
 1d2:	80 91 08 03 	lds	r24, 0x0308	; 0x800308 <current_thread>
 1d6:	8f 5f       	subi	r24, 0xFF	; 255
 1d8:	80 93 08 03 	sts	0x0308, r24	; 0x800308 <current_thread>
 1dc:	02 c0       	rjmp	.+4      	; 0x1e2 <__vector_7+0x90>
 1de:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <current_thread>
 1e2:	e0 91 08 03 	lds	r30, 0x0308	; 0x800308 <current_thread>
 1e6:	82 e8       	ldi	r24, 0x82	; 130
 1e8:	e8 9f       	mul	r30, r24
 1ea:	f0 01       	movw	r30, r0
 1ec:	11 24       	eor	r1, r1
 1ee:	e0 50       	subi	r30, 0x00	; 0
 1f0:	ff 4f       	sbci	r31, 0xFF	; 255
 1f2:	80 81       	ld	r24, Z
 1f4:	91 81       	ldd	r25, Z+1	; 0x01
 1f6:	90 93 0b 03 	sts	0x030B, r25	; 0x80030b <current_stack+0x1>
 1fa:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <current_stack>
 1fe:	c0 91 0a 03 	lds	r28, 0x030A	; 0x80030a <current_stack>
 202:	d0 91 0b 03 	lds	r29, 0x030B	; 0x80030b <current_stack+0x1>
 206:	cd bf       	out	0x3d, r28	; 61
 208:	de bf       	out	0x3e, r29	; 62
 20a:	ff 91       	pop	r31
 20c:	ef 91       	pop	r30
 20e:	df 91       	pop	r29
 210:	cf 91       	pop	r28
 212:	bf 91       	pop	r27
 214:	af 91       	pop	r26
 216:	9f 91       	pop	r25
 218:	8f 91       	pop	r24
 21a:	7f 91       	pop	r23
 21c:	6f 91       	pop	r22
 21e:	5f 91       	pop	r21
 220:	4f 91       	pop	r20
 222:	3f 91       	pop	r19
 224:	2f 91       	pop	r18
 226:	1f 91       	pop	r17
 228:	0f 91       	pop	r16
 22a:	ff 90       	pop	r15
 22c:	ef 90       	pop	r14
 22e:	df 90       	pop	r13
 230:	cf 90       	pop	r12
 232:	bf 90       	pop	r11
 234:	af 90       	pop	r10
 236:	9f 90       	pop	r9
 238:	8f 90       	pop	r8
 23a:	7f 90       	pop	r7
 23c:	6f 90       	pop	r6
 23e:	5f 90       	pop	r5
 240:	4f 90       	pop	r4
 242:	3f 90       	pop	r3
 244:	2f 90       	pop	r2
 246:	1f 90       	pop	r1
 248:	0f 90       	pop	r0
 24a:	0f be       	out	0x3f, r0	; 63
 24c:	0f 90       	pop	r0
 24e:	18 95       	reti

00000250 <_Z7os_initv>:
 250:	10 92 0b 03 	sts	0x030B, r1	; 0x80030b <current_stack+0x1>
 254:	10 92 0a 03 	sts	0x030A, r1	; 0x80030a <current_stack>
 258:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <current_thread>
 25c:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <threads_count>
 260:	4e e5       	ldi	r20, 0x5E	; 94
 262:	51 e0       	ldi	r21, 0x01	; 1
 264:	80 e0       	ldi	r24, 0x00	; 0
 266:	90 e0       	ldi	r25, 0x00	; 0
 268:	62 e8       	ldi	r22, 0x82	; 130
 26a:	20 e0       	ldi	r18, 0x00	; 0
 26c:	30 e0       	ldi	r19, 0x00	; 0
 26e:	68 9f       	mul	r22, r24
 270:	f0 01       	movw	r30, r0
 272:	69 9f       	mul	r22, r25
 274:	f0 0d       	add	r31, r0
 276:	11 24       	eor	r1, r1
 278:	e0 50       	subi	r30, 0x00	; 0
 27a:	ff 4f       	sbci	r31, 0xFF	; 255
 27c:	df 01       	movw	r26, r30
 27e:	a2 0f       	add	r26, r18
 280:	b3 1f       	adc	r27, r19
 282:	12 96       	adiw	r26, 0x02	; 2
 284:	1c 92       	st	X, r1
 286:	2f 5f       	subi	r18, 0xFF	; 255
 288:	3f 4f       	sbci	r19, 0xFF	; 255
 28a:	20 38       	cpi	r18, 0x80	; 128
 28c:	31 05       	cpc	r19, r1
 28e:	b1 f7       	brne	.-20     	; 0x27c <_Z7os_initv+0x2c>
 290:	51 83       	std	Z+1, r21	; 0x01
 292:	40 83       	st	Z, r20
 294:	01 96       	adiw	r24, 0x01	; 1
 296:	4e 57       	subi	r20, 0x7E	; 126
 298:	5f 4f       	sbci	r21, 0xFF	; 255
 29a:	84 30       	cpi	r24, 0x04	; 4
 29c:	91 05       	cpc	r25, r1
 29e:	29 f7       	brne	.-54     	; 0x26a <_Z7os_initv+0x1a>
 2a0:	08 95       	ret

000002a2 <_Z13os_add_threadPFvvE>:
 2a2:	20 91 09 03 	lds	r18, 0x0309	; 0x800309 <threads_count>
 2a6:	24 30       	cpi	r18, 0x04	; 4
 2a8:	c0 f4       	brcc	.+48     	; 0x2da <_Z13os_add_threadPFvvE+0x38>
 2aa:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <threads_count>
 2ae:	22 e8       	ldi	r18, 0x82	; 130
 2b0:	2e 9f       	mul	r18, r30
 2b2:	f0 01       	movw	r30, r0
 2b4:	11 24       	eor	r1, r1
 2b6:	e0 58       	subi	r30, 0x80	; 128
 2b8:	fe 4f       	sbci	r31, 0xFE	; 254
 2ba:	90 83       	st	Z, r25
 2bc:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <threads_count>
 2c0:	2e 9f       	mul	r18, r30
 2c2:	f0 01       	movw	r30, r0
 2c4:	11 24       	eor	r1, r1
 2c6:	ef 57       	subi	r30, 0x7F	; 127
 2c8:	fe 4f       	sbci	r31, 0xFE	; 254
 2ca:	80 83       	st	Z, r24
 2cc:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <threads_count>
 2d0:	8f 5f       	subi	r24, 0xFF	; 255
 2d2:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <threads_count>
 2d6:	81 e0       	ldi	r24, 0x01	; 1
 2d8:	08 95       	ret
 2da:	80 e0       	ldi	r24, 0x00	; 0
 2dc:	08 95       	ret

000002de <_Z8os_startv>:
 2de:	e0 91 08 03 	lds	r30, 0x0308	; 0x800308 <current_thread>
 2e2:	82 e8       	ldi	r24, 0x82	; 130
 2e4:	e8 9f       	mul	r30, r24
 2e6:	f0 01       	movw	r30, r0
 2e8:	11 24       	eor	r1, r1
 2ea:	e0 50       	subi	r30, 0x00	; 0
 2ec:	ff 4f       	sbci	r31, 0xFF	; 255
 2ee:	80 81       	ld	r24, Z
 2f0:	91 81       	ldd	r25, Z+1	; 0x01
 2f2:	90 93 0b 03 	sts	0x030B, r25	; 0x80030b <current_stack+0x1>
 2f6:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <current_stack>
 2fa:	8c e7       	ldi	r24, 0x7C	; 124
 2fc:	80 93 b3 00 	sts	0x00B3, r24	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 300:	e0 eb       	ldi	r30, 0xB0	; 176
 302:	f0 e0       	ldi	r31, 0x00	; 0
 304:	80 81       	ld	r24, Z
 306:	82 60       	ori	r24, 0x02	; 2
 308:	80 83       	st	Z, r24
 30a:	e1 eb       	ldi	r30, 0xB1	; 177
 30c:	f0 e0       	ldi	r31, 0x00	; 0
 30e:	80 81       	ld	r24, Z
 310:	85 60       	ori	r24, 0x05	; 5
 312:	80 83       	st	Z, r24
 314:	e0 e7       	ldi	r30, 0x70	; 112
 316:	f0 e0       	ldi	r31, 0x00	; 0
 318:	80 81       	ld	r24, Z
 31a:	82 60       	ori	r24, 0x02	; 2
 31c:	80 83       	st	Z, r24
 31e:	c0 91 0a 03 	lds	r28, 0x030A	; 0x80030a <current_stack>
 322:	d0 91 0b 03 	lds	r29, 0x030B	; 0x80030b <current_stack+0x1>
 326:	cd bf       	out	0x3d, r28	; 61
 328:	de bf       	out	0x3e, r29	; 62
 32a:	ff 91       	pop	r31
 32c:	ef 91       	pop	r30
 32e:	df 91       	pop	r29
 330:	cf 91       	pop	r28
 332:	bf 91       	pop	r27
 334:	af 91       	pop	r26
 336:	9f 91       	pop	r25
 338:	8f 91       	pop	r24
 33a:	7f 91       	pop	r23
 33c:	6f 91       	pop	r22
 33e:	5f 91       	pop	r21
 340:	4f 91       	pop	r20
 342:	3f 91       	pop	r19
 344:	2f 91       	pop	r18
 346:	1f 91       	pop	r17
 348:	0f 91       	pop	r16
 34a:	ff 90       	pop	r15
 34c:	ef 90       	pop	r14
 34e:	df 90       	pop	r13
 350:	cf 90       	pop	r12
 352:	bf 90       	pop	r11
 354:	af 90       	pop	r10
 356:	9f 90       	pop	r9
 358:	8f 90       	pop	r8
 35a:	7f 90       	pop	r7
 35c:	6f 90       	pop	r6
 35e:	5f 90       	pop	r5
 360:	4f 90       	pop	r4
 362:	3f 90       	pop	r3
 364:	2f 90       	pop	r2
 366:	1f 90       	pop	r1
 368:	0f 90       	pop	r0
 36a:	0f be       	out	0x3f, r0	; 63
 36c:	0f 90       	pop	r0
 36e:	18 95       	reti
 370:	08 95       	ret

00000372 <_exit>:
 372:	f8 94       	cli

00000374 <__stop_program>:
 374:	ff cf       	rjmp	.-2      	; 0x374 <__stop_program>
