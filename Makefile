guideline: 
	pandoc --html-q-tags --section-divs --toc --number-sections --toc-depth=4\
		-f org -t html \
		--css assets/style1.css --css assets/style2.css \
		--css https://fniessen.github.io/org-html-themes/src/readtheorg_theme/css/htmlize.css \
		-s base.org \
		-o guideline.html

example:
	pandoc --html-q-tags --section-divs --toc --number-sections \
		-f org -t html \
		--css assets/style1.css --css assets/style2.css \
		--css https://fniessen.github.io/org-html-themes/src/readtheorg_theme/css/htmlize.css \
		-s example.org \
		-o example.html
