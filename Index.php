<?php
include 'conexao.php';

$nome = $_POST['nome'] ?? '';
$email = $_POST['email'] ?? '';
$comentario = $_POST['comentario'] ?? '';

if ($nome && $email && $comentario) {
    $stmt = $conn->prepare("INSERT INTO comentarios (nome, email, comentario) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $nome, $email, $comentario);
    $stmt->execute();
    echo "Comentário enviado!";
} else {
    echo "Preencha todos os campos.";
}
?>
