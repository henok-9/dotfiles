#!/bin/bash

if [ -z "${OBSIDIAN_VAULT}" ]; then
    echo "Error: OBSIDIAN_VAULT environment variable is not set."
    exit 1
fi

vault_dir="${OBSIDIAN_VAULT}"


# find "$vault_dir" -type f | fzf --preview 'bat --color=always --style=numbers --line-range :500 {}'
selected_file=$(fd --type f --extension md . "$vault_dir" | fzf --preview 'bat --color=always --style=numbers --line-range :500 {}')

if [[ -n $selected_file ]]; then
    nvim "$selected_file"
fi



