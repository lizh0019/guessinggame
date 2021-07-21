all: README.md


README.md: guessinggame.sh
	echo "# The title of this project:" > README.md
	echo "Guessing Game" >> README.md
	echo "# Date and Time at which make was run:" >> README.md
	DATE=$(date)
	echo $DATE >> README.md
	echo "# The number of lines of code contained:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
