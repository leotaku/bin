#!/usr/bin/env sh
for x in $(seq 0 8); do
    for i in $(seq 30 37); do
        for a in $(seq 40 47); do
            printf "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
        done
        echo
    done
done
