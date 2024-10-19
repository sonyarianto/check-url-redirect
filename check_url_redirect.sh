#!/bin/bash
for url in "$@"; do
  final_url=$(curl -s -o /dev/null -w "%{url_effective}" -L "$url")
  echo "$url => $final_url"
done
