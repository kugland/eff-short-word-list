all: wordlist1_a4.pdf wordlist2_a4.pdf wordlist1_letter.pdf wordlist2_letter.pdf

clean:
	-rm -f *.aux *.log *.out *.toc *.dvi *.pdf *.inc

wordlist1_a4.pdf: wordlist1_a4.tex wordlist1.inc
	pdflatex wordlist1_a4.tex

wordlist2_a4.pdf: wordlist2_a4.tex wordlist2.inc
	pdflatex wordlist2_a4.tex

wordlist1.inc: wordlist1.txt
	awk -f parse-word-list.awk < wordlist1.txt >wordlist1.inc

wordlist2.inc: wordlist2.txt
	awk -f parse-word-list.awk < wordlist2.txt >wordlist2.inc

wordlist1_letter.pdf: wordlist1_letter.tex wordlist1.inc
	pdflatex wordlist1_letter.tex

wordlist2_letter.pdf: wordlist2_letter.tex wordlist2.inc
	pdflatex wordlist2_letter.tex