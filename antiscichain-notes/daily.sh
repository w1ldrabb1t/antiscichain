#!/bin/bash

# Ensure ./daily directory exists
mkdir -p ./daily

# Get today's date in dd-mm-yyyy format
DATE=$(date +%d-%m-%Y)
FILE="./daily/$DATE.md"

# Check for -g flag
OPEN_FILE=false
if [ "$1" == "-g" ]; then
  OPEN_FILE=true
fi

# If file already exists
if [ -f "$FILE" ]; then
  echo "Daily already exists..."
  if $OPEN_FILE; then
	echo "Opening the daily!"
	${EDITOR:-nano} "$FILE"
  fi
  exit 0
fi

# Daily does not exist.
# Creating it...
touch $FILE

# Append the template content
cat ./templates/daily-template.md >> "$FILE"

echo "Created $FILE successfully."

# Open the file if requested
if $OPEN_FILE; then
	echo "Opening it..."
	${EDITOR:-nano} "$FILE"
fi
