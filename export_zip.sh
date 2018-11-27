#!/bin/bash

SITE_PACKAGES=$LAMBDA_BUILD/lib/python3.6/site-packages
pushd $SITE_PACKAGES

zip -r -9 -q $LAMBDA_BUILD/completer.zip \
        urllib3 requests idna certifi chardet pytz googlemaps bugsnag

zip -r -9 -q $LAMBDA_BUILD/parser.zip \
        urllib3 requests idna chardet certifi pdfminer simplejson pandas xlrd bugsnag pytz numpy sortedcontainers

zip -r -9 -q $LAMBDA_BUILD/predictor.zip \
        urllib3 requests idna chardet certifi pytz numpy scipy sklearn xgboost bugsnag pandas

zip -r -9 -q $LAMBDA_BUILD/placement.zip \
        urllib3 requests idna chardet certifi pytz numpy pandas bugsnag

zip -r -9 -q $LAMBDA_BUILD/soget_processor.zip \
        urllib3 requests idna certifi chardet pytz googlemaps xmltodict bugsnag

zip -r -9 -q $LAMBDA_BUILD/weather.zip \
        numpy urllib3 requests idna chardet certifi bugsnag

popd
