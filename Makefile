pres.pdf: pres.md
	pandoc -f markdown -t beamer pres.md -o pres.pdf
