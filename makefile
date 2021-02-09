README.md:
	touch README.md

README.md: guessinggame.sh
	echo "Project: Bash, Make, Git, and GitHub   " > README.md | echo "- " >> README.md | date >> README.md | echo "* " >> README.md | wc -l guessinggame.sh >> README.md

