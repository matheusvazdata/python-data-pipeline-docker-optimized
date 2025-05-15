# Python Data Pipeline - Docker Optimized

![Python](https://img.shields.io/badge/Python-3.10-blue)
![Docker](https://img.shields.io/badge/Docker-optimized-green)
![Alpine](https://img.shields.io/badge/Alpine-Linux-lightgrey)
![Best Practices](https://img.shields.io/badge/Best%20Practices-Dockerfile%20%26%20Dockerignore-orange)

Este projeto demonstra a criação de um **pipeline simples de dados em Python**, empacotado em **containers Docker otimizados com Alpine**, seguindo as melhores práticas de Engenharia de Dados moderna.

## 🎯 Objetivos de aprendizado

- Construção de imagens **leves e seguras com `python:alpine`**.
- Uso de **docker-compose** para orquestração local de pipelines.
- Aplicação de **boas práticas de Docker**: uso de `.dockerignore`, pip sem cache, instalação de dependências compiladas no Alpine.
- Preparação de containers prontos para **ambientes produtivos escaláveis**.

## 🔧 Tecnologias utilizadas

- Python 3.10
- Docker
- Docker Compose
- Alpine Linux
- FastAPI (simulação de API leve de dados)
- PostgreSQL (opcional - simulação de banco de dados de destino)

## 🚀 Como rodar localmente

1. Clone o repositório:
   ```bash
   git clone https://github.com/matheusvazdata/python-data-pipeline-docker-optimized.git
   cd python-data-pipeline-docker-optimized

2. Construa a imagem Docker:

   ```bash
   docker build -t python-data-pipeline .
   ```

3. Execute o container:

   ```bash
   docker run --rm python-data-pipeline
   ```

4. (Opcional) Orquestração completa com Docker Compose:

   ```bash
   docker compose up --build
   ```

5. Acesse a API (se implementada):
    ```bash
   * [http://localhost:5000](http://localhost:5000)
    ```

## 📁 Estrutura do projeto

```bash
├── app/
│   ├── main.py
│   └── ...
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
└── README.md
```