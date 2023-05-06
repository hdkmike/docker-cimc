#!/bin/sh

echo "Starting app"

cd /app

wget --no-check-certificate -O kvm.jnlp "https://${CIMC_IP}:${CIMC_PORT}/kvm.jnlp?cimcAddr=${CIMC_IP}&tkn1=${CIMC_USER}&tkn2=${CIMC_PASSWORD}"

exec javaws kvm.jnlp &

wait
