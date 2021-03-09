#!/usr/bin/env bash
# script used to compare two folders

# store both folders in variables
arg1=$1
arg2=$2

# clean up paths - if there's a trailing slash, remove it
if [ "${arg1:${#arg1}-1:${#arg1}}" = "/" ]; then arg1=`echo "${arg1%*/}"`; fi
if [ "${arg2:${#arg2}-1:${#arg2}}" = "/" ]; then arg2=`echo "${arg2%*/}"`; fi

# create variables called name1 and name2 for use in naming output file
read -r -a name1 <<< "$( echo "${arg1}" | rev | cut -d '/' -f1-2 | rev | tr "/" "_" )"
read -r -a name2 <<< "$( echo "${arg2}" | rev | cut -d '/' -f1-2 | rev | tr "/" "_" )"

# run diff function, output to custom named file
diff --brief --recursive "$arg1" "$arg2" > "${name1}-${name2}.md"

# create separate files for each comparator
echo "exclusively in ${name1}" >> "${name1}-results.md"
echo "exclusively in ${name2}" >> "${name2}-results.md"

# loop through the results file and create two sparate files to highlight exclusive files
while IFS= read -r line
do
  if [[ "$line" == "Only in ${arg1}"* ]] ; then echo "$line" >> "${name1}-results.md" ; fi
  if [[ "$line" == "Only in ${arg2}"* ]] ; then echo "$line" >> "${name2}-results.md" ; fi
done < "./${name1}-${name2}.md"
