#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../manuscript"
pdflatex -interaction=nonstopmode -halt-on-error poincare_aasc_final_publication.tex
pdflatex -interaction=nonstopmode -halt-on-error poincare_aasc_final_publication.tex
pdflatex -interaction=nonstopmode -halt-on-error poincare_aasc_final_publication.tex
rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.toc
