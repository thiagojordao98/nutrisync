# Usar uma imagem base do Python
FROM python:3.9-slim

# Configurar variáveis de ambiente
ENV PYTHONUNBUFFERED 1

# Definir o diretório de trabalho
WORKDIR /app

# Instalar dependências do sistema
RUN apt-get update \
    && apt-get install -y build-essential libpq-dev \
    && apt-get clean

# Instalar dependências do Python
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação
COPY . /app/

# REMOVIDO: RUN python manage.py collectstatic --noinput
# O comando acima foi removido porque o banco não está disponível no build.

# Executar tudo no início do container
CMD ["sh", "-c", "python manage.py collectstatic --noinput && python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
