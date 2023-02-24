#!/bin/bash
# Convert a PDF file to LaTeX format

# Check for correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 input.pdf"
    exit 1
fi

# Check that input file exists
if [ ! -f "$1" ]; then
    echo "Input file does not exist"
    exit 1
fi

# Convert PDF to LaTeX
pdf2latex "$1"

# Check for successful conversion
if [ $? -ne 0 ]; then
    echo "Conversion failed"
    exit 1
fi

echo "Conversion complete"
