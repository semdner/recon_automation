#!/bin/bash

source ./helper.lib

# default output directory
OUTPUT_DIR="output/"

# default location to search for domains
DOMAIN=()

# path to used tools
PATH_TO_SUBLIST3R="/home/max/infosec/common/tools/Sublist3r/"

# get values from flags
while getopts ":d:t:h" opt
do
    case ${opt} in
        d)
            DOMAIN+=("$OPTARG")
            echo ${DOMAIN}
            ;;
        t)
            ;;
        h)
            help
            ;;
        *)
            ;;
    esac
done

echo $DOMAIN

if [[ ! -z "$DOMAIN" ]]
then
    echo "var is not empty"
elif test -f "$DOMAINS"
then
    echo "input.txt exists"
else
    echo -e "ERROR: No domain or domain list specified.\nSet single domain via -d DOMAIN"
fi


if [ ! -d "$OUTPUT_DIR" ]
then
    echo "Creating output directory $OUTPUT_DIR"
    mkdir $OUTPUT_DIR
fi



