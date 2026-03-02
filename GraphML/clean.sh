#!/bin/bash
# Clean LaTeX auxiliary files

# If you pass a file name without extension (e.g. ./clean_tex.sh Session_1)
# it cleans only that file’s auxiliaries; otherwise it cleans all .aux etc. in the folder.

if [ -n "$1" ]; then
  base="$1"
  echo "Removing auxiliary files for $base.*"
  rm -f "$base.aux" "$base.bbl" "$base.blg" "$base.bcf" \
        "$base.log" "$base.out" "$base.run.xml" "$base.synctex.gz" \
        "$base.fls" "$base.fdb_latexmk" "$base.nav" "$base.snm" \
        "$base.toc" "$base.lof" "$base.lot"
else
  echo "Removing auxiliary files for all .tex in this directory..."
  rm -f *.aux *.bbl *.blg *.bcf *.log *.out *.run.xml *.synctex.gz \
        *.fls *.fdb_latexmk *.nav *.snm *.toc *.lof *.lot *.pdf
fi

echo "Auxiliary files removed."
