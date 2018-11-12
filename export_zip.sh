#!/bin/bash

SITE_PACKAGES=$LAMBDA_BUILD/lib/python3.6/site-packages
pushd $SITE_PACKAGES

zip -r -9 -q $LAMBDA_BUILD/completer.zip \
        urllib3 requests idna certifi chardet pytz googlemaps

zip -r -9 -q $LAMBDA_BUILD/parser.zip \
        urllib3 requests idna chardet certifi chardet pdfminer simplejson pandas pandas xlrd

zip -r -9 -q $LAMBDA_BUILD/predictor.zip \
        urllib3 requests idna chardet certifi pytz numpy scipy sklearn xgboost

zip -r -9 -q $LAMBDA_BUILD/placement.zip \
        urllib3 requests idna chardet certifi pytz numpy pandas

zip -r -9 -q $LAMBDA_BUILD/soget_processor.zip \
        urllib3 requests idna certifi chardet pytz googlemaps xmltodict

popd
