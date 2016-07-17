#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
rm -rf build
mkdir build
cd build
git clone https://github.com/gcarcassi/physics.git
cd physics/2015CompleteDerivation/
latex completeDerivation.tex
bibtex completeDerivation.tex
pdflatex completeDerivation.tex
cp completeDerivation.pdf ../../../../draft.pdf
cd ../../../..
git commit -am "Updating draft"
git push
