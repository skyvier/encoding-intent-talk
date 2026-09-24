# Encoding Intent — LaTeX deck

The deck is implemented as a 16:9 Beamer presentation in `encoding-intent.tex`.

## Build

From this directory:

```sh
latexmk -pdf encoding-intent.tex
```

The source uses `pdflatex` and standard TeX Live packages. The two cover images
are stored in `assets/` and referenced with relative paths.

## GitHub Actions

`.github/workflows/render-pdf.yml` compiles the deck after every push and on
manual workflow runs. The resulting `encoding-intent.pdf` is available from the
workflow run as the `encoding-intent-pdf` artifact for 30 days.

## Create and push the repository

Create an empty repository, then run:

```sh
git init
git add .
git commit -m "Initial LaTeX presentation"
git branch -M main
git remote add origin git@github.com:skyvier/encoding-intent-talk.git
git push -u origin main
```

The Beamer setup takes inspiration from Joonas Laukka's Helsinki Haskell
Meetup source:

<https://github.com/skyvier/helsinki-haskell-meetup/blob/master/presentation-without-notes.tex>
