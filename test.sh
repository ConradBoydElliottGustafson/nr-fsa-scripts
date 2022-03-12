#!/bin/bash

echo "::set-output name=path::scripts"
declare -a dirs=()
for d in scripts/*/ ; do
    echo "evaluating a directory: ${d}"
    if [[ ".github/workflows/main.yml,scripts/change1/file1.txt,scripts/change1/file2.txt,test.sh" =~ $d ]];
    then
        dirs+=("$d")
    fi
done
if [ ${#dirs[@]} -gt 15 ];
then
echo "You may not change more than 1 directory in a single PR. This one has ${#dirs[@]} directories with changes."
exit 1
fi
echo "::set-output name=path::${dirs[0]}"