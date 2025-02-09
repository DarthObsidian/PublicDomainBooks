#!/usr/bin/env bash

if [ ! -d "./dump" ]; then
	mkdir ./dump
fi

if [ ! $1 = s ]; then
	lualatex --output-directory dump main.tex
fi

if [ $1 = a ] || [ $1 = s ]; then
	lualatex --output-directory dump signature.tex
	lualatex --output-directory dump signature2.tex
fi
