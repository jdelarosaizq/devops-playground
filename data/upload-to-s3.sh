#!/bin/bash
RELEASE=$1
aws --no-verify-ssl --endpoint-url=http://localhost:31566 s3 cp --recursive $RELEASE  s3://data/$RELEASE
