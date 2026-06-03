#!/bin/bash

echo "Starting server audit now at this time..."
echo "Current Date and Time: $(date)"

mkdir -p reports

python scripts/check_usage.py > reports/disk_report.txt

echo "Audit complete."
echo "Report saved to reports/disk_report.txt"