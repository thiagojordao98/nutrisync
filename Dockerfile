# Usar uma imagem base do Python
FROM python:3.9-slim

# Configurar variáveis de ambiente para desativar o buffering do stdout/stderr
ENV PYTHONUNBUFFERED 1

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Instalar dependências do sistema
RUN apt-get update \
    && apt-get install -y build-essential libpq-dev \
    && apt-get clean

# Copiar os arquivos de requisitos
COPY requirements.txt /app/

# Instalar dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação para o contêiner
COPY . /app/

# Coletar arquivos estáticos
RUN python manage.py collectstatic --noinput

# Executar as migrações do banco de dados e iniciar o servidor Django
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
