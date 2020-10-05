#!/bin/sh
# Auth
echo "$INPUT_SECRETS" > /secrets.json
gcloud auth activate-service-account --key-file=/secrets.json
rm /secrets.json

# Sync files to bucket
echo "Syncing bucket $BUCKET ..."
gsutil -m rsync -r -c -d /github/workspace gs://$INPUT_BUCKET/
echo "Done."