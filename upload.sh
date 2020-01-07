#!/bin/bash

dryrun="--dryrun"

if [ "${1}" = "go" ]; then
    dryrun=""
fi

aws --profile imlab_webeditor s3 sync . s3://gene2pheno.org/ --delete --exclude ".hg/*" ${dryrun}

