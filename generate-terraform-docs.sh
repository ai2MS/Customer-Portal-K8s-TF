#!/bin/bash

root="$(pwd)/src"

# Find directories, excluding examples, .terraform, .idea and .run completely
find "$root" -type d \
  \( -name examples -o -name .terraform -o -name .idea -o -name .run \) -prune -o \
  -type d -print0 |
while IFS= read -r -d '' module; do
    terraform_file="$module/main.tf"

    if [[ -f "$terraform_file" ]]; then
        echo "****************************************"
        echo "generating terraform-docs for: $module"
        terraform-docs "$module" --output-file ../README.md
        echo ""
    fi
done