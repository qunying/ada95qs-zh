.SUFFIXES:
.SUFFIXES: .tex .pdf

LATEX=xelatex
DEP_FILES=caption-zh.tex copyright-notice.tex translator-preface.tex \
preface.tex introduction.tex src-presentation.tex readability.tex

PDFVIWER=epdfview

TARGET=ada95-qs-zh

all: $(TARGET).pdf

again:
	$(LATEX) $(TARGET).tex
again2:
	$(MAKE) again
	$(MAKE) again
again3:
	$(MAKE) again
	$(MAKE) again2

%.pdf:%.tex $(DEP_FILES)
	$(LATEX) $<
	$(LATEX) $<

view:
	$(PDFVIWER) $(TARGET).pdf

clean:
	-rm *.aux *.log *.out *.toc $(TARGET).pdf
