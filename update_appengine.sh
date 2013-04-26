#!/bin/bash

# stop if any command returns uncaught error
set -o pipefail
set -e

# update own source
git pull

# update appengine's talk.renatomangini.com project

cd app
appcfg.py update .

