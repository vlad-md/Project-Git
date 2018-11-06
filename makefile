SHELL := /bin/bash



README.md: guessinggame.sh
	touch README.md
	echo " # The project name: <br /> " >> README.md
	basename $$PWD >> README.md
	echo " # The README.md file was created: <br /> " >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo " # The number of lines of code contained in guessinggame.sh: <br /> " >> README.md
	cat guessinggame.sh | wc -l >> README.md		
clean:
	rm README.md
