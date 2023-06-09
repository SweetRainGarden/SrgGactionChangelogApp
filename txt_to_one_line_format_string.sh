#!/usr/bin/env bash

# just read txt line by line and append '\n'
# used it for google sheet cell.
# txt should not contain duplicates line.
one_line_format_string=""
txt_file=$1
delimiter=$2
while IFS= read -r line; do
    if [[ $line == $(tail -n1 "$txt_file") ]]; then
        one_line_format_string="${one_line_format_string}${line}"
    else
        one_line_format_string="${one_line_format_string}${line}${delimiter}"
    fi
done <"$txt_file"
echo "${one_line_format_string}"
