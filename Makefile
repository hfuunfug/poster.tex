SRC=./src

LATEX=pdflatex

FILENAME=main

SOURCES=$(SRC)/$(FILENAME).tex

OLD_SOURCES=$(SRC)/old.tex

all:
	$(LATEX) $(SOURCES)
	$(LATEX) $(SOURCES)
	$(LATEX) $(SOURCES)

old:
	$(LATEX) $(OLD_SOURCES)
	$(LATEX) $(OLD_SOURCES)
	$(LATEX) $(OLD_SOURCES)

clean:
	@rm -vf $(FILENAME).aux $(FILENAME).log $(FILENAME).nav $(FILENAME).out $(FILENAME).snm $(FILENAME).toc $(FILENAME).vrb
	@echo "Removed LaTeX buildfiles."

mrproper: clean
	@rm -vf $(FILENAME).pdf
	@echo "Removed PDF."

