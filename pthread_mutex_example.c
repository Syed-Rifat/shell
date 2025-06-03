#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

pthread_mutex_t mutex;
int x = 0;

void* race() {
    for (int i = 0; i < 100000; i++) {
        pthread_mutex_lock(&mutex);
        x++;
        pthread_mutex_unlock(&mutex);
    }
    return NULL;
}

int main() {
    pthread_t t1, t2;
    pthread_mutex_init(&mutex, NULL);

    pthread_create(&t1, NULL, race, NULL);
    pthread_create(&t2, NULL, race, NULL);

    pthread_join(t1, NULL);
    pthread_join(t2, NULL);

    printf("Final value of x: %d\n", x);

    pthread_mutex_destroy(&mutex);
    return 0;
} 