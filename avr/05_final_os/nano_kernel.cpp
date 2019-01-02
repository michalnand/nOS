#include <nano_kernel.h>

#include <avr/io.h>
#include <avr/interrupt.h>

NanoKernel os;

#define OS_STACK_END    (OS_STACK_SIZE-1)


//thread stack pointer and stack values
struct sThreadControllBlock
{
    unsigned int  sp;
    unsigned char stack[OS_STACK_SIZE];
};


volatile unsigned int   current_stack;    //store current stack pointer value
volatile unsigned char  threads_count, current_thread;  //store current tread idx
volatile bool context_switch_enabled;
volatile sThreadControllBlock tcb[OS_THREADS_COUNT];


#define save_context() \
    asm volatile ( \
        "push r0 \n\t" \
        "in r0,  __SREG__ \n\t" \
        "push r0 \n\t" \
        "push r1 \n\t" \
        "push r2 \n\t" \
        "push r3 \n\t" \
        "push r4 \n\t" \
        "push r5 \n\t" \
        "push r6 \n\t" \
        "push r7 \n\t" \
        "push r8 \n\t" \
        "push r9 \n\t" \
        "push r10 \n\t" \
        "push r11 \n\t" \
        "push r12 \n\t" \
        "push r13 \n\t" \
        "push r14 \n\t" \
        "push r15 \n\t" \
        "push r16 \n\t" \
        "push r17 \n\t" \
        "push r18 \n\t" \
        "push r19 \n\t" \
        "push r20 \n\t" \
        "push r21 \n\t" \
        "push r22 \n\t" \
        "push r23 \n\t" \
        "push r24 \n\t" \
        "push r25 \n\t" \
        "push r26 \n\t" \
        "push r27 \n\t" \
        "push r28 \n\t" \
        "push r29 \n\t" \
        "push r30 \n\t" \
        "push r31 \n\t" \
        "in r28, __SP_L__ \n\t" \
        "in r29, __SP_H__ \n\t" \
        "sts current_stack+0, r28 \n\t" \
        "sts current_stack+1, r29 \n\t" \
);

#define restore_context() \
    asm volatile ( \
        "lds r28, current_stack+0 \n\t" \
        "lds r29, current_stack+1 \n\t" \
        "out __SP_L__, r28 \n\t" \
        "out __SP_H__, r29 \n\t" \
        "pop r31 \n\t" \
        "pop r30 \n\t" \
        "pop r29 \n\t" \
        "pop r28 \n\t" \
        "pop r27 \n\t" \
        "pop r26 \n\t" \
        "pop r25 \n\t" \
        "pop r24 \n\t" \
        "pop r23 \n\t" \
        "pop r22 \n\t" \
        "pop r21 \n\t" \
        "pop r20 \n\t" \
        "pop r19 \n\t" \
        "pop r18 \n\t" \
        "pop r17 \n\t" \
        "pop r16 \n\t" \
        "pop r15 \n\t" \
        "pop r14 \n\t" \
        "pop r13 \n\t" \
        "pop r12 \n\t" \
        "pop r11 \n\t" \
        "pop r10 \n\t" \
        "pop r9 \n\t" \
        "pop r8 \n\t" \
        "pop r7 \n\t" \
        "pop r6 \n\t" \
        "pop r5 \n\t" \
        "pop r4 \n\t" \
        "pop r3 \n\t" \
        "pop r2 \n\t" \
        "pop r1 \n\t" \
        "pop r0 \n\t" \
        "out __SREG__, r0 \n\t" \
        "pop r0 \n\t" \
        "reti \n\t" \
);


//main OS scheduler
ISR(TIMER2_COMPA_vect) __attribute__((naked));
ISR(TIMER2_COMPA_vect)
{
    //save all registers
    save_context();

    //save stack pointer
    tcb[current_thread].sp = current_stack;

    if (context_switch_enabled)
    {
        //switch to next thread -> round robin
        //equivalent with current_thread = (current_thread + 1)%threads_count
        if (current_thread < (threads_count-1))
            current_thread++;
        else
            current_thread = 0;
    }

    //load stack pointer
    current_stack = tcb[current_thread].sp;

    //restore all registers
    restore_context();
}

NanoKernel::NanoKernel()
{
    current_stack   = 0;
    current_thread  = 0;
    threads_count   = 0;

    context_switch_enabled = true;

    for (unsigned int j = 0; j < OS_THREADS_COUNT; j++)
    {
        //clear stack
        for (unsigned int i = 0; i < OS_STACK_SIZE; i++)
            tcb[j].stack[i] = 0;

        //initial SP value
        //SP to stack end - context size
        tcb[j].sp = (unsigned int)(&tcb[j].stack[OS_STACK_END - OS_CONTEXT_SIZE]);
    }
}

unsigned char NanoKernel::add_thread(thread_func &func)
{
    if (threads_count < OS_THREADS_COUNT)
    {
        tcb[threads_count].stack[OS_STACK_END - 1] = ((unsigned int)&func)>>8;   //PC points to thread function
        tcb[threads_count].stack[OS_STACK_END - 0] = ((unsigned int)&func);
        threads_count++;

        return 1;
    }

    return 0;
}

void NanoKernel::start()
{
    current_stack = tcb[current_thread].sp;

    //TIMER2 interrupt init
    OCR2A = 124; //16MHz/(128*(124+1)) = 1000Hz
    TCCR2A |= (1 << WGM21); //CTC mode
    TCCR2B |= (1 << CS22) | (1 << CS20); //F_CPU/128
    TIMSK2 |= (1 << OCIE2A); //timer interrupt enable

    restore_context();
}

void NanoKernel::atomic_start()
{
    context_switch_enabled = false;
}

void NanoKernel::atomic_end()
{
    context_switch_enabled = true;
}
