# Google-URL-Shortener
A script that shortens a URL using Google URL Shortner service (in Bash and python)

First of all you will need a Google URL Shortner API key, follow the instructions
here to get one:
https://developers.google.com/url-shortener/v1/getting_started#APIKey
Generate a server application key and put it inside the script files.

To use the scripts simply run them with the long URL as the only parameter:

Bash:
```./gshort.sh http://www.fadvisor.net```

Python:
```python ./gshort.py http://www.fadvisor.net```

* The scripts are meant to be used by other applications, so they are not checking
the input and output, your applicaiton should do that, or update the scripts as you need.