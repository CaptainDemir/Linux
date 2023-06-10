#!/bin/bash

function kill_zombies() {
    # Find all zombie processes
    zombies=$(ps -eo stat,pid | awk '$1 == "Z" {print $2}')

    if [ -z "$zombies" ]; then
        echo "No zombie processes found."
    else
        echo "Killing zombie processes..."
        # Kill each zombie process
        for pid in $zombies; do
            echo "Killing zombie process: $pid"
            kill -9 "$pid"
        done
        echo "All zombie processes killed."
    fi
}

# Call the function
kill_zombies
