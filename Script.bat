@echo off
echo Iniciando build das imagens...
docker build -t backend-image ./backend
docker build -t mysql-image ./database

echo Aplicando deploy no Kubernetes...
kubectl apply -f Deployment.yml
kubectl apply -f services.yml

echo Projeto em execução!
