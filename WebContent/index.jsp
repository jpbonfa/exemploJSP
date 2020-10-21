<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/estilo.css" rel="stylesheet"></link>
<title>Insert title here</title>
<script type="text/javascript" src="js/navegacao.js"></script>
</head>
<body class="body1">

	<h1 class="h1A" align="center">CONTROLE DE LOCADORA</h1>
	<div align="left" class="div1">
		<input type="button" class="a1" onclick="filme()" value="Filme" />&nbsp;-&nbsp;
		<input type="button" class="a1" onclick="listaFilme()"
			value="Lista de Filme" /> <br /> <br />
	</div>
	<div  class="div2">
		<input type="button" class="a1" onclick="cliente()" value="Cliente" />&nbsp;-&nbsp;
		<input type="button" class="a1" onclick="listaCliente()"
			value="Lista de Cliente" /> <br /> <br />
	</div>
	<div class="div3">
		<input type="button" class="a1" onclick="funcionario()"
			value="Funcionario" />&nbsp;-&nbsp; <input type="button" class="a1"
			onclick="listaFuncionario()" value="Lista de Funcionario" /> <br />
		<br />
	</div>
	<div class="div4">
		<input type="button" class="a1" onclick="produto()" value="Produto" />&nbsp;-&nbsp;
		<input type="button" class="a1" onclick="listaProduto()"
			value="Lista de Produto" /> <br /> <br />
	</div>
	<div class="div5">
		<input type="button" class="a1" onclick="fornecedor()"
			value="Fornecedor" />&nbsp;-&nbsp; <input type="button" class="a1"
			onclick="listaFornecedor()" value="Lista de Fornecedor" />
	</div>

</body>
</html>