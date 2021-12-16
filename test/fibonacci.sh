#!/usr/bin/env bash

MEMO=( 1 1 )


function main() {
    local i

    for i in "$@"; do
        fib $(( i ))
    done
}


function fib() {
    local i=$1

    # Sanity check
    if (( i < 0 )); then
        i=0
    fi

    # 
    if [[ -z "${MEMO[i]-}" ]]; then
        local left=$(fib $((i-1)) )
        local right=$(fib $((i-2)) )

        MEMO[i]=$(( left + right ))
    fi

    printf "%s\n" "${MEMO[i]}"
}


main "$@"


# vim:ft=bash
