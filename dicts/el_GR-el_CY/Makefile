all: el_GR-el_CY.dic 

el_GR-el_CY.dic: el_GR.wl el_CY.wl
##	@tr -d "\n" < el_GR.wl | while read -n1 char; do echo $char; done | sort | uniq -c| sort -rn | sed "s/^.* //" | tr -d "\n" > frequency
	@cp ../el_GR/el_GR.wl el_GR.wl
	@cp ../el_GR/el_GR.aff el_GR.aff
	@cat el_GR.wl el_CY.wl > el_GR-el_CY.wl
	@echo $$(wc -l el_GR-el_CY.wl | awk '{ print $$1; }') > el_GR-el_CY.lnum
	@cat el_GR-el_CY.lnum el_GR-el_CY.wl > el_GR-el_CY-temp.wl
	@munch el_GR-el_CY-temp.wl el_GR.aff > el_GR-el_CY-temp.dic
	@sort -u el_GR-el_CY-temp.dic > el_GR-el_CY.dic

install: el_GR-el_CY.dic el_GR.aff
	@cp el_GR-el_CY.dic ../../orthosgreek/el_GR-el_CY/dicts/
	@cp el_GR.aff ../../orthosgreek/el_GR-el_CY/dicts/

clean:
##	@rm -f el_GR-el_CY.dic
	@rm -f el_GR-el_CY.lnum el_GR-el_CY-temp.wl el_GR-el_CY-temp.dic

distclean: clean
	@rm -f el_GR-el_CY.dic
	@rm -f el_GR-el_CY.lnum el_GR-el_CY-temp.wl el_GR-el_CY-temp.dic

.PHONY: distclean clean install test
