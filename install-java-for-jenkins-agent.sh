#!/bin/bash
# Install openjdk 17
sudo apt-get update
sudo apt install -y --no-install-recommends openjdk-17-jdk-headless

# Verify Java version
java -version

# Add Jenkins user
sudo adduser --group --home /home/jenkins --shell /bin/bash jenkins