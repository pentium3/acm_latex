.PHONY: pdf clean all
  
  %.pdf: %.tex
	$(VARS) latexmk -f -pdf -M -MP -MF $*.deps $<

pdf: paper.pdf

clean:
	latexmk -C
	rm -f *.deps
	-rm -fv *~ *.aux paper.pdf *.bbl *.blg *.log

-include *.deps
