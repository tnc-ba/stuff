#! /usr/bin/env bash
QUIETNESS=2
PATH_TO_REPO="/home/vagrant/swidGenerator"
LOG_LEVEL=aptitude.resolver:fatal

echo "Updating packet lists..."
apt-get update -q=$QUIETNESS

echo "Installing aptitude"
apt-get install aptitude -y -q=$QUIETNESS --log-level=$LOG_LEVEL

echo "Installing python python-dev and ipython"
aptitude install python ipython python-dev -y -q=$QUIETNESS --log-level=$LOG_LEVEL

echo "Installing python-pip"
aptitude install python-pip -y -q=$QUIETNESS --log-level=$LOG_LEVEL

echo "Installing git"
aptitude install git -y -q=$QUIETNESS --log-level=$LOG_LEVEL

echo "Installing swidGenerator dependencies"
if [ -f $PATH_TO_REPO/requirements.txt ]
then
	pip install -r $PATH_TO_REPO/requirements.txt
fi