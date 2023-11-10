#!/bin/bash

# Script:                     Opschallenge13
# Author:                     Breanna Taylor
# Date of latest revision:    11/8/2023
# Purpose:                    OpsChallenge 13

#variable
opschallenge13="results have been saved"
#function
output_file(){
    whois "$domain_name" > "$domain_name.txt"
    dig "$domain_name" >> "$domain_name.txt"
    host "$domain_name" >> "$domain_name.txt"
    nslookup "$domain_name" >> "$domain_name.txt"
    echo -e "$opschallenge13"
}
# Main
read -p "Enter a domain name (e.g., google.com): " domain_name
output_file
