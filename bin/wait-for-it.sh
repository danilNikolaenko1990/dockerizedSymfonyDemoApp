#!/bin/bash

set -e

cmd="$@"

until psql postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:5432/$DB_NAME -c '\l'; do
  >&2 echo "waiting for db"
  sleep 1
done

>&2 echo "Db is up - executing command"
#echo "$DB_USER"

exec $cmd