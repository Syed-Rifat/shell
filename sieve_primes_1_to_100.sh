#!/bin/bash
limit=100
primes=()
is_prime=()

# Initialize
for ((i=0; i<=limit; i++)); do
    is_prime[i]=1
done

is_prime[0]=0
is_prime[1]=0

for ((i=2; i*i<=limit; i++)); do
    if (( is_prime[i] == 1 )); then
        for ((j=i*i; j<=limit; j+=i)); do
            is_prime[j]=0
        done
    fi
done

# Collect primes
for ((i=2; i<=limit; i++)); do
    if (( is_prime[i] == 1 )); then
        primes+=($i)
    fi
done

echo "Primes from 1 to 100:"
echo "${primes[@]}"
