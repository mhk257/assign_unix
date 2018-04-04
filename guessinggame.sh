#!/usr/bin/env bash
# File: guessinggame.sh

num_files=$(ls -1 | wc -l)
echo $num_files
echo "Please enter your guess for the num. of files"
read user_guess

while [[ $num_files -ne $user_guess ]]
do
	let diff=$user_guess-$num_files
	#diff=${diff#-}
	if [[ $diff -gt 10 ]]
	then
		echo "Your guess is too high"
	elif [[ $diff -lt -10 ]]
	then
		echo "Your guess is too low"
	else
		echo "You are close to true"
	fi
	echo "Please try again"
	read user_guess
done

echo "Congratulations! you guessed correctly"
