#!/bin/bash

sudo apt update
echo "done" >>/root/update-finished

sudo apt install postgresql postgresql-contrib -y
echo "done" >>/root/install-finished
