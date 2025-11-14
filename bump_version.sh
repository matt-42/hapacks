#! /bin/bash

# increment  version number in the file version
# version is a simple integer stored in the file 'version'

# Usage: ./bump_version.sh 

VERSION_FILE="version"
if [ ! -f "$VERSION_FILE" ]; then
    echo "0" > "$VERSION_FILE"
fi
CURRENT_VERSION=$(cat "$VERSION_FILE")
NEW_VERSION=$((CURRENT_VERSION + 1))
echo "$NEW_VERSION" > "$VERSION_FILE"
echo "Version bumped from $CURRENT_VERSION to $NEW_VERSION"
