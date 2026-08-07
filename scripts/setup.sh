#!/usr/bin/env bash

project_root="$(cd "$(dirname "$0")/.." && pwd )"

app="$project_root/app"
docker="$project_root/docker"
terraform="$project_root/terraform"
logging="$project_root/logging"
scripts="$project_root/scripts"

if [ ! -d "$app" ]; then
	echo "Creating /app directory"
	mkdir -p "$app"

elif [ ! -d "$docker" ]; then
	echo "Creating /docker directory"
	mkdir -p "$docker"

elif [ ! -d "$terraform" ]; then
	echo "Creating /terraform directory"
	mkdir -p "$terraform"
	
elif [ ! -d "logging" ]; then
	echo "Creating /logging directory"
	mkdir -p "$logging"

elif [ ! -d "$scripts"];then
	echo "Creating /scripts directory"
	mkdir -p "$scripts"
else
	echo "Directory already exists"
fi
