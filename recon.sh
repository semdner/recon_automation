#!/bin/bash

source ./helper.lib
source ./scan.lib
source ./.env

# default output directory
OUTPUT_DIR="output/"

# path to used tools
PATH_TO_SUBLIST3R="/home/max/infosec/common/tools/Sublist3r/"
PATH_TO_CRTSH="/home/max/infosec/common/tools/crt.sh"
PATH_TO_DIRSEARCH="/home/max/infosec/common/tools/dirsearch"
PATH_TO_GITHUB_SUBDOMAINS="/home/max/go/bin/github-subdomains"

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
elif [ ! -z $INPUT_FILE ] && [ -f $INPUT_FILE ]
then
    create_output_dir
    scan_domains_from_file
else
    echo "No domain or file spcified"
fi



