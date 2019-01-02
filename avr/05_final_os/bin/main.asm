
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
  1c:	0c 94 d4 00 	jmp	0x1a8	; 0x1a8 <__vector_7>
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
  68:	f2 01       	movw	r30, r4

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
  92:	0e 94 f6 01 	call	0x3ec	; 0x3ec <__tablejump2__>
  96:	c4 33       	cpi	r28, 0x34	; 52
  98:	d1 07       	cpc	r29, r17
  9a:	c9 f7       	brne	.-14     	; 0x8e <__do_global_ctors+0x8>
  9c:	0e 94 ab 00 	call	0x156	; 0x156 <main>
  a0:	0c 94 fc 01 	jmp	0x3f8	; 0x3f8 <_exit>

000000a4 <__bad_interrupt>:
  a4:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a8 <_Z8usr_initv>:
  a8:	94 b1       	in	r25, 0x04	; 4
  aa:	84 b1       	in	r24, 0x04	; 4
  ac:	89 2b       	or	r24, r25
  ae:	84 b9       	out	0x04, r24	; 4
  b0:	2d 9a       	sbi	0x05, 5	; 5
  b2:	08 95       	ret

000000b4 <_Z10usart_initv>:
  b4:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
  b8:	87 e6       	ldi	r24, 0x67	; 103
  ba:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
  be:	88 e0       	ldi	r24, 0x08	; 8
  c0:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
  c4:	86 e0       	ldi	r24, 0x06	; 6
  c6:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
  ca:	08 95       	ret

000000cc <_Z7putcharc>:
  cc:	cf 93       	push	r28
  ce:	c8 2f       	mov	r28, r24
  d0:	8d e0       	ldi	r24, 0x0D	; 13
  d2:	93 e0       	ldi	r25, 0x03	; 3
  d4:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <_ZN10NanoKernel12atomic_startEv>
  d8:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
  dc:	85 fd       	sbrc	r24, 5
  de:	02 c0       	rjmp	.+4      	; 0xe4 <_Z7putcharc+0x18>
  e0:	00 00       	nop
  e2:	fa cf       	rjmp	.-12     	; 0xd8 <_Z7putcharc+0xc>
  e4:	c0 93 c6 00 	sts	0x00C6, r28	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
  e8:	8d e0       	ldi	r24, 0x0D	; 13
  ea:	93 e0       	ldi	r25, 0x03	; 3
  ec:	cf 91       	pop	r28
  ee:	0c 94 ee 01 	jmp	0x3dc	; 0x3dc <_ZN10NanoKernel10atomic_endEv>

000000f2 <_Z11delay_loopsm>:
  f2:	61 50       	subi	r22, 0x01	; 1
  f4:	71 09       	sbc	r23, r1
  f6:	81 09       	sbc	r24, r1
  f8:	91 09       	sbc	r25, r1
  fa:	10 f0       	brcs	.+4      	; 0x100 <_Z11delay_loopsm+0xe>
  fc:	00 00       	nop
  fe:	f9 cf       	rjmp	.-14     	; 0xf2 <_Z11delay_loopsm>
 100:	08 95       	ret

00000102 <_Z8thread_av>:
 102:	c0 e2       	ldi	r28, 0x20	; 32
 104:	85 b1       	in	r24, 0x05	; 5
 106:	8c 27       	eor	r24, r28
 108:	85 b9       	out	0x05, r24	; 5
 10a:	81 e4       	ldi	r24, 0x41	; 65
 10c:	0e 94 66 00 	call	0xcc	; 0xcc <_Z7putcharc>
 110:	60 e5       	ldi	r22, 0x50	; 80
 112:	73 ec       	ldi	r23, 0xC3	; 195
 114:	80 e0       	ldi	r24, 0x00	; 0
 116:	90 e0       	ldi	r25, 0x00	; 0
 118:	0e 94 79 00 	call	0xf2	; 0xf2 <_Z11delay_loopsm>
 11c:	f3 cf       	rjmp	.-26     	; 0x104 <_Z8thread_av+0x2>

0000011e <_Z8thread_bv>:
 11e:	c0 e2       	ldi	r28, 0x20	; 32
 120:	85 b1       	in	r24, 0x05	; 5
 122:	8c 27       	eor	r24, r28
 124:	85 b9       	out	0x05, r24	; 5
 126:	82 e4       	ldi	r24, 0x42	; 66
 128:	0e 94 66 00 	call	0xcc	; 0xcc <_Z7putcharc>
 12c:	60 ea       	ldi	r22, 0xA0	; 160
 12e:	76 e8       	ldi	r23, 0x86	; 134
 130:	81 e0       	ldi	r24, 0x01	; 1
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	0e 94 79 00 	call	0xf2	; 0xf2 <_Z11delay_loopsm>
 138:	f3 cf       	rjmp	.-26     	; 0x120 <_Z8thread_bv+0x2>

0000013a <_Z8thread_cv>:
 13a:	c0 e2       	ldi	r28, 0x20	; 32
 13c:	85 b1       	in	r24, 0x05	; 5
 13e:	8c 27       	eor	r24, r28
 140:	85 b9       	out	0x05, r24	; 5
 142:	83 e4       	ldi	r24, 0x43	; 67
 144:	0e 94 66 00 	call	0xcc	; 0xcc <_Z7putcharc>
 148:	60 e4       	ldi	r22, 0x40	; 64
 14a:	7d e0       	ldi	r23, 0x0D	; 13
 14c:	83 e0       	ldi	r24, 0x03	; 3
 14e:	90 e0       	ldi	r25, 0x00	; 0
 150:	0e 94 79 00 	call	0xf2	; 0xf2 <_Z11delay_loopsm>
 154:	f3 cf       	rjmp	.-26     	; 0x13c <_Z8thread_cv+0x2>

00000156 <main>:
 156:	cf 93       	push	r28
 158:	df 93       	push	r29
 15a:	1f 92       	push	r1
 15c:	cd b7       	in	r28, 0x3d	; 61
 15e:	de b7       	in	r29, 0x3e	; 62
 160:	0e 94 54 00 	call	0xa8	; 0xa8 <_Z8usr_initv>
 164:	0e 94 5a 00 	call	0xb4	; 0xb4 <_Z10usart_initv>
 168:	ce 01       	movw	r24, r28
 16a:	01 96       	adiw	r24, 0x01	; 1
 16c:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10NanoKernelC1Ev>
 170:	61 e8       	ldi	r22, 0x81	; 129
 172:	70 e0       	ldi	r23, 0x00	; 0
 174:	ce 01       	movw	r24, r28
 176:	01 96       	adiw	r24, 0x01	; 1
 178:	0e 94 83 01 	call	0x306	; 0x306 <_ZN10NanoKernel10add_threadERFvvE>
 17c:	6f e8       	ldi	r22, 0x8F	; 143
 17e:	70 e0       	ldi	r23, 0x00	; 0
 180:	ce 01       	movw	r24, r28
 182:	01 96       	adiw	r24, 0x01	; 1
 184:	0e 94 83 01 	call	0x306	; 0x306 <_ZN10NanoKernel10add_threadERFvvE>
 188:	6d e9       	ldi	r22, 0x9D	; 157
 18a:	70 e0       	ldi	r23, 0x00	; 0
 18c:	ce 01       	movw	r24, r28
 18e:	01 96       	adiw	r24, 0x01	; 1
 190:	0e 94 83 01 	call	0x306	; 0x306 <_ZN10NanoKernel10add_threadERFvvE>
 194:	ce 01       	movw	r24, r28
 196:	01 96       	adiw	r24, 0x01	; 1
 198:	0e 94 a1 01 	call	0x342	; 0x342 <_ZN10NanoKernel5startEv>
 19c:	80 e0       	ldi	r24, 0x00	; 0
 19e:	90 e0       	ldi	r25, 0x00	; 0
 1a0:	0f 90       	pop	r0
 1a2:	df 91       	pop	r29
 1a4:	cf 91       	pop	r28
 1a6:	08 95       	ret

000001a8 <__vector_7>:
 1a8:	0f 92       	push	r0
 1aa:	0f b6       	in	r0, 0x3f	; 63
 1ac:	0f 92       	push	r0
 1ae:	1f 92       	push	r1
 1b0:	2f 92       	push	r2
 1b2:	3f 92       	push	r3
 1b4:	4f 92       	push	r4
 1b6:	5f 92       	push	r5
 1b8:	6f 92       	push	r6
 1ba:	7f 92       	push	r7
 1bc:	8f 92       	push	r8
 1be:	9f 92       	push	r9
 1c0:	af 92       	push	r10
 1c2:	bf 92       	push	r11
 1c4:	cf 92       	push	r12
 1c6:	df 92       	push	r13
 1c8:	ef 92       	push	r14
 1ca:	ff 92       	push	r15
 1cc:	0f 93       	push	r16
 1ce:	1f 93       	push	r17
 1d0:	2f 93       	push	r18
 1d2:	3f 93       	push	r19
 1d4:	4f 93       	push	r20
 1d6:	5f 93       	push	r21
 1d8:	6f 93       	push	r22
 1da:	7f 93       	push	r23
 1dc:	8f 93       	push	r24
 1de:	9f 93       	push	r25
 1e0:	af 93       	push	r26
 1e2:	bf 93       	push	r27
 1e4:	cf 93       	push	r28
 1e6:	df 93       	push	r29
 1e8:	ef 93       	push	r30
 1ea:	ff 93       	push	r31
 1ec:	cd b7       	in	r28, 0x3d	; 61
 1ee:	de b7       	in	r29, 0x3e	; 62
 1f0:	c0 93 0b 03 	sts	0x030B, r28	; 0x80030b <current_stack>
 1f4:	d0 93 0c 03 	sts	0x030C, r29	; 0x80030c <current_stack+0x1>
 1f8:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <current_thread>
 1fc:	80 91 0b 03 	lds	r24, 0x030B	; 0x80030b <current_stack>
 200:	90 91 0c 03 	lds	r25, 0x030C	; 0x80030c <current_stack+0x1>
 204:	22 e8       	ldi	r18, 0x82	; 130
 206:	e2 9f       	mul	r30, r18
 208:	f0 01       	movw	r30, r0
 20a:	11 24       	eor	r1, r1
 20c:	e0 50       	subi	r30, 0x00	; 0
 20e:	ff 4f       	sbci	r31, 0xFF	; 255
 210:	91 83       	std	Z+1, r25	; 0x01
 212:	80 83       	st	Z, r24
 214:	80 91 08 03 	lds	r24, 0x0308	; 0x800308 <context_switch_enabled>
 218:	88 23       	and	r24, r24
 21a:	91 f0       	breq	.+36     	; 0x240 <__vector_7+0x98>
 21c:	20 91 09 03 	lds	r18, 0x0309	; 0x800309 <current_thread>
 220:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <threads_count>
 224:	30 e0       	ldi	r19, 0x00	; 0
 226:	90 e0       	ldi	r25, 0x00	; 0
 228:	01 97       	sbiw	r24, 0x01	; 1
 22a:	28 17       	cp	r18, r24
 22c:	39 07       	cpc	r19, r25
 22e:	34 f4       	brge	.+12     	; 0x23c <__vector_7+0x94>
 230:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <current_thread>
 234:	8f 5f       	subi	r24, 0xFF	; 255
 236:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <current_thread>
 23a:	02 c0       	rjmp	.+4      	; 0x240 <__vector_7+0x98>
 23c:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <current_thread>
 240:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <current_thread>
 244:	82 e8       	ldi	r24, 0x82	; 130
 246:	e8 9f       	mul	r30, r24
 248:	f0 01       	movw	r30, r0
 24a:	11 24       	eor	r1, r1
 24c:	e0 50       	subi	r30, 0x00	; 0
 24e:	ff 4f       	sbci	r31, 0xFF	; 255
 250:	80 81       	ld	r24, Z
 252:	91 81       	ldd	r25, Z+1	; 0x01
 254:	90 93 0c 03 	sts	0x030C, r25	; 0x80030c <current_stack+0x1>
 258:	80 93 0b 03 	sts	0x030B, r24	; 0x80030b <current_stack>
 25c:	c0 91 0b 03 	lds	r28, 0x030B	; 0x80030b <current_stack>
 260:	d0 91 0c 03 	lds	r29, 0x030C	; 0x80030c <current_stack+0x1>
 264:	cd bf       	out	0x3d, r28	; 61
 266:	de bf       	out	0x3e, r29	; 62
 268:	ff 91       	pop	r31
 26a:	ef 91       	pop	r30
 26c:	df 91       	pop	r29
 26e:	cf 91       	pop	r28
 270:	bf 91       	pop	r27
 272:	af 91       	pop	r26
 274:	9f 91       	pop	r25
 276:	8f 91       	pop	r24
 278:	7f 91       	pop	r23
 27a:	6f 91       	pop	r22
 27c:	5f 91       	pop	r21
 27e:	4f 91       	pop	r20
 280:	3f 91       	pop	r19
 282:	2f 91       	pop	r18
 284:	1f 91       	pop	r17
 286:	0f 91       	pop	r16
 288:	ff 90       	pop	r15
 28a:	ef 90       	pop	r14
 28c:	df 90       	pop	r13
 28e:	cf 90       	pop	r12
 290:	bf 90       	pop	r11
 292:	af 90       	pop	r10
 294:	9f 90       	pop	r9
 296:	8f 90       	pop	r8
 298:	7f 90       	pop	r7
 29a:	6f 90       	pop	r6
 29c:	5f 90       	pop	r5
 29e:	4f 90       	pop	r4
 2a0:	3f 90       	pop	r3
 2a2:	2f 90       	pop	r2
 2a4:	1f 90       	pop	r1
 2a6:	0f 90       	pop	r0
 2a8:	0f be       	out	0x3f, r0	; 63
 2aa:	0f 90       	pop	r0
 2ac:	18 95       	reti

000002ae <_ZN10NanoKernelC1Ev>:
 2ae:	10 92 0c 03 	sts	0x030C, r1	; 0x80030c <current_stack+0x1>
 2b2:	10 92 0b 03 	sts	0x030B, r1	; 0x80030b <current_stack>
 2b6:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <current_thread>
 2ba:	10 92 0a 03 	sts	0x030A, r1	; 0x80030a <threads_count>
 2be:	81 e0       	ldi	r24, 0x01	; 1
 2c0:	80 93 08 03 	sts	0x0308, r24	; 0x800308 <context_switch_enabled>
 2c4:	4e e5       	ldi	r20, 0x5E	; 94
 2c6:	51 e0       	ldi	r21, 0x01	; 1
 2c8:	80 e0       	ldi	r24, 0x00	; 0
 2ca:	90 e0       	ldi	r25, 0x00	; 0
 2cc:	62 e8       	ldi	r22, 0x82	; 130
 2ce:	20 e0       	ldi	r18, 0x00	; 0
 2d0:	30 e0       	ldi	r19, 0x00	; 0
 2d2:	68 9f       	mul	r22, r24
 2d4:	f0 01       	movw	r30, r0
 2d6:	69 9f       	mul	r22, r25
 2d8:	f0 0d       	add	r31, r0
 2da:	11 24       	eor	r1, r1
 2dc:	e0 50       	subi	r30, 0x00	; 0
 2de:	ff 4f       	sbci	r31, 0xFF	; 255
 2e0:	df 01       	movw	r26, r30
 2e2:	a2 0f       	add	r26, r18
 2e4:	b3 1f       	adc	r27, r19
 2e6:	12 96       	adiw	r26, 0x02	; 2
 2e8:	1c 92       	st	X, r1
 2ea:	2f 5f       	subi	r18, 0xFF	; 255
 2ec:	3f 4f       	sbci	r19, 0xFF	; 255
 2ee:	20 38       	cpi	r18, 0x80	; 128
 2f0:	31 05       	cpc	r19, r1
 2f2:	b1 f7       	brne	.-20     	; 0x2e0 <_ZN10NanoKernelC1Ev+0x32>
 2f4:	51 83       	std	Z+1, r21	; 0x01
 2f6:	40 83       	st	Z, r20
 2f8:	01 96       	adiw	r24, 0x01	; 1
 2fa:	4e 57       	subi	r20, 0x7E	; 126
 2fc:	5f 4f       	sbci	r21, 0xFF	; 255
 2fe:	84 30       	cpi	r24, 0x04	; 4
 300:	91 05       	cpc	r25, r1
 302:	29 f7       	brne	.-54     	; 0x2ce <_ZN10NanoKernelC1Ev+0x20>
 304:	08 95       	ret

00000306 <_ZN10NanoKernel10add_threadERFvvE>:
 306:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <threads_count>
 30a:	84 30       	cpi	r24, 0x04	; 4
 30c:	c0 f4       	brcc	.+48     	; 0x33e <_ZN10NanoKernel10add_threadERFvvE+0x38>
 30e:	e0 91 0a 03 	lds	r30, 0x030A	; 0x80030a <threads_count>
 312:	82 e8       	ldi	r24, 0x82	; 130
 314:	8e 9f       	mul	r24, r30
 316:	f0 01       	movw	r30, r0
 318:	11 24       	eor	r1, r1
 31a:	e0 58       	subi	r30, 0x80	; 128
 31c:	fe 4f       	sbci	r31, 0xFE	; 254
 31e:	70 83       	st	Z, r23
 320:	e0 91 0a 03 	lds	r30, 0x030A	; 0x80030a <threads_count>
 324:	8e 9f       	mul	r24, r30
 326:	f0 01       	movw	r30, r0
 328:	11 24       	eor	r1, r1
 32a:	ef 57       	subi	r30, 0x7F	; 127
 32c:	fe 4f       	sbci	r31, 0xFE	; 254
 32e:	60 83       	st	Z, r22
 330:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <threads_count>
 334:	8f 5f       	subi	r24, 0xFF	; 255
 336:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <threads_count>
 33a:	81 e0       	ldi	r24, 0x01	; 1
 33c:	08 95       	ret
 33e:	80 e0       	ldi	r24, 0x00	; 0
 340:	08 95       	ret

00000342 <_ZN10NanoKernel5startEv>:
 342:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <current_thread>
 346:	82 e8       	ldi	r24, 0x82	; 130
 348:	e8 9f       	mul	r30, r24
 34a:	f0 01       	movw	r30, r0
 34c:	11 24       	eor	r1, r1
 34e:	e0 50       	subi	r30, 0x00	; 0
 350:	ff 4f       	sbci	r31, 0xFF	; 255
 352:	80 81       	ld	r24, Z
 354:	91 81       	ldd	r25, Z+1	; 0x01
 356:	90 93 0c 03 	sts	0x030C, r25	; 0x80030c <current_stack+0x1>
 35a:	80 93 0b 03 	sts	0x030B, r24	; 0x80030b <current_stack>
 35e:	8c e7       	ldi	r24, 0x7C	; 124
 360:	80 93 b3 00 	sts	0x00B3, r24	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 364:	e0 eb       	ldi	r30, 0xB0	; 176
 366:	f0 e0       	ldi	r31, 0x00	; 0
 368:	80 81       	ld	r24, Z
 36a:	82 60       	ori	r24, 0x02	; 2
 36c:	80 83       	st	Z, r24
 36e:	e1 eb       	ldi	r30, 0xB1	; 177
 370:	f0 e0       	ldi	r31, 0x00	; 0
 372:	80 81       	ld	r24, Z
 374:	85 60       	ori	r24, 0x05	; 5
 376:	80 83       	st	Z, r24
 378:	e0 e7       	ldi	r30, 0x70	; 112
 37a:	f0 e0       	ldi	r31, 0x00	; 0
 37c:	80 81       	ld	r24, Z
 37e:	82 60       	ori	r24, 0x02	; 2
 380:	80 83       	st	Z, r24
 382:	c0 91 0b 03 	lds	r28, 0x030B	; 0x80030b <current_stack>
 386:	d0 91 0c 03 	lds	r29, 0x030C	; 0x80030c <current_stack+0x1>
 38a:	cd bf       	out	0x3d, r28	; 61
 38c:	de bf       	out	0x3e, r29	; 62
 38e:	ff 91       	pop	r31
 390:	ef 91       	pop	r30
 392:	df 91       	pop	r29
 394:	cf 91       	pop	r28
 396:	bf 91       	pop	r27
 398:	af 91       	pop	r26
 39a:	9f 91       	pop	r25
 39c:	8f 91       	pop	r24
 39e:	7f 91       	pop	r23
 3a0:	6f 91       	pop	r22
 3a2:	5f 91       	pop	r21
 3a4:	4f 91       	pop	r20
 3a6:	3f 91       	pop	r19
 3a8:	2f 91       	pop	r18
 3aa:	1f 91       	pop	r17
 3ac:	0f 91       	pop	r16
 3ae:	ff 90       	pop	r15
 3b0:	ef 90       	pop	r14
 3b2:	df 90       	pop	r13
 3b4:	cf 90       	pop	r12
 3b6:	bf 90       	pop	r11
 3b8:	af 90       	pop	r10
 3ba:	9f 90       	pop	r9
 3bc:	8f 90       	pop	r8
 3be:	7f 90       	pop	r7
 3c0:	6f 90       	pop	r6
 3c2:	5f 90       	pop	r5
 3c4:	4f 90       	pop	r4
 3c6:	3f 90       	pop	r3
 3c8:	2f 90       	pop	r2
 3ca:	1f 90       	pop	r1
 3cc:	0f 90       	pop	r0
 3ce:	0f be       	out	0x3f, r0	; 63
 3d0:	0f 90       	pop	r0
 3d2:	18 95       	reti
 3d4:	08 95       	ret

000003d6 <_ZN10NanoKernel12atomic_startEv>:
 3d6:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <context_switch_enabled>
 3da:	08 95       	ret

000003dc <_ZN10NanoKernel10atomic_endEv>:
 3dc:	81 e0       	ldi	r24, 0x01	; 1
 3de:	80 93 08 03 	sts	0x0308, r24	; 0x800308 <context_switch_enabled>
 3e2:	08 95       	ret

000003e4 <_GLOBAL__sub_I_os>:
 3e4:	8d e0       	ldi	r24, 0x0D	; 13
 3e6:	93 e0       	ldi	r25, 0x03	; 3
 3e8:	0c 94 57 01 	jmp	0x2ae	; 0x2ae <_ZN10NanoKernelC1Ev>

000003ec <__tablejump2__>:
 3ec:	ee 0f       	add	r30, r30
 3ee:	ff 1f       	adc	r31, r31
 3f0:	05 90       	lpm	r0, Z+
 3f2:	f4 91       	lpm	r31, Z
 3f4:	e0 2d       	mov	r30, r0
 3f6:	09 94       	ijmp

000003f8 <_exit>:
 3f8:	f8 94       	cli

000003fa <__stop_program>:
 3fa:	ff cf       	rjmp	.-2      	; 0x3fa <__stop_program>
