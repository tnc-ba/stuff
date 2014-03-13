#! /usr/bin/env bash
QUIETNESS=2
PATH_TO_REPO="/home/vagrant/swidGenerator"

echo "Installing python python-dev and ipython"
yum install python python-ipython python-devel -y -q

echo "Installing python-pip"
yum install python-pip -y -q

echo "Installing git"
yum install git -y -q

echo "Installing swidGenerator dependencies"
if [ -f $PATH_TO_REPO/requirements.txt ]
then
	pip install -r $PATH_TO_REPO/requirements.txt
fi