#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "$1";
echo "Created ssh key"

ssh-add -K ~/.ssh/id_rsa;
echo "Added ssh key to ssh-agent"

pbcopy < ~/.ssh/id_rsa.pub;
echo "Copies the contents of the id_rsa.pub file to your clipboard";

echo "Now go to GitHub and add ssh key"
