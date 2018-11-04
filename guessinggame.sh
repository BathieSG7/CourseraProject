function fileNumberDir {
echo $(ls -1 | wc -l)
}

counter=0
answer=''
while [[ ! ($answer -eq  $(fileNumberDir) ) ]]
do 
	
echo Guess the number of file int the current directory
read answer
if [[ $answer -eq  $(fileNumberDir) ]]
then
	let counter++
	echo "Congratulations ! you guessed it after $counter attempts " 
	break
fi

if [[ $answer -gt  $(fileNumberDir) ]]
then 
	echo the right number is less than $answer
else
	echo the right number is more than $answer
fi
let counter++
done

