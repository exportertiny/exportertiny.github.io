.PHONY: all
all : styles scripts images pages

.PHONY: clean
clean :
	rm -fr _build dist

.PHONY: install
install :
	npm install
	cpanm Web::PerlDistSite

.PHONY: images
images :
	mkdir -p dist/assets/
	cp -r images dist/assets/

.PHONY: styles
styles : dist/assets/styles/main.css

.PHONY: scripts
scripts : dist/assets/scripts/bootstrap.bundle.min.js dist/assets/scripts/bootstrap.bundle.min.js.map

.PHONY: pages
pages :
	mkdir -p dist
	perl -Ilib -MWeb::PerlDistSite::Compile -e write_pages

_build/main.scss :
	perl -Ilib -MWeb::PerlDistSite::Compile -e write_main_scss

_build/custom.scss :
	perl -Ilib -MWeb::PerlDistSite::Compile -e write_custom_scss

_build/variables.scss : config.yaml
	perl -Ilib -MWeb::PerlDistSite::Compile -e write_variables_scss

dist/assets/styles/main.css : _build/main.scss _build/variables.scss _build/custom.scss
	mkdir -p dist/assets/styles
	node node_modules/sass/sass.js --style=compressed _build/main.scss:dist/assets/styles/main.css

dist/assets/scripts/bootstrap.bundle.min.js :
	mkdir -p dist/assets/scripts
	cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js dist/assets/scripts/bootstrap.bundle.min.js

dist/assets/scripts/bootstrap.bundle.min.js.map :
	mkdir -p dist/assets/scripts
	cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js.map dist/assets/scripts/bootstrap.bundle.min.js.map