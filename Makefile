doc=git-best-practices
SHELL=/bin/bash

default:pdfdirect

dvi:
	latex $(doc).tex;
	latex $(doc).tex;

ps:dvi
	dvips -o $(doc).ps $(doc).dvi;

pdf:ps
	ps2pdf $(doc).ps;

pdfdirect:
	pdflatex $(doc).tex;

clean:
	rm -f *.{out,aux,toc,log,bbl,blg,bak,snm,nav} *\~

mrproper: clean
	rm -f *.{ps,dvi,pdf,vrb}
