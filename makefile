SHELL := /bin/bash



README.md: guessinggame.sh
	touch README.md
	echo "#The project name:\n" >> README.md
	basename $$PWD >> README.md
	echo "/n#The REAMDE.md file was created:\n" >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "/n#The number of lines of code contained in guessinggame.sh:\n" >> README.md
	cat guessinggame.sh | wc -l >> README.md		
clean:
	rm README.md
