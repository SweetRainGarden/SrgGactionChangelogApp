#!/usr/bin/env sh
one_line_format_string=""
txt_file=$1
while IFS= read -r line; do
    if [[ $line == $(tail -n1 "$txt_file") ]]; then
        one_line_format_string="${one_line_format_string}${line}"
    else
        one_line_format_string="${one_line_format_string}${line}\n"
    fi
done <"$txt_file"
echo "${one_line_format_string}"
