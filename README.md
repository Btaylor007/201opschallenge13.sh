# 201opschallenge13.sh
201opschallenge13.sh
#!/bin/bash

# Script:                     Opschallenge13
# Author:                     Breanna Taylor
# Date of latest revision:    11/8/2023
# Purpose:                    OpsChallenge 13


# Ask for a doman name 
read -p "Enter a domain name (e.g., google.com): " domain_name

# Define the output file name 
output_file="domain_info.txt"

# Run whois, dig, host, and nslookup, and do output file to text editor 
{
    echo "WHOIS Information:" >> domain_info.txt
    whois "$domain_name"

    echo -e "\nDIG Information:" >> domain_info.txt
    dig "$domain_name"

    echo -e "\nHOST Information:" >> domain_info.txt
    host "$domain_name"

    echo -e "\nNSLOOKUP Information:">> domain_info.txt

    nslookup "$domain_name"
}
