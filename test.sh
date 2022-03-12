#!/bin/bash

set -eux
echo "::set-output name=path::scripts"
declare -a dirs=()
for d in scripts/*/ ; do
# if [ ${d} == *"${{ steps.files.outputs.all }}"* ];
# then
    dirs+=("$d")
# fi
done
# if [ ${#dirs[@]} -gt 1 ];
# then
# echo "You may not change more than 1 directory in a single PR. This one has ${#dirs[@]} directories with changes."
# exit 1
# fi
echo "::set-output name=path::${dirs[0]}"