all: README.md

README.md:
	touch README.md
	head -1 guessinggame.sh > README.md
	echo "Date this was made: `date '+%d/%m/%Y'`\n" >> README.md
	echo "Time this was made: `date '+%H:%M:%S'`\n" >> README.md
	echo "Number of lines in guessinggame.sh: `wc -l guessinggame.sh | egrep -o '[0-9]+'`" >> README.md

clean:
	rm README.md
