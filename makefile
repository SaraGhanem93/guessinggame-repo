MARKDOWN= markdown

all: README.md

#README.html: README.md
#pandoc -o $@ @<	 
#multimarkdown --to=html --full --smart $< >> $@
README.md:
	@echo "# GuessingGame Project" >README.md
	@dd=$(stat -c %y makefile)
	@echo "The date when this **makefile**  was created is $dd" >>README.md
