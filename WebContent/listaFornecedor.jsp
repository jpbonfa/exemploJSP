<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.treinamento.exemplojsp.dao.*"%>
<%@page import="br.com.treinamento.exemplojsp.model.*"%>
<%@page import="br.com.treinamento.exemplojsp.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Relação de Fornecedores Gravados</title>
<script type="text/javascript" src="js/navegacao.js"></script>
<link href="css/estilo.css" rel="stylesheet"></link>

</head>
<body class="body6">

	<%
		Connection bd = ConnectionFactory.getConnection();
		FornecedorDAO dao = new FornecedorDAO(bd);
	%>
	<center>
	<b>

		<h1>Lista de Fornecedor</h1>

		<table border="1" class="table1">

			<!-- linha de cabeçalho -->
			<tr>
				<td><center>Código</center></td>
				<td><center>Nome</center></td>
				<td><center>Cidade</center></td>
				<td><center>Telefone</center></td>
				<td><center>E-mail</center></td>
			</tr>
			<%
				int quantidade = 0;
			%>
			<%
				for (Fornecedor fornecedor : dao.buscarTodos()) {

					quantidade++;
			%>

			<tr>
				<td><%=fornecedor.getCodigo()%></td>
				<td><%=fornecedor.getNome()%></td>
				<td><%=fornecedor.getCidade()%></td>
				<td><%=fornecedor.getTelefone()%></td>
				<td><%=fornecedor.getEmail()%></td>
			</tr>

			<%
				}
			%>
		</table >
		<div align="center" class="div6">
			Quantidade:
			<%=quantidade%>

		</div>
		<br /> <br />
		<button type="button" onclick="index()">Voltar</button>
	</center>
</b>
</body>
</html>