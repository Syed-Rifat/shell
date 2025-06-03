#!/bin/bash
arr=(1 2 3 4 5 6 7 8 9 10)
even=0
odd=0

for i in "${arr[@]}"
do
    if (( i % 2 == 0 )); then
        ((even++))
    else
        ((odd++))
    fi
done

echo "Even count: $even"
echo "Odd count: $odd"
