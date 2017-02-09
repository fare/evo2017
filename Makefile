ae := evo2017

src = evo2017.scrbl
lib = utils.rkt # bibliography.scrbl
# asdf3.scrbl old-bug.scrbl history.scrbl tutorial.scrbl

#export PLTCOLLECTS:=$(shell pwd):${PLTCOLLECTS}

all: evo2017.PDF # asdf asdf3-2014.PDF # html # slideshow # PDF
html: ${ae}.html
pdf: ${ae}.pdf
PDF: pdf ${ae}.PDF
wc: ${ae}.wc

install: evo2017.html evo2017.pdf
	rsync -av --delete $^ *.js *.css ~/files/evolutionism/
	rsync -av --delete ~/files/evolutionism/ bespin:files/evolutionism/

%.W: %.html
	w3m -T text/html $<

%.wc: %.html
	perl $$(which donuts.pl) unhtml < $< | wc

%.PDF: %.pdf
	#evince -f -i $${p:-1} $<
	xpdf -z page -fullscreen $< $(p)

%.pdf: %.scrbl ${lib}
	time scribble --dest-name $@ --pdf $<

${ae}.html: ${ae}.scrbl ${lib}
%.html: %.scrbl ${lib}
	time scribble --dest-name $@ --html $<

%.latex: %.scrbl ${lib}
	time scribble --latex --dest tmp $<

clean:
	rm -f *.pdf *.html *.tex *.css *.js
	rm -rf tmp

mrproper:
	git clean -xfd
