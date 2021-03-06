VER=0.3
date = $(shell date +%d-%m-%Y)

all: orthosgreek-el_GR-$(VER).oxt orthosgreek-el_GR-en_US-$(VER).oxt

orthosgreek-el_GR-$(VER).oxt:
	@cd dicts/el_GR ; make ; make install
	@cd orthosgreek/el_GR ; zip -r -q ../../orthosgreek-el_GR-$(VER).oxt .

orthosgreek-el_GR-en_US-$(VER).oxt:
	@cd dicts/el_GR-en_US ; make ; make install
	@cd orthosgreek/el_GR-en_US ; zip -r -q ../../orthosgreek-el_GR-en_US-$(VER).oxt .

clean:
	@cd dicts/el_GR ; make clean
	@cd dicts/el_GR-en_US ; make clean
	@rm -f orthosgreek*.oxt

.PHONY: clean
