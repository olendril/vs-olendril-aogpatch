#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
package_dir="$repo_dir/artifacts/package"
package_path="$package_dir/aognowitheredvegetables.zip"

mkdir -p "$package_dir"
rm -f "$package_path"

cd "$repo_dir"
7z a -tzip -mx=9 "$package_path" modinfo.json assets README.md >/dev/null

printf '%s\n' "$package_path"
