#!/bin/bash

set -eux
declare -a dirs=()
# for d in scripts/*/ ; do
    # if [ ${d} == *"${{ steps.files.outputs.all }}"* ];
    # then
        #dirs+=("$d")
    # fi
# done
if [ ${#dirs[@]} -gt 1 ];
then
    echo "You may not change more than 1 directory in a single PR. This one has ${#dirs[@]} directory changes."
    exit 1
fi
if [ ${#dirs[@]} -eq 0 ];
then
    echo "No changes to scripts directories."
    exit 0
fi