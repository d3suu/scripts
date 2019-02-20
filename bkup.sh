#!/usr/bin/bash

# This script is meant to run on Termux on Android, to backup whole storage without using any more data
# On PC run "nc -l -p 9213 > backup.tar"

# Change address variable to the one of your PC

address="192.168.0.158"
dir="/storage/emulated/legacy"
tar cv $dir | nc $address 9213
