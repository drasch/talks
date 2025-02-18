index.html: index.md slides.css
	docker run --rm -v .:/data pandoc/core -t revealjs -s -o index.html index.md -V revealjs-url=https://unpkg.com/reveal.js/ --include-in-header=slides.css -V theme=league

