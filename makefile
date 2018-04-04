all: readme.md

readme.md: 
	echo "#-----Guessing Game------" > readme.md
	echo "##This project contains the following number of code lines" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	echo "##The make file was run at the following time" >> readme.md
	date '+%A %W %Y %X' >> readme.md
clean:
	rm readme.md		  
