<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Funcionario</title>
<script type="text/javascript" src="js/mascara.js"></script>
<script type="text/javascript" src="js/navegacao.js"></script>
<link href="css/estilo.css" rel="stylesheet"></link>
</head>
<body class="body8">
	<form action="gravaFuncionario.jsp">
	<h1 align="center">CADASTRO DE FUNCIONARIO</h1>
		<table border="1" align="center">
			<!-- Linha do codigo -->
			<tr>
				<td>Código:</td>
				<td><input type="text" name="codigo"
					onkeyup="masc_numero(this)" /></td>
			</tr>

			<!-- Linha do genero -->
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" onkeyup="masc_letras(this)" /></td>
			</tr>
			<!-- Linha do valor -->
			<tr>
				<td>Salario:</td>
				<td><input type="text" name="salario"
					onkeyup="masc_moeda(this)" /></td>
			</tr>

		</table>
<div align="center">
<br/>
		<input type="submit" value="Salvar">

		
		
			<button type="button" onclick="index()">Voltar</button>
		</div>
	</form>
</body>
</html>