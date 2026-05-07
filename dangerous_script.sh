#!/bin/bash

FILES=(
  "/etc/shadow"
  "/root/.ssh/id_rsa"
  "/etc/sudoers"
  "/etc/ssh/sshd_config"
)

echo "[!] Trying to access sensitive files."

for file in "${FILES[@]}"; do
  echo "[i] Reading $file..."
  if [ -r "$file" ]; then
    cat "$file"
  fi
done
