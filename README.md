# Presentations-Hub

Based on YTU-Beamer-Theme.

This template is modified from QUT-Beamer-Theme which mostly comes from Jiayi Weng, Trinkle23897.
The original GitHub repo is https://github.com/Trinkle23897/THU-Beamer-Theme.

### Install:
```
$ pacman -S texlive
$ pacman -S texlive-most          (no)
$ pacman -S texlive-langchinese   (no)
$ pacman -S texlive-fontsrecommended
$ pacman -S texlive-fontsextra
$ pacman -S biber
```

VSCode 
```
LaTex Workshop
```

### Compile: 
```
biber slide
xelatex slide.tex
```

### Select Compiler

In settings, search: latex-workshop.latex.recipes

Edit settings.json:
```
"latex-workshop.latex.recipes": [
  {
    "name": "XeLaTeX",
    "tools": ["xelatex"]
  },
  {
    "name": "xelatex ➜ bibtex ➜ xelatex ×2",
    "tools": [
      "xelatex",
      "bibtex",
      "xelatex",
      "xelatex"
    ]
  }
],

"latex-workshop.latex.tools": [
  {
    "name": "xelatex",
    "command": "xelatex",
    "args": [
      "-synctex=1",
      "-interaction=nonstopmode",
      "-file-line-error",
      "%DOC%"
    ]
  },
  {
    "name": "bibtex",
    "command": "bibtex",
    "args": ["%DOCFILE%"]
  }
]

```