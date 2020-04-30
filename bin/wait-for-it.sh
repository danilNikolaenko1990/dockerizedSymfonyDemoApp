#!/bin/bash

set -e

cmd="$@"

until psql $DATABASE_URL -c '\l'; do
  >&2 echo "waiting for db"
  sleep 1
done

>&2 echo "Db is up - executing command"
#echo "$DB_USER"

exec $cmd