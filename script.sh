#!/bin/bash

FILES=(
  "/etc/shadow"
  "/root/.ssh/id_rsa"
  "/etc/sudoers"
  "/etc/ssh/sshd_config"
)

for file in "${FILES[@]}"; do
  if [ -r "$file" ]; then
    echo "[i] $file :"
    cat "$file"
  fi
done
