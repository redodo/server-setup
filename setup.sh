#!/bin/bash
for file in setup/*
do
    echo "$file"
    "$file"
done
