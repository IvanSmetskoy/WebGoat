#!/bin/bash

#deptrack.sh

curl -X "POST" "http://192.168.68.111:8080/api/v1/bom" \
     -H 'Content-Type: multipart/form-data' \
     -H "X-Api-Key: eWXuuB6Wny5cZkZl3bQBIrRT8bOuexoW" \
     -F "projectName=WebGoat" \
     -F "bom=@target/bom.xml"
