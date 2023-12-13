#!/usr/bin/env sh

# Ensure data directory exists
test -d /data || mkdir /data

# Ensure database file exists
touch "/data/${DATABASE_FILE}"

# Migrate database
gpodder2go init --database "/data/${DATABASE_FILE}"

# Create requested account
gpodder2go accounts create "${ADMIN_USERNAME}" \
    --database "/data/${DATABASE_FILE}" \
    --email "${ADMIN_EMAIL}" \
    --password "${ADMIN_PASSWORD}" \
    --name "${ADMIN_NAME}"

# Run server
gpodder2go serve --database "/data/${DATABASE_FILE}" --addr "0.0.0.0:3005" -- "$@"
