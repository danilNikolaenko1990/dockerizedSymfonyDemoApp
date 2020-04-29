#!/bin/bash

set -e

host="$1"
shift
cmd="$@"

until psql postgresql://admin:admin@postgres-container:5432/postgres -c '\l'; do
  >&2 echo "waiting for db"
  sleep 1
done

>&2 echo "Db is up - executing command"
exec $cmd