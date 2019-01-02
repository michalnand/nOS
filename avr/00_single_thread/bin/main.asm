
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   8:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  10:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  14:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  18:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  1c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  20:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  24:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  28:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  2c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  30:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  34:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  38:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  3c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  40:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  44:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  48:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  4c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  50:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  54:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  58:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  5c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  60:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  64:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	0e 94 6b 00 	call	0xd6	; 0xd6 <main>
  78:	0c 94 74 00 	jmp	0xe8	; 0xe8 <_exit>

0000007c <__bad_interrupt>:
  7c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000080 <_Z10usart_initv>:
  80:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
  84:	87 e6       	ldi	r24, 0x67	; 103
  86:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
  8a:	88 e0       	ldi	r24, 0x08	; 8
  8c:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
  90:	86 e0       	ldi	r24, 0x06	; 6
  92:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
  96:	08 95       	ret

00000098 <_Z7putcharc>:
  98:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
  9c:	95 fd       	sbrc	r25, 5
  9e:	02 c0       	rjmp	.+4      	; 0xa4 <_Z7putcharc+0xc>
  a0:	00 00       	nop
  a2:	fa cf       	rjmp	.-12     	; 0x98 <_Z7putcharc>
  a4:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
  a8:	08 95       	ret

000000aa <_Z11delay_loopsm>:
  aa:	61 50       	subi	r22, 0x01	; 1
  ac:	71 09       	sbc	r23, r1
  ae:	81 09       	sbc	r24, r1
  b0:	91 09       	sbc	r25, r1
  b2:	10 f0       	brcs	.+4      	; 0xb8 <_Z11delay_loopsm+0xe>
  b4:	00 00       	nop
  b6:	f9 cf       	rjmp	.-14     	; 0xaa <_Z11delay_loopsm>
  b8:	08 95       	ret

000000ba <_Z8thread_av>:
  ba:	c0 e2       	ldi	r28, 0x20	; 32
  bc:	85 b1       	in	r24, 0x05	; 5
  be:	8c 27       	eor	r24, r28
  c0:	85 b9       	out	0x05, r24	; 5
  c2:	81 e4       	ldi	r24, 0x41	; 65
  c4:	0e 94 4c 00 	call	0x98	; 0x98 <_Z7putcharc>
  c8:	60 e5       	ldi	r22, 0x50	; 80
  ca:	73 ec       	ldi	r23, 0xC3	; 195
  cc:	80 e0       	ldi	r24, 0x00	; 0
  ce:	90 e0       	ldi	r25, 0x00	; 0
  d0:	0e 94 55 00 	call	0xaa	; 0xaa <_Z11delay_loopsm>
  d4:	f3 cf       	rjmp	.-26     	; 0xbc <_Z8thread_av+0x2>

000000d6 <main>:
  d6:	94 b1       	in	r25, 0x04	; 4
  d8:	84 b1       	in	r24, 0x04	; 4
  da:	89 2b       	or	r24, r25
  dc:	84 b9       	out	0x04, r24	; 4
  de:	2d 9a       	sbi	0x05, 5	; 5
  e0:	0e 94 40 00 	call	0x80	; 0x80 <_Z10usart_initv>
  e4:	0e 94 5d 00 	call	0xba	; 0xba <_Z8thread_av>

000000e8 <_exit>:
  e8:	f8 94       	cli

000000ea <__stop_program>:
  ea:	ff cf       	rjmp	.-2      	; 0xea <__stop_program>
