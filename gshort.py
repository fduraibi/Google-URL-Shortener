# By Fahad Alduraibi 2015
# http://www.fadvisor.net

import sys
import requests
import json

# Get you API key from Google:
# https://developers.google.com/url-shortener/v1/getting_started#APIKey
API_key="PUT YOUR KEY HERE"

GoogleURL = "https://www.googleapis.com/urlshortener/v1/url?key=" + API_key
longURL = sys.argv[1]
data = json.dumps({'longUrl': longURL})

result = requests.post(GoogleURL, headers={'content-type': 'application/json'}, data=data)
shortURL=result.json()['id']
sys.stdout.write(shortURL)
#print(shortURL)
