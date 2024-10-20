#!/bin/bash
# Create sensitive files for Traefik
touch ./traefik/access.log
touch ./traefik/acme.json && chmod 600 ./traefik/acme.json

# Create sensitive files for 3X-UI
touch ./x-ui/access.log
touch ./x-ui/error.log

# Create config files for JacRed
touch ./jacred/init.conf
