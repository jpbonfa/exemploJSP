<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de filme</title>
<link href="css/estilo.css" rel="stylesheet"></link>
<script type="text/javascript" src="js/mascara.js"></script>
<script type="text/javascript" src="js/navegacao.js"></script>
</head>
<body class="body7">
	<form action="gravaFilme.jsp">
		<div class="div7">
			<b>
				<h1 align="center">CADASTO DE FILME</h1>
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
						<td><input type="text" name="nome"
							onkeypress="somenteLetras(event)" /></td>
					</tr>
					<!-- Linha do valor -->
					<tr>
						<td>Valor:</td>
						<td><input type="number" name="valor" /></td>
					</tr>

				</table>
			</b>
		</div>
		<div align="center">
			<br /> <input align="center" type="submit" value="Salvar">
	</form>


	<button type="button" onclick="index()">Voltar</button>
	</div>
</body>
</html>