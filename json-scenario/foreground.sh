#!/bin/bash

echo "Please wait while we're getting everything ready..."

sleep 1; awaitInstall.sh

echo "Preparation done!"
echo "Logging into PostgreSQL"

sudo -u postgres psql
