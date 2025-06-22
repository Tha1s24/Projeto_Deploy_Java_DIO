# Projeto_Deploy_Java_DIO

# 🚀 Projeto Fullstack com Docker e Kubernetes

Este é um projeto completo que integra **frontend**, **backend** e **banco de dados**, com suporte a **containerização via Docker** e **orquestração com Kubernetes**. A aplicação permite o envio de comentários por um formulário web, armazenando os dados em um banco MySQL.

---

## 🧱 Estrutura do Projeto

---

deploy-projeto/
│
├── backend/ # API em PHP
│ ├── conexao.php
│ ├── index.php
│ └── Dockerfile
│
├── frontend/ # Interface HTML/CSS/JS
│ ├── index.html
│ ├── style.css
│ └── script.js
│
├── database/ # Banco MySQL
│ ├── Sql.sql
│ └── Dockerfile
│
├── Deployment.yml # Deploy no Kubernetes
├── services.yml # Serviços Kubernetes
└── script.bat # Script para automação

---

## 🖥️ Tecnologias Utilizadas

- **Frontend**: HTML5, CSS3, JavaScript
- **Backend**: PHP 8.1 com Apache
- **Database**: MySQL 8.0
- **Containers**: Docker
- **Orquestração**: Kubernetes (YAML)
- **Automação**: Batch Script (.bat)

---

## 📋 Funcionalidades

- Envio de nome, email e comentário via formulário web
- Armazenamento dos dados em banco de dados MySQL
- Comunicação entre containers (frontend, backend e db)
- Implantação simplificada em ambiente Kubernetes

---

## 🗃️ Estrutura do Banco de Dados

```sql
CREATE DATABASE comentarios;

CREATE TABLE comentarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  comentario VARCHAR(255)
);

---

🐳 Como executar com Docker

---

1. Build das imagens:

---
docker build -t backend-image ./backend
docker build -t mysql-image ./database

---

2. (Opcional) Para frontend via imagem:

---

docker build -t frontend-image ./frontend

---

☸️ Como executar com Kubernetes

1. Execute o script:

---

script.bat

---
Ou manualmente:

---

kubectl apply -f Deployment.yml
kubectl apply -f services.yml

---

## 📦 Requisitos:

---

- Docker e Docker Compose instalados

- Kubernetes (ex: Minikube, K3s ou cluster real)

- Git (opcional para clonar)

---

## 📄 Licença:

---

Este projeto está licenciado sob a MIT License – sinta-se livre para usar, estudar e modificar!

---

## ✨ Desenvolvido por:

---

Thais Vitória Ferraz Rangel
🚀 Projeto educacional para praticar integração entre camadas, containers e orquestração moderna.
