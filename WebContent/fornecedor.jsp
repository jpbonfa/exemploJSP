<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Fornecedor</title>
<script type="text/javascript" src="js/mascara.js"></script>
<script type="text/javascript" src="js/navegacao.js"></script>
<link href="css/estilo.css" rel="stylesheet"></link>
</head>
<body class="body9">

	<form action="gravaFornecedor.jsp">
		<table border="1" align="center">
		<h1 align="center">CADASTRO DE FORNECEDOR</h1>

			<!-- Linha do codigo -->
			<tr>
				<td>Código:</td>
				<td><input type="text" name="codigo"
					onkeyup="masc_numero(this)" /></td>
			</tr>
			<!-- Linha do nome -->
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome"
					onkeypress="somenteLetras(event)" /></td>
			</tr>
			<!-- Linha do celular -->
			<tr>
				<td>Cidade:</td>
				<td><input type="text" name="cidade"
					onkeypress="somenteLetras(event)" /></td>
			</tr>
			<!-- Linha da idade -->
			<tr>
				<td>Telefone:</td>
				<td><input type="text" name="telefone"
					onkeyup="masc_telefone(this)" /></td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><input type="email" name="email"
					onblur="validacaoEmail(this)"/></td>
			</tr>
		</table>
		<div align="center">
<br/>
		<input type="submit" value="Salvar ">
	</form>
		<button type="button" onclick="index()">Voltar</button>
	</div>
	
	
	<script type="text/javascript">
	function validacaoEmail(field) {
		usuario = field.value.substring(0, field.value.indexOf("@"));
		dominio = field.value.substring(field.value.indexOf("@")+ 1, field.value.length);
		if ((usuario.length >=1) &&
		    (dominio.length >=3) &&
		    (usuario.search("@")==-1) &&
		    (dominio.search("@")==-1) &&
		    (usuario.search(" ")==-1) &&
		    (dominio.search(" ")==-1) &&
		    (dominio.search(".")!=-1) &&
		    (dominio.indexOf(".") >=1)&&
		    (dominio.lastIndexOf(".") < dominio.length - 1)) {
			alert("email valido");
		}
		else{
			alert("E-mail invalido");
		}
	}

	</script>
</body>
</html>