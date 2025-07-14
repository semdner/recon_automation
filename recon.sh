#!/bin/bash

help() {
    echo -e "recon.sh: bash recon.sh [-i][-t][-h] \n"
    echo "   OPTIONS:"
    echo "     -i      file with domains to scan"
    echo "     -t      specify which tool to run"
    echo "     -h      show help page (this)"
}

OUTPUT_DIR="output/"

while getopts "h" flag
do
    case ${flag} in
        h)
            help
            ;;
        *)
            ;;
    esac
done

if [ ! -d "$OUTPUT_DIR" ]
then
    echo "Creating output directory $OUTPUT_DIR"
    mkdir $OUTPUT_DIR
fi



