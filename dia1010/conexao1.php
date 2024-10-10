<?php
$servername = "localhost"; // ou o IP do servidor
$username = "host"; // seu usuário do MySQL
$password = ""; // sua senha do MySQL
$dbname = "exercicio1front"; // nome do banco de dados

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Capturar dados do formulário
$descricao = $_POST['descricao'];
$preco = $_POST['preco'];

// Preparar e executar a consulta
$sql = "INSERT INTO tbl_produto (pro_descricao, pro_preco) VALUES (?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sd", $descricao, $preco); // "sd" significa string, decimal

if ($stmt->execute()) {
    echo "Produto cadastrado com sucesso!";
} else {
    echo "Erro ao cadastrar produto: " . $stmt->error;
}

// Fechar a conexão
$stmt->close();
$conn->close();
?>
