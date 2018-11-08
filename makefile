MARKDOWN= markdown

all: README.md

#README.html: README.md
#pandoc -o $@ @<	 
#multimarkdown --to=html --full --smart $< >> $@
README.md:
	@echo "# GuessingGame Project" >README.md
	@d=$(< guessinggame wc -l)
	@echo "The date when this **makefile**  was created is" >>README.md
	
	
	@echo "Number of lines in **guessinggame** code is $d" >> README.md
