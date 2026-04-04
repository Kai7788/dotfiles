#!/bin/bash

#Executes all install.sh files in subdirectories

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "[+] Running dotfiles installer..."

run_install() {
local dir="$1"

```
if [ -f "$dir/install.sh" ]; then
    echo "[+] Running $dir/install.sh"
    (cd "$dir" && bash install.sh)
fi
```

}

if [ "$1" != "" ]; then
TARGET="$DOTFILES_DIR/$1"

```
if [ -d "$TARGET" ]; then
    run_install "$TARGET"
else
    echo "[-] Directory not found: $1"
    exit 1
fi
```

else
for dir in "$DOTFILES_DIR"/*; do
[ -d "$dir" ] || continue
run_install "$dir"
done
fi

echo "[+] Done."

