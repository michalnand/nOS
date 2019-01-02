#ifndef _USR_H_
#define _USR_H_

#include <avr/io.h>
#include <avr/interrupt.h>

void usr_init();

//init usart, 9600Bd
void usart_init();

//wait for usart ready and print char
void putchar(char ch);

//dummy delay
void delay_loops(unsigned long int loops);

//user thread, blinking and printing
void thread_a();

//user thread, blinking and printing
void thread_b();

//user thread, blinking and printing
void thread_c();

#endif
