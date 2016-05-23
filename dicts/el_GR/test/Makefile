all: el_GR.dic 

el_GR.dic: el_GR.wl
	@echo $$(wc -l el_GR.wl | awk '{ print $$1; }') > el_GR.lnum
	@cat el_GR.lnum el_GR.wl > el_GR-temp.wl
	@munch el_GR-temp.wl el_GR.aff > el_GR-temp.dic
	@sort -u el_GR-temp.dic > el_GR.dic

test: el_GR-test.wl
#	@./capitals_no_accent greek.wl gcaps.wl
#	@sort -u gcaps.wl > greekcaps.wl
#	@cat greek.wl greekcaps.wl > el_GR.wl
	@echo $$(wc -l el_GR-test.wl | awk '{ print $$1; }') > el_GR-test.lnum
	@cat el_GR-test.lnum el_GR-test.wl > el_GR-test-temp.wl
	@munch el_GR-test-temp.wl el_GR-test.aff > el_GR-test-temp.dic
	@sort -u el_GR-test-temp.dic > el_GR-test.dic


install: el_GR.dic el_GR.aff
	@cp el_GR.dic ../../orthosgreek/el_GR/dicts/
	@cp el_GR.aff ../../orthosgreek/el_GR/dicts/

clean:
	@rm -f elen.lnum elen.wl gcaps.wl greekcaps.wl 
	@rm -f el_GR.dic

distclean: clean
	@rm -f el_GR.dic

.PHONY: distclean clean install test
