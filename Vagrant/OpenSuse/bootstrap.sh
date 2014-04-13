#! /usr/bin/env bash
QUIETNESS=2
PATH_TO_REPO="/home/vagrant/swidGenerator"
LOG_LEVEL=aptitude.resolver:fatal

echo "Updating packet lists..."
sudo zypper refresh

sudo zypper -n remove patterns-openSUSE-minimal_base-conflicts-12.3-7.10.1.i586
echo "Installing python and tools (pip, ipython, devel_python)"
sudo zypper -n install python
sudo zypper -n install ipython
sudo zypper -n install devel_python
sudo zypper -n install python-pip

echo "Installing git"
sudo zypper -n install git

echo "Installing swidGenerator dependencies"
if [ -f $PATH_TO_REPO/requirements.txt ]
then
	pip install -r $PATH_TO_REPO/requirements.txt
fi