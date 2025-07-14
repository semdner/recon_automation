#!/bin/bash

OUTPUT_DIR="output/"

if [ ! -d "$OUTPUT_DIR" ]
then
    echo "Creating output directory $OUTPUT_DIR"
    mkdir $OUTPUT_DIR
fi