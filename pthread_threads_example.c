#include <stdio.h>
#include <pthread.h>

void* thread_fun1() {
    for (int i = 1; i <= 500; i++) {
        printf("%d ", i);
        fflush(stdout);
    }
    return NULL;
}

void* thread_fun2() {
    for (int i = 501; i <= 1000; i++) {
        printf("%d ", i);
        fflush(stdout);
    }
    return NULL;
}

int main() {
    pthread_t t1, t2;

    pthread_create(&t1, NULL, thread_fun1, NULL);
    pthread_create(&t2, NULL, thread_fun2, NULL);

    pthread_join(t1, NULL);
    printf("\n");
    pthread_join(t2, NULL);

    return 0;
} 