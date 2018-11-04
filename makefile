all: README.md

README.md : guessinggame.sh
	echo "# Bash, Make, Git, and GitHub \n" > README.md
	echo "The make command was run :"  >> README.md
	date  >> README.md
	echo "\nThe number of lines of code it contains is :"  >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean :
	rm README.md

