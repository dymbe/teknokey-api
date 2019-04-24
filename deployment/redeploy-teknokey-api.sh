#!/bin/bash -e

function cleanup {
    echo "Error occurred"
}

trap cleanup ERR

cd /opt/teknokey-api
git pull origin master

npm install
systemctl restart teknokeyapi.service
