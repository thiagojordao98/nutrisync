#!/bin/sh

echo "Aguardando postgres..."

# Loop até o host e porta estarem acessíveis
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  sleep 0.5
done

echo "PostgreSQL iniciado"

# Roda migrations
python manage.py migrate

# Coleta estáticos
python manage.py collectstatic --noinput

# Inicia servidor
exec "$@"
