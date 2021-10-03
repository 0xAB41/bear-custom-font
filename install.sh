#!/bin/bash

set -xe

REPO_PATH=$(dirname "$0")
BEAR_PATH="/Applications/Bear.app"
SOURCE_FILE="$REPO_PATH/Menlo.theme"
DEST_FILE="$BEAR_PATH/Contents/Resources/Menlo.theme"
BACKUP_FILE="$DEST_FILE.backup"

cp $DEST_FILE $BACKUP_FILE
cp $SOURCE_FILE $DEST_FILE
killall Bear || echo "Did not kill Bear process since it wasn't running"
sleep 1
open $BEAR_PATH