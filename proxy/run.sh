#!/bin/sh

set -e

# envsubst < /etc/letsencrypt/live/yourlifecaddie.com/fullchain.pem.tpl > /etc/letsencrypt/live/yourlifecaddie.com/fullchain.pem
# envsubst < /etc/letsencrypt/live/yourlifecaddie.com/privkey.pem.tpl > /etc/letsencrypt/live/yourlifecaddie.com/privkey.pem
# envsubst < /etc/letsencrypt/live/yourlifecaddie.com/cert.pem.tpl > /etc/letsencrypt/live/yourlifecaddie.com/cert.pem
# envsubst < /etc/letsencrypt/live/yourlifecaddie.com/chain.pem.tpl > /etc/letsencrypt/live/yourlifecaddie.com/chain.pem
envsubst '$FULLCHAIN1 $FULLCHAIN2 $FULLCHAIN3' < /etc/letsencrypt/live/yourlifecaddie.com/fullchain.pem.tpl
envsubst < /etc/letsencrypt/live/yourlifecaddie.com/privkey.pem.tpl
envsubst < /etc/letsencrypt/live/yourlifecaddie.com/cert.pem.tpl
envsubst < /etc/letsencrypt/live/yourlifecaddie.com/chain.pem.tpl
envsubst < /etc/nginx/default.conf.tpl > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'