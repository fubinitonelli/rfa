MAIN = main
MAIN_TEX = $(MAIN).tex
MAIN_PDF = $(MAIN).pdf
FILE_CLEAN = *.aux *.log *.out *.xdv *.toc *.fls *.fls *.fdb_latexmk *.synctex.gz *.synctex\(busy\)
FILE_DISTCLEAN =  $(MAIN_PDF)

.PHONY: distclean clean pdf

pdf: $(MAIN_PDF)

$(MAIN_PDF): $(MAIN_TEX) *.tex **/*.tex
	git show -s --format=%H > commit_hash.part
	latexmk -pdf -jobname=$(MAIN) $(MAIN_TEX)
	rm -f commit_hash.part

clean:
	rm -f $(FILE_CLEAN) commit_hash.part

distclean : clean
	rm -f $(FILE_DISTCLEAN)
