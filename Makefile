SRC=./src

LATEX=pdflatex

FILENAME=main

SOURCES=$(SRC)/$(FILENAME).tex

all:
	$(LATEX) $(SOURCES)
	$(LATEX) $(SOURCES)
	$(LATEX) $(SOURCES)

clean:
	@rm -vf $(FILENAME).aux $(FILENAME).log $(FILENAME).nav $(FILENAME).out $(FILENAME).snm $(FILENAME).toc $(FILENAME).vrb
	@echo "Removed LaTeX buildfiles."

mrproper: clean
	@rm -vf $(FILENAME).pdf
	@echo "Removed PDF."

