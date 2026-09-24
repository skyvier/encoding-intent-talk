# Encoding Intent — LaTeX deck

The deck is implemented as a 16:9 Beamer presentation in `encoding-intent.tex`.

## Build

Enter the Nix development shell, then build the deck:

```sh
nix develop
just build
```

For a fast editing loop, continuously rebuild the PDF whenever a source file
changes:

```sh
just watch
```

`latexmk` opens the PDF in the default viewer and refreshes it after successful
builds. Stop the watcher with Ctrl-C. Run `just clean` to remove intermediate
LaTeX files.

The Nix shell provides `pdflatex`, `latexmk`, and the standard TeX Live packages
used by the presentation. Images are stored in `assets/` and referenced with
relative paths.

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
