<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
<script type="text/javascript" src="js/mascara.js"></script>
<script type="text/javascript" src="js/navegacao.js"></script>
<link href="css/estilo.css" rel="stylesheet"></link>

</head>
<body class="body10">
	<form action="gravaProduto.jsp">
	<h1 align="center">CADASTRO DE PRODUTO</h1>
		<table border="1" align="center">
			<!-- Linha do codigo -->
			<tr>
				<td>Código:</td>
				<td><input type="text" name="codigo"
					onkeyup="masc_numero(this)" /></td>
			</tr>

			<!-- Linha do genero -->
			<tr>
				<td>Descrição:</td>
				<td><input type="text" name="descricao onkeypress=" somenteLetras(event)"" /></td>
			</tr>
			<!-- Linha do valor -->
			<tr>
				<td>Valor:</td>
				<td><input type="number" name="valor" /></td>
			</tr>

		</table>
		<div align="center">
		<br/> 	
			 <input type="submit" value="SALVAR"> 
			<button type="button" onclick="index()">VOLTAR</button>
		</div>
	</form>
</body>
</html>