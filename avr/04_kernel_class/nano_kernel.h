#ifndef _NANO_KERNEL_H_
#define _NANO_KERNEL_H_

typedef void (thread_func)(void);

#define     OS_STACK_SIZE           ((unsigned int)128)
#define     OS_THREADS_COUNT        ((unsigned int)4)
#define     OS_CONTEXT_SIZE         ((unsigned int)3 + 32)

class NanoKernel
{
    public:
        NanoKernel();

        unsigned char add_thread(thread_func &func);
        void start();

        void atomic_start();
        void atomic_end();
};

extern NanoKernel os;


#endif
