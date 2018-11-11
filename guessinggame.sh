#!/usr/bin/env bash
function guessinggame {
while [[ $user_input -ne $files_number ]]
do
if [[ $user_input -gt $files_number ]]
then
echo "The entered guess is larger"
echo "Please try again"
read user_input
elif [[ $user_input -lt $files_number ]]
then
echo "The entered guess is less"
echo "Please try again"
read user_input
fi
done
echo "You entered the correct guess. Congrats!"
}
echo "Please enter your guess for the number of files in this directory"
read user_input
files_number=$(ls $pwd | wc -l)
guessinggame
