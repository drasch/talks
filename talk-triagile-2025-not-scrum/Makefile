index.html: index.md slides.css
	docker run --rm -v .:/data pandoc/core -t revealjs -s -o index.html index.md -V revealjs-url=https://unpkg.com/reveal.js --include-in-header=slides.css -V theme=league --slide-level=2
#--self-contained

deploy: index.html slides.css
	npx wrangler pages deploy --project-name talks .

clean:
	rm -f index.html
