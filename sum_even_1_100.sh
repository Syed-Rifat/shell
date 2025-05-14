sum=0
for ((i=1;i<=100;i++)); do
    if ((i%2==0)); then
        ((sum=sum+i))
    fi
done
echo $sum
