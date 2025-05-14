for ((j=2;j<=100;j++)); do
    is_prime=1
    for ((i=2;i*i<=j;i++)); do
        if ((j%i == 0)); then
            is_prime=0
            break
        fi
    done
    if ((is_prime==1)); then
        echo $j
    fi
done
