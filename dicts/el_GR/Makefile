all: el_GR.dic 

el_GR.dic: el_GR.wl
##	@tr -d "\n" < el_GR.wl | while read -n1 char; do echo $char; done | sort | uniq -c| sort -rn | sed "s/^.* //" | tr -d "\n" > frequency
	@echo $$(wc -l el_GR.wl | awk '{ print $$1; }') > el_GR.lnum
	@cat el_GR.lnum el_GR.wl > el_GR-temp.wl
	@munch el_GR-temp.wl el_GR.aff > el_GR-temp.dic
	@sort -u el_GR-temp.dic > el_GR.dic

install: el_GR.dic el_GR.aff
	@cp el_GR.dic ../../orthosgreek/el_GR/dicts/
	@cp el_GR.aff ../../orthosgreek/el_GR/dicts/

clean:
	@rm -f el_GR.dic
	@rm -f el_GR.lnum el_GR-temp.wl el_GR-temp.dic

distclean: clean
	@rm -f el_GR.dic
	@rm -f el_GR.lnum el_GR-temp.wl el_GR-temp.dic

.PHONY: distclean clean install test
