#!/bin/bash

chmod a+rw grades_john.json
chmod a+rw grades_mary.json

sudo apt update
echo "done" >>/root/update-finished

sudo apt install postgresql postgresql-contrib -y
echo "done" >>/root/install-finished
