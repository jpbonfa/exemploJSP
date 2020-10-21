<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.treinamento.exemplojsp.dao.*"%>
<%@page import="br.com.treinamento.exemplojsp.model.*"%>
<%@page import="br.com.treinamento.exemplojsp.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.DecimalFormat;"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Relação de Funcionarios Gravados</title>
<link href="css/estilo.css" rel="stylesheet"></link>
<script type="text/javascript" src="js/navegacao.js"></script>
</head>
<body class="body4">
	<%
		Connection bd = ConnectionFactory.getConnection();
		FuncionarioDAO dao = new FuncionarioDAO(bd);
	%>
	<center>
		<b>
			<h1>Lista de Funcionarios</h1>

			<table border="1" class="table1">

				<!-- linha de cabeçalho -->
				<tr>
					<td><center>Código</center></td>
					<td><center>Nome</center></td>
					<td><center>Salario</center></td>
				</tr>
				<%
					DecimalFormat df = new DecimalFormat("#.00");
					int quantidade = 0;
					double media = 0.0;
					double maior = 0;
				%>
				<%
					for (Funcionario f : dao.buscarTodos()) {
						quantidade++;
				%>

				<tr>
					<td><%=f.getCodigo()%></td>
					<td><%=f.getNome()%></td>
					<td>R$&nbsp;<%=f.getSalario()%></td>
				</tr>

				<% if (maior < f.getSalario()) {
					maior = f.getSalario();
				}
				
					media += f.getSalario();
					}
					media = media / quantidade;
				%>
			</table>
			<div align="center" class="div6">
				Quantidade de Funcionarios:
				<%=quantidade%>
				<br /> Media Salarial: R$
				<%=df.format(media)%>
				<br /> Maior Salario: R$
				<%=df.format(maior)%>

			</div> <br /> <br />
			<button type="button" onclick="index()">Voltar</button>
	</center>
	</b>

</body>
</html>