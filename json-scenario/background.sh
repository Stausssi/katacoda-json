#!/bin/bash

chmod 777 grades_john.json
chmod 777 grades_mary.json

sudo apt update
echo "done" >>/root/update-finished

sudo apt install postgresql postgresql-contrib -y
echo "done" >>/root/install-finished
