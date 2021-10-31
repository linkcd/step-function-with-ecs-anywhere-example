#!/bin/bash
echo "Start, checking environment variables..."

# Check env variables
if [[ -z "$BUCKET_NAME" ]]; then
    echo "Environment variable BUCKET_NAME is missing, exiting..." 1>&2
    exit 1
fi

if [[ -z "$FILE_KEY" ]]; then
    echo "Environment variable FILE_KEY is missing, exiting..." 1>&2
    exit 1
fi

aws s3 cp $BUCKET_NAME/$FILE_KEY /data/$FILE_KEY
if [ $? -eq 0 ] 
then 
    echo "Downloaded successfully!" 
else 
    echo "Could not download from s3, exiting..." >&2
    exit 1
fi

