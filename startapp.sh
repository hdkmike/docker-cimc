#!/bin/sh

echo "Starting app"

cd /app

wget --no-check-certificate -O kvm.jnlp "https://${CIMC_HOST}:${CIMC_PORT}/kvm.jnlp?cimcAddr=${CIMC_HOST}&tkn1=${CIMC_USER}&tkn2=${CIMC_PASSWORD}"

exec javaws kvm.jnlp &

wait
