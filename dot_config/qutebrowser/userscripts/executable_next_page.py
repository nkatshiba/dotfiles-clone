#!/usr/bin/env python

import sys
import urllib.parse

# Get the current URL from the command-line argument
url = sys.argv[1]

# Parse the URL to extract the page number
parsed_url = urllib.parse.urlparse(url)
query_dict = urllib.parse.parse_qs(parsed_url.query)
page_num = int(query_dict.get('page', ['1'])[0])

# Construct the URL for the next page
next_page_num = page_num + 1
next_url = urllib.parse.urlunparse(parsed_url._replace(query=urllib.parse.urlencode({'page': str(next_page_num)})))

# Output the next URL to qutebrowser
print(f"open -t {next_url}")
