# Source files
TEXFILES=constitution.tex

# Binaries
PDFLATEX=pdflatex

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean

all:
	$(PDFLATEX) `git log -1 --date=short --format=format:'\renewcommand{\datechanged}{Last Updated: Revision %h on %ad}'` '\input{constitution.tex}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\renewcommand{\datechanged}{Last Updated: Revision %h on %ad}'` '\input{constitution.tex}'

clean:
	$(RM) $(PDFFILES)