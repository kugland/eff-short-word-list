all: eff_short_word_list_2.pdf

clean:
	-rm -f *.aux *.log *.out *.toc *.dvi *.pdf

eff_short_word_list_2.pdf: eff_short_word_list_2.tex
	pdflatex eff_short_word_list_2.tex
