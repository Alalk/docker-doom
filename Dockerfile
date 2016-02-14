#get latest ubuntu image
from    ubuntu

# update the package repo
run     echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run     apt-get update

# Install vnc, xvfb in order to create a 'fake' display and dosbox
run     apt-get install -y x11vnc xvfb dosbox
run     mkdir ~/.vnc

# Copy the Doom Files
run     mkdir /usr/doom    
copy doom/*  /usr/doom/

# setup VNC password
run     x11vnc -storepasswd password ~/.vnc/passwd


