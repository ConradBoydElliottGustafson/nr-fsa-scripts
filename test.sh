#!/bin/bash

declare -a dirs
for d in scripts/*/ ; do
dirs+=("$d")
done
dirs_json=$(printf '%s\n' "${dirs[@]}" | jq -R . | jq -s . | tr -d '\r\n')
echo -e "dirs_json: ${dirs_json}"
# dirs_json="[\n\t\"scripts/change1/\",\n\t\"scripts/change2/\"\n]"
# echo "dirs_json: ${dirs_json}"
