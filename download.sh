#!/bin/bash

echo "Veuillez taper une URL : "
read url

echo "Veuillez taper le dossier de destination : "
read folder_destination

mkdir -p "$folder_destination"

wget -q -P "$folder_destination" "$url"

filename=$(basename "$url")
file_path="$folder_destination/$filename"
echo "Fichier téléchargé dans : $file_path"