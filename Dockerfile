FROM python:3.10-alpine

WORKDIR /app

# Instalar dependências de sistema necessárias no Alpine (compiladores, etc.)
RUN apk add --no-cache gcc musl-dev libffi-dev

# Copiar apenas arquivos necessários
COPY app/requirements.txt .

# Instalar dependências Python sem cache
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código da aplicação
COPY app/ .

EXPOSE 5000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]