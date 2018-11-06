MARKDOWN= markdown

all: README.md

#README.html: README.md
#pandoc -o $@ @<	 
#multimarkdown --to=html --full --smart $< >> $@
README.md:
	@echo "# GuessingGame Project" >README.md
	@d=$(date +"%m-d-%y")
	@echo "The date when this *makefile * was created is " $d >>README.md
