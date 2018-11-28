#!/usr/bin/env bash
rm *.zip
docker build -t bluecargo/lambda .
# docker run  -v `pwd`:`pwd` -w `pwd` -i -t bluecargo/lambda cp /lambda_build/lambda.zip lambda.zip
# docker run  -v `pwd`:`pwd` -w `pwd` -i -t bluecargo/lambda cp /lambda_build/placement.zip placement.zip
docker push bluecargo/lambda