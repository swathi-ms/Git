#!/bin/bash

# Array of month names
months=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")

# Loop through the array and create directories
for month in "${months[@]}"; do
mkdir "$month"
done
