.SUFFIXES: .txt .mkd .xml

XML2RFC=xml2rfc
KRAMDOWN=kramdown-rfc2629

%.xml: %.mkd
	$(KRAMDOWN) $< >$@

%.txt: %.xml
	$(XML2RFC) $<

all:	draft-eckert-detnet-bounded-latency-problems.txt
	
