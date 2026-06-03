#!/bin/bash

echo "Starting server audit now at this time..."
echo "Current Date and Time: $(date)"
echo "Running as a user: $(whoami)"
echo "Current directory: $(pwd)"

mkdir -p reports

python scripts/check_usage.py > reports/disk_report.txt

if [ -f data/server_usage.txt ]
then
    echo "Data file found."
else
    echo "ERROR: Data file not found."
fi

echo "Listing project files..."
ls

echo "Displaying server data..."
cat data/server_usage.txt

echo "Number of servers:"
wc -l data/server_usage.txt

echo "Audit complete."
echo "Report saved to reports/disk_report.txt"