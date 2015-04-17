#!/usr/bin/bash

# By Fahad Alduraibi 2015
# http://www.fadvisor.net

# Get you API key from Google:
# https://developers.google.com/url-shortener/v1/getting_started#APIKey
API_key='PUT YOUR KEY HERE'

GoogleURL='https://www.googleapis.com/urlshortener/v1/url?key='$API_key
longURL=$1

# -f to supress fail messages, -s for silent to supress progress reportingq, remove
# them for debugging.
curl -f -s $GoogleURL -H 'Content-Type: application/json' -d "{'longUrl': '$longURL'}" | awk '/id/ { printf $2}' | awk -F\" '{ printf $2 }'