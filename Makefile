all: clean build publish

build:
	jupyter-book build .

publish:
	ghp-import -n -p -f _build/html

clean:
	rm -rf _build