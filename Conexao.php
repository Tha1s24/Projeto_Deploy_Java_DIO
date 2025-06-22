<?php
$host = 'db';
$user = 'root';
$pass = 'root';
$db = 'comentarios';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}
?>
