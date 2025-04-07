#!/bin/bash
echo "Script to install git"
echo "Installation started"

if [ "$(uname)" = "Linux" ]; then 
    echo "This is a Linux box, installing git..."
    yum install git -y 

elif [ "$(uname)" = "Darwin" ]; then 
    echo "This is not a Linux box."
    echo "This is macOS, installing git..."
    brew install git 

else 
    echo "Not installing as the system doesn't match the requirement"
fi
