# Projeto_Deploy_Java_DIO

# 🚀 Projeto Fullstack com Docker e Kubernetes

Este é um projeto completo que integra **frontend**, **backend** e **banco de dados**, com suporte a **containerização via Docker** e **orquestração com Kubernetes**. A aplicação permite o envio de comentários por um formulário web, armazenando os dados em um banco MySQL.

---

## 🧱 Estrutura do Projeto

```
deploy-projeto/
│
├── backend/                 # API em PHP
│   ├── conexao.php
│   ├── index.php
│   └── Dockerfile
│
├── frontend/                # Interface HTML/CSS/JS
│   ├── index.html
│   ├── style.css
│   └── script.js
│
├── database/                # Banco MySQL
│   ├── Sql.sql
│   └── Dockerfile
│
├── Deployment.yml           # Deploy no Kubernetes
├── services.yml             # Serviços Kubernetes
└── script.bat               # Script para automação
```

---

## 🗃️ Estrutura do Banco de Dados

### 🔸 Criação do banco de dados:

```sql
CREATE DATABASE comentarios;
```

### 🔸 Criação da tabela:

```sql
CREATE TABLE comentarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  comentario VARCHAR(255)
);
```

---

## 🐳 Como executar com Docker

### 1️⃣ Build das imagens:

```bash
docker build -t backend-image ./backend
docker build -t mysql-image ./database
```

---

### 2️⃣ (Opcional) Criar imagem do frontend:

```bash
docker build -t frontend-image ./frontend
```

---

## ☸️ Como executar com Kubernetes

### 🔹 Opção 1: Executar o script automático

```bash
script.bat
```

---

### 🔹 Opção 2: Aplicar manualmente os arquivos YAML

```bash
kubectl apply -f Deployment.yml
kubectl apply -f services.yml
```

---

## 📦 Requisitos

- Docker e Docker Compose instalados  
- Kubernetes (Minikube, K3s, Docker Desktop ou cluster real)  
- Git (opcional, para clonar o projeto)

---

## 📄 Licença

Este projeto está licenciado sob a **MIT License** – sinta-se livre para usar, estudar e modificar!

---

## ✨ Desenvolvido por

**Thais Vitória Ferraz Rangel**  
🚀 Projeto educacional para praticar integração entre camadas, containers e orquestração moderna.
