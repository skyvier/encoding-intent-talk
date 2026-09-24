default: build

build:
    latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode encoding-intent.tex

watch:
    latexmk -pdf -pvc -file-line-error -halt-on-error -interaction=nonstopmode encoding-intent.tex

clean:
    latexmk -c encoding-intent.tex
