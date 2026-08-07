#!/usr/bin/env bash

project_root="$(cd "$(dirname "$0")/.." && pwd )"

directories=("app" "docker" "terraform" "logging" "scripts")

for dir in "${directories[@]}"; do
	dir_root=$project_root/$dir

	if [ ! -d "$dir_root" ]; then
		echo "creating the /$dir directory"
		mkdir -p "$dir_root"
	else 
		echo "/$dir directory already exists"
	fi
done
