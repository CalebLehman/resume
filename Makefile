all: build/resume.pdf

build/resume.pdf: src/resume.typ
	mkdir -p build
	typst compile src/resume.typ build/resume.pdf

watch:
	mkdir -p build
	typst watch src/resume.typ build/resume.pdf

.PHONY: clean
clean:
	rm -rf build
