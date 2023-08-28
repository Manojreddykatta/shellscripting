#!/bin/bash
first_number=0
second_number=1

while [ $second_number -le 100 ] ; do
    echo "$second_number"
    next_number=$((first_number + second_number))
    first_number=$second_number
    second_number=$next_number
done