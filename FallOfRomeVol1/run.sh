#!/usr/bin/env bash

if [[ ! -d "./dump" ]]; then
	mkdir ./dump
fi

lualatex --output-directory dump main.tex

if [[ $1 = a ]]; then
	lualatex --output-directory dump signature.tex
fi
