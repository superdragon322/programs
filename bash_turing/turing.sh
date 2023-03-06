#! /bin/bash

count=0
arr=()

while IFS= read -r line; do
  arr+=$line
done < turing.txt
echo ${arr[@]}

while [ $count -lt 20 ] 
do
  curr=${arr[count]}
  if [[ $curr -eq 0 ]]
  then
    arr[count]=1
  fi
  if [[ $curr -eq 1 ]]
  then
    count=0
  fi
  count=$((count+1))
done
echo ${arr[@]}
