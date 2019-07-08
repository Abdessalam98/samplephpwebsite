#!/bin/bash

# Retrieve all branches on local machine
git fetch

# Switch to v3 branch
git checkout v3

# Stop all running containers to prevent conflicts
docker stop $(docker ps -aq)

# Run containers
docker-compose up -d

# Open browser to check app
if hash xdg-open &> /dev/null
then
    xdg-open http://localhost:8080 2>/dev/null
elif hash open &> /dev/null
then
    open http://localhost:8080 2>/dev/null
else
    echo 'Couldn'\''t open the project on the browser, go to http://localhost:8080'
fi
