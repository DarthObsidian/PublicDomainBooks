#!/usr/bin/env bash

if [ ! -d "./dump" ]; then
	mkdir ./dump
fi

if [ $1 = vol1 ]; then
	lualatex --output-directory dump vol1.tex
fi

if [ $1 = vol1 ] && [ $2 = impose ]; then
	lualatex --output-directory dump vol1-signature.tex
fi
