#!/bin/bash
arr=(1 2 2 3 4 4 4 5 1)
n=${#arr[@]}
visited=()

i=0
while (( i < n ))
do
    if [[ ${visited[i]} != 1 ]]; then
        count=1
        j=$((i+1))
        while (( j < n ))
        do
            if (( arr[i] == arr[j] )); then
                ((count++))
                visited[j]=1
            fi
            ((j++))
        done
        echo "Element ${arr[i]} appears $count times"
    fi
    ((i++))
done
