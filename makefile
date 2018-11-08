MARKDOWN= markdown

all: README.md

#README.html: README.md
#pandoc -o $@ @<	 
#multimarkdown --to=html --full --smart $< >> $@
README.md:
	@echo "# GuessingGame Project" >README.md
	@d=$(stat -c %y README.md)
	@echo "The date when this **makefile**  was created is $dd" >>README.md
	
	@echo "Number of lines in **guessinggame** code is $(< guessinggame wc -l)" >> README.md
