#!/bin/bash

if echo "$-" | grep -q "i"; then
    echo 'source a.sh'
else
    if [ "$0" = "${BASH_SOURCE:-}" ]; then
        echo 'bash a.sh'
    else
        if [ -n "${BASH_EXECUTION_STRING:-}" ]; then
            echo 'bash -c $(cat a.sh)"'
        elif [ -p /dev/stdin ]
            echo 'cat a.sh | bash'
        else
            echo "??"
        fi
    fi
fi
