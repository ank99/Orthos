all: en_US.wl el_GR-en_US.wl el_GR-en_US.dic

en_US.wl: scowl/final/american* scowl/final/english*
	@cd scowl; ./mk-list -v2 american 70 > ../en_US.wl

el_GR-en_US.wl: en_US.wl ../el_GR/el_GR.wl
	@cat ../el_GR/el_GR.wl en_US.wl > el_GR-en_US.wl

el_GR-en_US.dic: el_GR-en_US.wl
	@echo $$(wc -l el_GR-en_US.wl | awk '{ print $$1; }') > el_GR-en_US.lnum
	@cat el_GR-en_US.lnum el_GR-en_US.wl > el_GR-en_US-temp.wl
	@munch el_GR-en_US-temp.wl scowl/speller/en.aff > el_GR-en_US-temp.dic
	@sort -u el_GR-en_US-temp.dic > el_GR-en_US.dic

install: el_GR-en_US.dic scowl/speller/en.aff
	@cp el_GR-en_US.dic ../../orthosgreek/el_GR-en_US/dicts/
	@cp scowl/speller/en.aff ../../orthosgreek/el_GR-en_US/dicts/el_GR-en_US.aff

clean:
	@rm -f el_GR-en_US.wl

distclean: clean

.PHONY: distclean clean install test
