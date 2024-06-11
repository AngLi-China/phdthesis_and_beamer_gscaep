SRC = $(wildcard *.tex)
OBJ = $(patsubst %.tex, %.pdf, $(SRC))
 
ALL: $(OBJ)
 
$(filter %.pdf,$(OBJ)) : %.pdf : %.tex
	@echo dealing $<
	-xelatex -halt-on-error $<
	-@rm *.aux >/dev/null 2>/dev/null
	-@rm *.log >/dev/null 2>/dev/null
	@echo "    to get" $@

clean:
	-@rm *.aux >/dev/null 2>/dev/null
	-@rm *.log >/dev/null 2>/dev/null
	-@rm *.pdf >/dev/null 2>/dev/null