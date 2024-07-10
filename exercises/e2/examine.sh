#!/bin/bash

echo "Starting program at $(date)" # Date will be substituted

echo "Running program $0 with pid $$"

stdout="/mnt/c/Users/vhli2/Documents/cs-fundamentals/missing-semester/exercises/e2/stdout.txt"
stderr="/mnt/c/Users/vhli2/Documents/cs-fundamentals/missing-semester/exercises/e2/stderr.txt"
touch $stdout
touch $stderr

count=0
while [[ $? -eq 0 ]];
do
	count=$((count+1))
    ./error_prone.sh >>$stdout 2>>$stderr
done
echo "It ran $count times"
cat $stdout
cat $stderr