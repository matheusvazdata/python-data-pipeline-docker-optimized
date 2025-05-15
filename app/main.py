from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Pipeline de Dados com Python e Docker Otimizado"}

@app.get("/health")
def health():
    return {"status": "ok"}