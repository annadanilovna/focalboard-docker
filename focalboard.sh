#!/bin/bash

# Created with ChatGPT.
# Runs focalboard in docker. Defaults to using 80 as the local port, but
# this can be specified by adding it as an unnamed parameter.
#
# ./focalboard.sh
# ./focalboard.sh 8080

# Check if a port was provided
if [ -z "$1" ]; then
    # No port was provided, use port 80
    port=80
else
    # Use the provided port
    port=$1
fi

# Run the Docker container
docker run -d --name focalboard -p "$port":8000 mattermost/focalboard

