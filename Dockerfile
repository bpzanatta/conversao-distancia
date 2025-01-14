FROM python:3.9

# Diretório de trabalho
WORKDIR /app

# Copiar dependências
COPY requirements.txt .

# Instalar dependências
RUN pip install -r requirements.txt

# Copiar o código da aplicação
COPY . .

# Expor a porta 5000
EXPOSE 5000

# Iniciar o Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]