#!/bin/bash
# First, install PIP
sudo apt install python3 python3-venv libaugeas0 -y

# Set up a virtual environment
sudo python3 -m venv /opt/certbot/
sudo /opt/certbot/bin/pip install --upgrade pip

# Install Certbot on Apache (or NGINX)
# sudo /opt/certbot/bin/pip install certbot certbot-apache
sudo /opt/certbot/bin/pip install certbot certbot-nginx

# Create a symlink to ensure Certbot runs
sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot



# The way to create SSL via Certbot
# Create SSL certs for all domains and configure redirects in the web server
# sudo certbot --apache
# sudo certbot --nginx

# Create SSL certs for a specified domain
# sudo certbot --apache -d example.com -d www.example.com

# Only install SSL certs:
# sudo certbot certonly --apache
# sudo certbot certonly --nginx