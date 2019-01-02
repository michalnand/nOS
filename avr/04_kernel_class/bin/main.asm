
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 35 00 	jmp	0x6a	; 0x6a <__ctors_end>
   4:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
   8:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
   c:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  10:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  14:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  18:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  1c:	0c 94 c5 00 	jmp	0x18a	; 0x18a <__vector_7>
  20:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  24:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  28:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  2c:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  30:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  34:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  38:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  3c:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  40:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  44:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  48:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  4c:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  50:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  54:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  58:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  5c:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  60:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>
  64:	0c 94 52 00 	jmp	0xa4	; 0xa4 <__bad_interrupt>

00000068 <__ctors_start>:
  68:	e3 01       	movw	r28, r6

0000006a <__ctors_end>:
  6a:	11 24       	eor	r1, r1
  6c:	1f be       	out	0x3f, r1	; 63
  6e:	cf ef       	ldi	r28, 0xFF	; 255
  70:	d8 e0       	ldi	r29, 0x08	; 8
  72:	de bf       	out	0x3e, r29	; 62
  74:	cd bf       	out	0x3d, r28	; 61

00000076 <__do_clear_bss>:
  76:	23 e0       	ldi	r18, 0x03	; 3
  78:	a0 e0       	ldi	r26, 0x00	; 0
  7a:	b1 e0       	ldi	r27, 0x01	; 1
  7c:	01 c0       	rjmp	.+2      	; 0x80 <.do_clear_bss_start>

0000007e <.do_clear_bss_loop>:
  7e:	1d 92       	st	X+, r1

00000080 <.do_clear_bss_start>:
  80:	ae 30       	cpi	r26, 0x0E	; 14
  82:	b2 07       	cpc	r27, r18
  84:	e1 f7       	brne	.-8      	; 0x7e <.do_clear_bss_loop>

00000086 <__do_global_ctors>:
  86:	10 e0       	ldi	r17, 0x00	; 0
  88:	c5 e3       	ldi	r28, 0x35	; 53
  8a:	d0 e0       	ldi	r29, 0x00	; 0
  8c:	04 c0       	rjmp	.+8      	; 0x96 <__do_global_ctors+0x10>
  8e:	21 97       	sbiw	r28, 0x01	; 1
  90:	fe 01       	movw	r30, r28
  92:	0e 94 e7 01 	call	0x3ce	; 0x3ce <__tablejump2__>
  96:	c4 33       	cpi	r28, 0x34	; 52
  98:	d1 07       	cpc	r29, r17
  9a:	c9 f7       	brne	.-14     	; 0x8e <__do_global_ctors+0x8>
  9c:	0e 94 a5 00 	call	0x14a	; 0x14a <main>
  a0:	0c 94 ed 01 	jmp	0x3da	; 0x3da <_exit>

000000a4 <__bad_interrupt>:
  a4:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a8 <_Z10usart_initv>:
  a8:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
  ac:	87 e6       	ldi	r24, 0x67	; 103
  ae:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
  b2:	88 e0       	ldi	r24, 0x08	; 8
  b4:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
  b8:	86 e0       	ldi	r24, 0x06	; 6
  ba:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
  be:	08 95       	ret

000000c0 <_Z7putcharc>:
  c0:	cf 93       	push	r28
  c2:	c8 2f       	mov	r28, r24
  c4:	8d e0       	ldi	r24, 0x0D	; 13
  c6:	93 e0       	ldi	r25, 0x03	; 3
  c8:	0e 94 dc 01 	call	0x3b8	; 0x3b8 <_ZN10NanoKernel12atomic_startEv>
  cc:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
  d0:	85 fd       	sbrc	r24, 5
  d2:	02 c0       	rjmp	.+4      	; 0xd8 <_Z7putcharc+0x18>
  d4:	00 00       	nop
  d6:	fa cf       	rjmp	.-12     	; 0xcc <_Z7putcharc+0xc>
  d8:	c0 93 c6 00 	sts	0x00C6, r28	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
  dc:	8d e0       	ldi	r24, 0x0D	; 13
  de:	93 e0       	ldi	r25, 0x03	; 3
  e0:	cf 91       	pop	r28
  e2:	0c 94 df 01 	jmp	0x3be	; 0x3be <_ZN10NanoKernel10atomic_endEv>

000000e6 <_Z11delay_loopsm>:
  e6:	61 50       	subi	r22, 0x01	; 1
  e8:	71 09       	sbc	r23, r1
  ea:	81 09       	sbc	r24, r1
  ec:	91 09       	sbc	r25, r1
  ee:	10 f0       	brcs	.+4      	; 0xf4 <_Z11delay_loopsm+0xe>
  f0:	00 00       	nop
  f2:	f9 cf       	rjmp	.-14     	; 0xe6 <_Z11delay_loopsm>
  f4:	08 95       	ret

000000f6 <_Z8thread_av>:
  f6:	c0 e2       	ldi	r28, 0x20	; 32
  f8:	85 b1       	in	r24, 0x05	; 5
  fa:	8c 27       	eor	r24, r28
  fc:	85 b9       	out	0x05, r24	; 5
  fe:	81 e4       	ldi	r24, 0x41	; 65
 100:	0e 94 60 00 	call	0xc0	; 0xc0 <_Z7putcharc>
 104:	60 e5       	ldi	r22, 0x50	; 80
 106:	73 ec       	ldi	r23, 0xC3	; 195
 108:	80 e0       	ldi	r24, 0x00	; 0
 10a:	90 e0       	ldi	r25, 0x00	; 0
 10c:	0e 94 73 00 	call	0xe6	; 0xe6 <_Z11delay_loopsm>
 110:	f3 cf       	rjmp	.-26     	; 0xf8 <_Z8thread_av+0x2>

00000112 <_Z8thread_bv>:
 112:	c0 e2       	ldi	r28, 0x20	; 32
 114:	85 b1       	in	r24, 0x05	; 5
 116:	8c 27       	eor	r24, r28
 118:	85 b9       	out	0x05, r24	; 5
 11a:	82 e4       	ldi	r24, 0x42	; 66
 11c:	0e 94 60 00 	call	0xc0	; 0xc0 <_Z7putcharc>
 120:	60 ea       	ldi	r22, 0xA0	; 160
 122:	76 e8       	ldi	r23, 0x86	; 134
 124:	81 e0       	ldi	r24, 0x01	; 1
 126:	90 e0       	ldi	r25, 0x00	; 0
 128:	0e 94 73 00 	call	0xe6	; 0xe6 <_Z11delay_loopsm>
 12c:	f3 cf       	rjmp	.-26     	; 0x114 <_Z8thread_bv+0x2>

0000012e <_Z8thread_cv>:
 12e:	c0 e2       	ldi	r28, 0x20	; 32
 130:	85 b1       	in	r24, 0x05	; 5
 132:	8c 27       	eor	r24, r28
 134:	85 b9       	out	0x05, r24	; 5
 136:	83 e4       	ldi	r24, 0x43	; 67
 138:	0e 94 60 00 	call	0xc0	; 0xc0 <_Z7putcharc>
 13c:	60 e4       	ldi	r22, 0x40	; 64
 13e:	7d e0       	ldi	r23, 0x0D	; 13
 140:	83 e0       	ldi	r24, 0x03	; 3
 142:	90 e0       	ldi	r25, 0x00	; 0
 144:	0e 94 73 00 	call	0xe6	; 0xe6 <_Z11delay_loopsm>
 148:	f3 cf       	rjmp	.-26     	; 0x130 <_Z8thread_cv+0x2>

0000014a <main>:
 14a:	94 b1       	in	r25, 0x04	; 4
 14c:	84 b1       	in	r24, 0x04	; 4
 14e:	89 2b       	or	r24, r25
 150:	84 b9       	out	0x04, r24	; 4
 152:	2d 9a       	sbi	0x05, 5	; 5
 154:	0e 94 54 00 	call	0xa8	; 0xa8 <_Z10usart_initv>
 158:	6b e7       	ldi	r22, 0x7B	; 123
 15a:	70 e0       	ldi	r23, 0x00	; 0
 15c:	8d e0       	ldi	r24, 0x0D	; 13
 15e:	93 e0       	ldi	r25, 0x03	; 3
 160:	0e 94 74 01 	call	0x2e8	; 0x2e8 <_ZN10NanoKernel10add_threadERFvvE>
 164:	69 e8       	ldi	r22, 0x89	; 137
 166:	70 e0       	ldi	r23, 0x00	; 0
 168:	8d e0       	ldi	r24, 0x0D	; 13
 16a:	93 e0       	ldi	r25, 0x03	; 3
 16c:	0e 94 74 01 	call	0x2e8	; 0x2e8 <_ZN10NanoKernel10add_threadERFvvE>
 170:	67 e9       	ldi	r22, 0x97	; 151
 172:	70 e0       	ldi	r23, 0x00	; 0
 174:	8d e0       	ldi	r24, 0x0D	; 13
 176:	93 e0       	ldi	r25, 0x03	; 3
 178:	0e 94 74 01 	call	0x2e8	; 0x2e8 <_ZN10NanoKernel10add_threadERFvvE>
 17c:	8d e0       	ldi	r24, 0x0D	; 13
 17e:	93 e0       	ldi	r25, 0x03	; 3
 180:	0e 94 92 01 	call	0x324	; 0x324 <_ZN10NanoKernel5startEv>
 184:	80 e0       	ldi	r24, 0x00	; 0
 186:	90 e0       	ldi	r25, 0x00	; 0
 188:	08 95       	ret

0000018a <__vector_7>:
 18a:	0f 92       	push	r0
 18c:	0f b6       	in	r0, 0x3f	; 63
 18e:	0f 92       	push	r0
 190:	1f 92       	push	r1
 192:	2f 92       	push	r2
 194:	3f 92       	push	r3
 196:	4f 92       	push	r4
 198:	5f 92       	push	r5
 19a:	6f 92       	push	r6
 19c:	7f 92       	push	r7
 19e:	8f 92       	push	r8
 1a0:	9f 92       	push	r9
 1a2:	af 92       	push	r10
 1a4:	bf 92       	push	r11
 1a6:	cf 92       	push	r12
 1a8:	df 92       	push	r13
 1aa:	ef 92       	push	r14
 1ac:	ff 92       	push	r15
 1ae:	0f 93       	push	r16
 1b0:	1f 93       	push	r17
 1b2:	2f 93       	push	r18
 1b4:	3f 93       	push	r19
 1b6:	4f 93       	push	r20
 1b8:	5f 93       	push	r21
 1ba:	6f 93       	push	r22
 1bc:	7f 93       	push	r23
 1be:	8f 93       	push	r24
 1c0:	9f 93       	push	r25
 1c2:	af 93       	push	r26
 1c4:	bf 93       	push	r27
 1c6:	cf 93       	push	r28
 1c8:	df 93       	push	r29
 1ca:	ef 93       	push	r30
 1cc:	ff 93       	push	r31
 1ce:	cd b7       	in	r28, 0x3d	; 61
 1d0:	de b7       	in	r29, 0x3e	; 62
 1d2:	c0 93 0b 03 	sts	0x030B, r28	; 0x80030b <current_stack>
 1d6:	d0 93 0c 03 	sts	0x030C, r29	; 0x80030c <current_stack+0x1>
 1da:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <current_thread>
 1de:	80 91 0b 03 	lds	r24, 0x030B	; 0x80030b <current_stack>
 1e2:	90 91 0c 03 	lds	r25, 0x030C	; 0x80030c <current_stack+0x1>
 1e6:	22 e8       	ldi	r18, 0x82	; 130
 1e8:	e2 9f       	mul	r30, r18
 1ea:	f0 01       	movw	r30, r0
 1ec:	11 24       	eor	r1, r1
 1ee:	e0 50       	subi	r30, 0x00	; 0
 1f0:	ff 4f       	sbci	r31, 0xFF	; 255
 1f2:	91 83       	std	Z+1, r25	; 0x01
 1f4:	80 83       	st	Z, r24
 1f6:	80 91 08 03 	lds	r24, 0x0308	; 0x800308 <context_switch_enabled>
 1fa:	88 23       	and	r24, r24
 1fc:	91 f0       	breq	.+36     	; 0x222 <__vector_7+0x98>
 1fe:	20 91 09 03 	lds	r18, 0x0309	; 0x800309 <current_thread>
 202:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <threads_count>
 206:	30 e0       	ldi	r19, 0x00	; 0
 208:	90 e0       	ldi	r25, 0x00	; 0
 20a:	01 97       	sbiw	r24, 0x01	; 1
 20c:	28 17       	cp	r18, r24
 20e:	39 07       	cpc	r19, r25
 210:	34 f4       	brge	.+12     	; 0x21e <__vector_7+0x94>
 212:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <current_thread>
 216:	8f 5f       	subi	r24, 0xFF	; 255
 218:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <current_thread>
 21c:	02 c0       	rjmp	.+4      	; 0x222 <__vector_7+0x98>
 21e:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <current_thread>
 222:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <current_thread>
 226:	82 e8       	ldi	r24, 0x82	; 130
 228:	e8 9f       	mul	r30, r24
 22a:	f0 01       	movw	r30, r0
 22c:	11 24       	eor	r1, r1
 22e:	e0 50       	subi	r30, 0x00	; 0
 230:	ff 4f       	sbci	r31, 0xFF	; 255
 232:	80 81       	ld	r24, Z
 234:	91 81       	ldd	r25, Z+1	; 0x01
 236:	90 93 0c 03 	sts	0x030C, r25	; 0x80030c <current_stack+0x1>
 23a:	80 93 0b 03 	sts	0x030B, r24	; 0x80030b <current_stack>
 23e:	c0 91 0b 03 	lds	r28, 0x030B	; 0x80030b <current_stack>
 242:	d0 91 0c 03 	lds	r29, 0x030C	; 0x80030c <current_stack+0x1>
 246:	cd bf       	out	0x3d, r28	; 61
 248:	de bf       	out	0x3e, r29	; 62
 24a:	ff 91       	pop	r31
 24c:	ef 91       	pop	r30
 24e:	df 91       	pop	r29
 250:	cf 91       	pop	r28
 252:	bf 91       	pop	r27
 254:	af 91       	pop	r26
 256:	9f 91       	pop	r25
 258:	8f 91       	pop	r24
 25a:	7f 91       	pop	r23
 25c:	6f 91       	pop	r22
 25e:	5f 91       	pop	r21
 260:	4f 91       	pop	r20
 262:	3f 91       	pop	r19
 264:	2f 91       	pop	r18
 266:	1f 91       	pop	r17
 268:	0f 91       	pop	r16
 26a:	ff 90       	pop	r15
 26c:	ef 90       	pop	r14
 26e:	df 90       	pop	r13
 270:	cf 90       	pop	r12
 272:	bf 90       	pop	r11
 274:	af 90       	pop	r10
 276:	9f 90       	pop	r9
 278:	8f 90       	pop	r8
 27a:	7f 90       	pop	r7
 27c:	6f 90       	pop	r6
 27e:	5f 90       	pop	r5
 280:	4f 90       	pop	r4
 282:	3f 90       	pop	r3
 284:	2f 90       	pop	r2
 286:	1f 90       	pop	r1
 288:	0f 90       	pop	r0
 28a:	0f be       	out	0x3f, r0	; 63
 28c:	0f 90       	pop	r0
 28e:	18 95       	reti

00000290 <_ZN10NanoKernelC1Ev>:
 290:	10 92 0c 03 	sts	0x030C, r1	; 0x80030c <current_stack+0x1>
 294:	10 92 0b 03 	sts	0x030B, r1	; 0x80030b <current_stack>
 298:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <current_thread>
 29c:	10 92 0a 03 	sts	0x030A, r1	; 0x80030a <threads_count>
 2a0:	81 e0       	ldi	r24, 0x01	; 1
 2a2:	80 93 08 03 	sts	0x0308, r24	; 0x800308 <context_switch_enabled>
 2a6:	4e e5       	ldi	r20, 0x5E	; 94
 2a8:	51 e0       	ldi	r21, 0x01	; 1
 2aa:	80 e0       	ldi	r24, 0x00	; 0
 2ac:	90 e0       	ldi	r25, 0x00	; 0
 2ae:	62 e8       	ldi	r22, 0x82	; 130
 2b0:	20 e0       	ldi	r18, 0x00	; 0
 2b2:	30 e0       	ldi	r19, 0x00	; 0
 2b4:	68 9f       	mul	r22, r24
 2b6:	f0 01       	movw	r30, r0
 2b8:	69 9f       	mul	r22, r25
 2ba:	f0 0d       	add	r31, r0
 2bc:	11 24       	eor	r1, r1
 2be:	e0 50       	subi	r30, 0x00	; 0
 2c0:	ff 4f       	sbci	r31, 0xFF	; 255
 2c2:	df 01       	movw	r26, r30
 2c4:	a2 0f       	add	r26, r18
 2c6:	b3 1f       	adc	r27, r19
 2c8:	12 96       	adiw	r26, 0x02	; 2
 2ca:	1c 92       	st	X, r1
 2cc:	2f 5f       	subi	r18, 0xFF	; 255
 2ce:	3f 4f       	sbci	r19, 0xFF	; 255
 2d0:	20 38       	cpi	r18, 0x80	; 128
 2d2:	31 05       	cpc	r19, r1
 2d4:	b1 f7       	brne	.-20     	; 0x2c2 <_ZN10NanoKernelC1Ev+0x32>
 2d6:	51 83       	std	Z+1, r21	; 0x01
 2d8:	40 83       	st	Z, r20
 2da:	01 96       	adiw	r24, 0x01	; 1
 2dc:	4e 57       	subi	r20, 0x7E	; 126
 2de:	5f 4f       	sbci	r21, 0xFF	; 255
 2e0:	84 30       	cpi	r24, 0x04	; 4
 2e2:	91 05       	cpc	r25, r1
 2e4:	29 f7       	brne	.-54     	; 0x2b0 <_ZN10NanoKernelC1Ev+0x20>
 2e6:	08 95       	ret

000002e8 <_ZN10NanoKernel10add_threadERFvvE>:
 2e8:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <threads_count>
 2ec:	84 30       	cpi	r24, 0x04	; 4
 2ee:	c0 f4       	brcc	.+48     	; 0x320 <_ZN10NanoKernel10add_threadERFvvE+0x38>
 2f0:	e0 91 0a 03 	lds	r30, 0x030A	; 0x80030a <threads_count>
 2f4:	82 e8       	ldi	r24, 0x82	; 130
 2f6:	8e 9f       	mul	r24, r30
 2f8:	f0 01       	movw	r30, r0
 2fa:	11 24       	eor	r1, r1
 2fc:	e0 58       	subi	r30, 0x80	; 128
 2fe:	fe 4f       	sbci	r31, 0xFE	; 254
 300:	70 83       	st	Z, r23
 302:	e0 91 0a 03 	lds	r30, 0x030A	; 0x80030a <threads_count>
 306:	8e 9f       	mul	r24, r30
 308:	f0 01       	movw	r30, r0
 30a:	11 24       	eor	r1, r1
 30c:	ef 57       	subi	r30, 0x7F	; 127
 30e:	fe 4f       	sbci	r31, 0xFE	; 254
 310:	60 83       	st	Z, r22
 312:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <threads_count>
 316:	8f 5f       	subi	r24, 0xFF	; 255
 318:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <threads_count>
 31c:	81 e0       	ldi	r24, 0x01	; 1
 31e:	08 95       	ret
 320:	80 e0       	ldi	r24, 0x00	; 0
 322:	08 95       	ret

00000324 <_ZN10NanoKernel5startEv>:
 324:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <current_thread>
 328:	82 e8       	ldi	r24, 0x82	; 130
 32a:	e8 9f       	mul	r30, r24
 32c:	f0 01       	movw	r30, r0
 32e:	11 24       	eor	r1, r1
 330:	e0 50       	subi	r30, 0x00	; 0
 332:	ff 4f       	sbci	r31, 0xFF	; 255
 334:	80 81       	ld	r24, Z
 336:	91 81       	ldd	r25, Z+1	; 0x01
 338:	90 93 0c 03 	sts	0x030C, r25	; 0x80030c <current_stack+0x1>
 33c:	80 93 0b 03 	sts	0x030B, r24	; 0x80030b <current_stack>
 340:	8c e7       	ldi	r24, 0x7C	; 124
 342:	80 93 b3 00 	sts	0x00B3, r24	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 346:	e0 eb       	ldi	r30, 0xB0	; 176
 348:	f0 e0       	ldi	r31, 0x00	; 0
 34a:	80 81       	ld	r24, Z
 34c:	82 60       	ori	r24, 0x02	; 2
 34e:	80 83       	st	Z, r24
 350:	e1 eb       	ldi	r30, 0xB1	; 177
 352:	f0 e0       	ldi	r31, 0x00	; 0
 354:	80 81       	ld	r24, Z
 356:	85 60       	ori	r24, 0x05	; 5
 358:	80 83       	st	Z, r24
 35a:	e0 e7       	ldi	r30, 0x70	; 112
 35c:	f0 e0       	ldi	r31, 0x00	; 0
 35e:	80 81       	ld	r24, Z
 360:	82 60       	ori	r24, 0x02	; 2
 362:	80 83       	st	Z, r24
 364:	c0 91 0b 03 	lds	r28, 0x030B	; 0x80030b <current_stack>
 368:	d0 91 0c 03 	lds	r29, 0x030C	; 0x80030c <current_stack+0x1>
 36c:	cd bf       	out	0x3d, r28	; 61
 36e:	de bf       	out	0x3e, r29	; 62
 370:	ff 91       	pop	r31
 372:	ef 91       	pop	r30
 374:	df 91       	pop	r29
 376:	cf 91       	pop	r28
 378:	bf 91       	pop	r27
 37a:	af 91       	pop	r26
 37c:	9f 91       	pop	r25
 37e:	8f 91       	pop	r24
 380:	7f 91       	pop	r23
 382:	6f 91       	pop	r22
 384:	5f 91       	pop	r21
 386:	4f 91       	pop	r20
 388:	3f 91       	pop	r19
 38a:	2f 91       	pop	r18
 38c:	1f 91       	pop	r17
 38e:	0f 91       	pop	r16
 390:	ff 90       	pop	r15
 392:	ef 90       	pop	r14
 394:	df 90       	pop	r13
 396:	cf 90       	pop	r12
 398:	bf 90       	pop	r11
 39a:	af 90       	pop	r10
 39c:	9f 90       	pop	r9
 39e:	8f 90       	pop	r8
 3a0:	7f 90       	pop	r7
 3a2:	6f 90       	pop	r6
 3a4:	5f 90       	pop	r5
 3a6:	4f 90       	pop	r4
 3a8:	3f 90       	pop	r3
 3aa:	2f 90       	pop	r2
 3ac:	1f 90       	pop	r1
 3ae:	0f 90       	pop	r0
 3b0:	0f be       	out	0x3f, r0	; 63
 3b2:	0f 90       	pop	r0
 3b4:	18 95       	reti
 3b6:	08 95       	ret

000003b8 <_ZN10NanoKernel12atomic_startEv>:
 3b8:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <context_switch_enabled>
 3bc:	08 95       	ret

000003be <_ZN10NanoKernel10atomic_endEv>:
 3be:	81 e0       	ldi	r24, 0x01	; 1
 3c0:	80 93 08 03 	sts	0x0308, r24	; 0x800308 <context_switch_enabled>
 3c4:	08 95       	ret

000003c6 <_GLOBAL__sub_I_os>:
 3c6:	8d e0       	ldi	r24, 0x0D	; 13
 3c8:	93 e0       	ldi	r25, 0x03	; 3
 3ca:	0c 94 48 01 	jmp	0x290	; 0x290 <_ZN10NanoKernelC1Ev>

000003ce <__tablejump2__>:
 3ce:	ee 0f       	add	r30, r30
 3d0:	ff 1f       	adc	r31, r31
 3d2:	05 90       	lpm	r0, Z+
 3d4:	f4 91       	lpm	r31, Z
 3d6:	e0 2d       	mov	r30, r0
 3d8:	09 94       	ijmp

000003da <_exit>:
 3da:	f8 94       	cli

000003dc <__stop_program>:
 3dc:	ff cf       	rjmp	.-2      	; 0x3dc <__stop_program>
