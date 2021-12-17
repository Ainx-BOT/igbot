#!system/bin/sh

pkg install root-repo -y
pkg install unstable-repo -y
pkg install x11-repo -y
pkg update && pkg upgrade -y
pkg install git python -y -y
termux-setup-storage -y
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
python3 run.py
