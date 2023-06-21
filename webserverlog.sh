#!/bin/bash
# Read the web server log file
log_file="/var/log/nginx/access.log"

# Count the number of requests by IP address
echo "Number of Requests by IP Address:"
awk '{print $1}' "$log_file" | sort | uniq -c | sort -rn

# Count the number of requests by HTTP status code
echo "Number of Requests by HTTP Status Code:"
awk '{print $9}' "$log_file" | sort | uniq -c | sort -rn

# Find the top 10 requested URLs
echo "Top 10 Requested URLs:"
awk '{print $7}' "$log_file" | sort | uniq -c | sort -rn | head -n 10
