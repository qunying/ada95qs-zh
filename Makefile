# Makefile for Ada 95 品质和风格
# 版权所有 (C) 2009, 朱群英
# Copyright (C) 2009, Zhu Qun-Ying
#
# 本书的 TeX 代码和由之生成的 ps，pdf，html，等其他格式的文件
# 遵循 GNU通用公共授权第三版或其后的版本。
#
# 本书是基于有益的目的而加以发布，然而不负任何担保责任。
#
# 您应已收到附随于本书的GNU通用公共授权的副本；如果没有，
# 请参考 <http://www.gnu.org/licenses/gpl.html>

.SUFFIXES:
.SUFFIXES: .tex .pdf

LATEX=xelatex
BIBTEX=bibtex
DEP_FILES=caption-zh.tex 000-copyright-notice.tex 010-translator-preface.tex \
020-preface.tex 030-authors-ack.tex 040-introduction.tex \
050-src-presentation.tex 060-readability.tex \
060.010-readability-type.tex 070-prog-structure.tex \
070.010-prog-structure-high-level.tex \
070.020-prog-structure-visibility.tex \
070.030-prog-structure-summary.tex \
080-prog-practices.tex 090-concurrency.tex \
100-portability.tex \
110-reusability.tex 110.040-reusability-independence.tex \
120-object-oriented-feature.tex \
130-improving-perf.tex \
999-bib.tex

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
	$(LATEX) $(TARGET)
#	$(BIBTEX) $(TARGET)
	$(LATEX) $(TARGET)
#	$(LATEX) $(TARGET)

view:
	$(PDFVIWER) $(TARGET).pdf

clean:
	-rm *.aux *.log *.out *.toc *.xdv *.xref $(TARGET).pdf
