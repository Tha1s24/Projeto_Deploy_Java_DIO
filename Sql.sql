CREATE DATABASE IF NOT EXISTS comentarios;
USE comentarios;

CREATE TABLE IF NOT EXISTS comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    comentario VARCHAR(255)
);
