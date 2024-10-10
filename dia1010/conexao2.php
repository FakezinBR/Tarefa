<?php
$servername = "localhost"; // ou o IP do servidor
$username = "host";
$password = "";
$dbname = "vendas";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
echo "Conectado com sucesso";

// Não se esqueça de fechar a conexão quando terminar
$conn->close();
?>

