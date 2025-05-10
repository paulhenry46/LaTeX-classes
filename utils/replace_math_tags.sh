#!/bin/bash

# Check if a file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Define the input file
file="$1"

# Use sed to replace inline math notation

sed -i -E 's/(^|[^\\])\$\$(([^$]|\\\$)+)\$\$/\1\\[\2\\]/g' "$file"

sed -i -E 's/(^|[^\\])\$(([^$]|\\\$)+)\$/\1\\(\2\\)/g' "$file"

echo "Replacement completed in $file"