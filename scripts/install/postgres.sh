#! /bin/sh
set -e

while true; do
  if nc -z -v -w 1 postgres 5432; then
    break
  else
    sleep 1
  fi
done

cli_args="-h ${POSTGRES_HOST:-postgres} -U ${POSTGRES_USER:-postgres} -p ${POSTGRES_PORT:-5432} -v ON_ERROR_STOP=1"

res=$(psql $cli_args -Atc "SELECT version FROM app_public.version ORDER BY id DESC LIMIT 1;" || echo '')

if [ "$res" = "" ]; then
  echo '===> Setting up PostgreSQL'
  psql $cli_args -f ../psql/main.sql
fi

res=$(psql $cli_args -Atc "select datname from pg_database where datistemplate = false and datname='grafana';")
if [ "$res" = "" ]; then

  psql $cli_args -c "CREATE USER grafana WITH PASSWORD '${GRAFANA_DB_PASSWORD:-grafana}';";
  psql $cli_args -c "CREATE DATABASE grafana;"
  psql $cli_args -c "GRANT ALL PRIVILEGES ON DATABASE grafana TO grafana;"

fi
