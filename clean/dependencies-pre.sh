#!/usr/bin/env bash

CF_USER=$1
CF_PASSWORD=$2
CF_ORG=$3
CF_SPACE=$4

curl -v -L -o cf-cli_amd64.deb 'https://cli.run.pivotal.io/stable?release=debian64&source=github'
sudo dpkg -i cf-cli_amd64.deb
cf api https://api.run.pivotal.io
cf auth $CF_USER $CF_PASSWORD
cf target -o $CF_ORG -s $CF_SPACE
cf apps