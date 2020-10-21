<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Cliente</title>
<script type="text/javascript" src="js/mascara.js"></script>
<script type="text/javascript" src="js/navegacao.js"></script>
<link href="css/estilo.css" rel="stylesheet"></link>

</head>
<body class="body8">
	<form action="gravaCliente.jsp">
		<div class="div7">
			<h1 align="center">CADASTRO DE CLIENTE</h1>
			<table border="1" align="center">

				<!-- Linha do codigo -->
				<tr>
					<td>Código:</td>
					<td><input type="text" name="codigo"
						onkeyup="masc_numero(this)" /></td>
				</tr>
				<!-- Linha do nome -->
				<tr>
					<td>Nome:</td>
					<td><input type="text" name="nome" onkeyup="masc_letras(this)" /></td>
				</tr>
				<!-- Linha do celular -->
				<tr>
					<td>Celular:</td>
					<td><input type="text" name="celular"
						onkeyup="masc_celular(this)" /></td>
				</tr>
				<!-- Linha da idade -->
				<tr>
					<td>Idade:</td>
					<td><input type="text" name="idade"
						onkeyup="masc_numero(this)" /></td>
				</tr>
			</table>
		</div>
		<div align="center">
			<br /> <input align="center" type="submit" value="Salvar">
	</form>


	<button type="button" onclick="index()">Voltar</button>
	</div>
</body>
</html>