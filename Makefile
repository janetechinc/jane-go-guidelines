guideline: 
	pandoc --html-q-tags --section-divs --toc --number-sections --toc-depth=2\
		-f org -t html \
		--css assets/style1.css --css assets/style2.css \
		--css https://fniessen.github.io/org-html-themes/src/readtheorg_theme/css/htmlize.css \
		-s index.org \
		-o docs/index.html

example:
	pandoc --html-q-tags --section-divs --toc --number-sections \
		-f org -t html \
		--css assets/style1.css --css assets/style2.css \
		--css https://fniessen.github.io/org-html-themes/src/readtheorg_theme/css/htmlize.css \
		-s example.org \
		-o docs/example.html


watch:
	while true; do \
		make guideline; \
		inotifywait -qre close_write .; \
	done
