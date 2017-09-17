# Guessing game shell script

#!/usr/bin/env bash

# Guess the number of files in the current directory
# Idea: run loop while guess is wrong
# when guess is right, break out of loop

# The command 'ls -l | wc -l' gives one than the number of files
# so need to take away one to obtain correct variable
num_files=$(($(ls -l | wc -l) - 1))

function guessing {
	answer=$1 # function argument is the number we're guesssing

	if [[ $guess -eq $answer ]]
	then
		break
	fi

	echo "Have a guess at the number of files..."

	read guess

	if [[ $guess -gt $answer ]]
	then
		echo "Try a smaller number, you overestimated"
	fi

	if [[ $guess -lt $answer ]]
	then
		echo "Try a bigger number, you underestimated"
	fi
}
while
	guessing $num_files
do
	continue
done

echo "You got it, $(whoami)! There are $num_files files in current directory."
