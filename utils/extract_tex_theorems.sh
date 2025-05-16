#!/bin/bash
# Usage: ./extract_propositions.sh input_file.tex

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 input_file"
  exit 1
fi

directory=$(dirname "$1")
output_name="/export.csv"

input_file="$1"
output_file="$directory$output_name"

# Write CSV header
echo "Title,Content" > "$output_file"

# Use Perl in slurp mode (-0777) to process the whole file
# Use Perl to process the file
perl -0777 -ne '
  while ( /(?<!%)\\begin\{(proposition|definition|theorem)\}\[(.*?)\]\s*(.*?)\\end\{\1\}/sg ) {
    $title = $2;
    $content = $3;
    $content =~ s/\n/ /g;  # Remove newlines for CSV formatting
    $title =~ s/"/""/g;    # Escape double quotes
    $content =~ s/"/""/g;  # Escape double quotes
    if ($title =~ /[,"]/ )  { $title = "\"" . $title . "\"" }
    if ($content =~ /[,"]/ ) { $content = "\"" . $content . "\"" }
    print "$title,$content\n";
  }
' "$input_file" >> "$output_file"