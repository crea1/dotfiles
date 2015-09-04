#!/usr/bin/env python
# Clones all GitHub repositories of my user to current directory.
#
# Import modules
import requests
import json
from subprocess import call

# Base URL for GitHub repo REST API for my user
base_url = 'https://api.github.com/users/crea1/repos'

# Fetch and parse JSON
repos_url = base_url
headers = {'Accept': 'application/vnd.github.v3+json'}
repos_response = requests.get(repos_url, headers=headers)
repos_parsed_json = json.loads(repos_response.text)

# Loop though repositories and clone them
for repo in repos_parsed_json:
    print "Cloning " + repo['name'] + " - \"" + repo['description'] + "\""
    call(["git", "clone", repo['clone_url']])
    print
