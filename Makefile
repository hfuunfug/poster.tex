SRC=./src

LATEX=pdflatex

SOURCES=$(SRC)/main.tex

all:
	$(LATEX) $(SOURCES)
	$(LATEX) $(SOURCES)
	$(LATEX) $(SOURCES)

nearly_clean:
	@rm -v $(shell find -name '*.(aux|log|nav|out|snm|toc|vrb)' -type f)
	@echo "Clean."

clean:
	@rm -v $(shell find -name '*.(aux|log|nav|out|pdf|snm|toc|vrb)' -type f)
	@echo "Clean."


