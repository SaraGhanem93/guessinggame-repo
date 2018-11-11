MARKDOWN= markdown

all: README.md

#README.html: README.md
#pandoc -o $@ @<	 
#multimarkdown --to=html --full --smart $< >> $@
README.md:
	@echo "# GuessingGame Project" >README.md
	@count=$(< guessinggame wc -l)
	@d=$(lc -c %y makefile)
	@echo "The date when this **makefile**  was created is: " >>README.md
	@date >> README.md
	@echo "Number of lines in **guessinggame** code is " >> README.md
	(< guessinggame.sh wc -l) >> README.md
