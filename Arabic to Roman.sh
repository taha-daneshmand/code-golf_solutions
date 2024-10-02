#!/bin/bash
# © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

for num in "${@:1}"; do
    values=(1 4 5 9 10 40 50 90 100 400 500 900 1000)
    roman_numerals=("I" "IV" "V" "IX" "X" "XL" "L" "XC" "C" "CD" "D" "CM" "M")
    result=""
    index=${#values[@]}-1

    while (( num > 0 )); do
        while (( num >= values[index] )); do
            result+=${roman_numerals[index]}
            (( num -= values[index] ))
        done
        (( index-- ))
    done

    echo "$result"
done
