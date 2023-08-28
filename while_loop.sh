#!/bin/bash
count=1
while [ $count -le 100 ]; do
    echo "$count"
    count=$((count + 1))
done