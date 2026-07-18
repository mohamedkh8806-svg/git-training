#!/bin/bash

DIRECTORY=$1
if [ -z "$DIRECTORY" ]; then
    echo "Error: Please provide a directory."
    echo "Usage: ./directory_summary.sh <directory>"
    exit 1
fi

if [ ! -d "$DIRECTORY" ]; then
    echo "Error: '$DIRECTORY' is not a valid directory."
    exit 1
fi


echo "Directory Summary"
echo "-----------------"
echo "Directory: $DIRECTORY"

FILE_COUNT=$(find "$DIRECTORY" -type f | wc -l)


TOTAL_SIZE=$(du -sh "$DIRECTORY" | cut -f1)

LARGEST_FILE=$(find "$DIRECTORY" -type f -exec du -b {} \; | sort -nr | head -1)
LARGEST_SIZE=$(echo "$LARGEST_FILE" | cut -f1)
LARGEST_PATH=$(echo "$LARGEST_FILE" | cut -f2)


echo "Number of files: $FILE_COUNT"
echo "Total size: $TOTAL_SIZE"
echo "Largest file:"
echo "  Path: $LARGEST_PATH"
echo "  Size: $LARGEST_SIZE bytes"