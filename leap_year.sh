read a
if (((a%4==0 && a%100!=0) || a%400==0)); then
    echo "$a is a Leap year"
else
    echo "not leap year"
fi
