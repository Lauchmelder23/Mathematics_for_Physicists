LATEX=pdflatex
OUT_DIR=out
LATEX_FLAGS=-output-directory=$(OUT_DIR)

script: script.tex
	mkdir -p out
	$(LATEX) $(LATEX_FLAGS) $^
	$(LATEX) $(LATEX_FLAGS) $^
	$(LATEX) $(LATEX_FLAGS) $^

PHONY: script
