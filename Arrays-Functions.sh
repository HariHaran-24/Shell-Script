Iterate_Array(){
    n=${#arr[*]}
    for i in "${arr[@]}"
    do
    echo $i
    done
    
}

Bubble_Sort()
{
    n=${#arr[*]}
    for ((i=0; i<n;i++))
    do  
        for((j=0;j<n-i-1;j++))
        do
        if [ ${arr[j]} \> ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
        done
    done
    #echo ${arr[@]} 
}

Average()
{
    n=${#val[*]}
    s=0
    for((i=0;i<n;i++))
    do
    ((s+= ${val[$i]}))
    done
    echo $s
}

Largest()
{
    m=${val[0]}
    for i in ${val[@]:1};
    do
    if (( $i > $m )); 
    then m=$i; 
    fi; 
    done
    echo $m    
}

Divide_Odd_Even()
{
    for i in ${val[@]}
    do
    if (($i %2 == 0))
    then e+=($i)
    else o+=($i)
    fi
    done
    echo "Even Numbers" ${e[@]}
    echo "Odd Numbers " ${o[@]}
}
arr=("Hari" "Guna")
#adding in array
arr+=("John")

Iterate_Array ${arr[@]}
echo ${arr[@]} 

Bubble_Sort ${arr[@]}
echo ${arr[@]} 
val=(3 5 6 7 10)

Average ${val[@]}

Largest ${arr[@]}

Divide_Odd_Even ${arr[@]}

