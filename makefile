SHELL := /bin/bash



README.md: guessinggame.sh
	touch README.md
	echo "The project name:" >> README.md
	basename $$PWD >> README.md
	echo "The REAMDE.md file was created:" >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md		
clean:
	rm README.md
