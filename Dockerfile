# Builder: usa Python completo (evita dores de Alpine para builds)
FROM python:3.10 AS builder

WORKDIR /install

COPY app/requirements.txt .

RUN pip install --prefix=/install --no-cache-dir -r requirements.txt


# Runtime: imagem leve com Alpine, sem build tools
FROM python:3.10-alpine

WORKDIR /app

# Melhorias para produção
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

# Copiar apenas as dependências do builder
COPY --from=builder /install /usr/local

# Copiar apenas a aplicação
COPY app/ .

EXPOSE 5000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]