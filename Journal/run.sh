if [[ ! -d "./dump" ]]; then
    mkdir ./dump
fi

lualatex --output-directory dump collegeRuledHalfPage.tex

if [[ $1 = impose ]]; then
    lualatex --output-directory dump signature.tex
fi
