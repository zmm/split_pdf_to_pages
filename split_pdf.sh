#!/bin/bash

set -e

pdf_file=${1}
page_names=${2}

i=1

cat ${page_names} | while read file_name || [[ -n $file_name ]]
do
  
  echo "$file_name $i"
  pdftk ${pdf_file} cat $i output ${file_name}.pdf
  ((i=i+1))
done


