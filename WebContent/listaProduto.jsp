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
<title>Rela��o de Produtos Gravados</title>
<link href="css/estilo.css" rel="stylesheet"></link>
<script type="text/javascript" src="js/navegacao.js"></script>
</head>
<body class="body5">
	<%
		Connection bd = ConnectionFactory.getConnection();
		ProdutoDAO dao = new ProdutoDAO(bd);
	%>

	<center>

		<h1>Lista de Produtos</h1>
			<b>
		<table border="1" class="table1">

			<!-- linha de cabe�alho -->
			<tr>
				<td>C�digo</td>
				<td>Nome</td>
				<td>Valor</td>

			</tr>
			<%
				int quantidade = 0;
			%>
			<%
				for (Produto p : dao.buscarTodos()) {
					quantidade++;
			%>

			<tr>
				<td><%=p.getCodigo()%></td>
				<td><%=p.getDescri��o()%></td>
				<td>R$&nbsp;<%=p.getValor()%></td>
			</tr>

			<%
				}
			%>
		</table>
		<div align="center" class="div6">
			Quantidade:
			<%=quantidade%>

		</div>
		<br /> <br />
		<button type="button" onclick="index()">Voltar</button>
	</b>
	</center>
</body>
</html>