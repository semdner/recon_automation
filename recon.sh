#!/bin/bash

source ./helper.lib
source ./scan.lib
env_check # check if .env exist
source ./.env

# default output directory
OUTPUT_DIR="output"

# get values from flags
while getopts ":f:d:t:h" opt
do
    case $opt in
        f)
            INPUT_FILE=$OPTARG
            ;;
        d)
            DOMAINS+=($OPTARG)
            ;;
        t)
            TOOL=$OPTARG
            ;;
        h)
            help
            ;;
        *)
            ;;
    esac
done

# check if domain(s) or input file is set
# if set run tools
if [ ! -z $DOMAINS ]
then
    create_output_dir
    scan_domains_from_array
    create_subdomain_report
    filter_alive_domains
elif [ ! -z $INPUT_FILE ] && [ -f $INPUT_FILE ]
then
    create_output_dir
    scan_domains_from_file
    create_subdomain_report
    filter_alive_domains
else
    echo "No domain or file spcified"
fi



