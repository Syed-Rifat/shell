# Declare an empty array
arr() 

# Input array elements
echo "Enter $size elements:"
for (( i=0; i<size; i++ ))
do
    read -p "Element [$i]: " element
    arr[$i]=$element
done

# Output elements using for loop
echo "array: ${arr[@]}"