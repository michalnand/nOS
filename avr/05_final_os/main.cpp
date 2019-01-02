#include <nano_kernel.h>

#include <usr.h>

int main()
{
    usr_init();
    usart_init();

    NanoKernel os;

    os.add_thread(thread_a);
    os.add_thread(thread_b);
    os.add_thread(thread_c);

    os.start();
}
