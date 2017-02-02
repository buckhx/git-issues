#!/bin/sh

# Check if ghi exists
if ! type ghi &> /dev/null; then
	echo 'Error: ghi not installed. See https://github.com/stephencelis/ghi'
	exit 1;
fi
# Default to list if no args provided
if [ $# -eq 0 ]; then
	ghi list 
else
	ghi "$@"
fi
