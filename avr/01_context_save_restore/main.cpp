#include <avr/io.h>
#include <avr/interrupt.h>
#include <nano_kernel.h>

#define LED_DDR        DDRB
#define LED_PORT       PORTB
#define LED_PIN        (1<<5)

//init usart, 9600Bd
void usart_init()
{
    UBRR0H = 0;
    UBRR0L = 103;
    UCSR0B = 0 << RXEN0 | 1 << TXEN0;
    UCSR0C = 0 << USBS0 | 3 << UCSZ00;
}

//wait for usart ready and print char
void putchar(char ch)
{
    while(!(UCSR0A&(1<<UDRE0)))
        __asm("nop");

    UDR0 = ch;
}

//dummy delay
void delay_loops(unsigned long int loops)
{
    while (loops--)
        __asm("nop");
}

//user thread, blinking and printing
void thread_a()
{
    while (1)
    {
        LED_PORT^= LED_PIN;
        putchar('A');
        delay_loops(50000);
    }
}

//user thread, blinking and printing
void thread_b()
{
    while (1)
    {
        LED_PORT^= LED_PIN;
        putchar('B');
        delay_loops(100000);
    }
}

//user thread, blinking and printing
void thread_c()
{
    while (1)
    {
        LED_PORT^= LED_PIN;
        putchar('C');
        delay_loops(200000);
    }
}


int main()
{
    DDRB|= LED_DDR;
    LED_PORT|= LED_PIN;

    usart_init();

    os_init();
    thread_a();
}
