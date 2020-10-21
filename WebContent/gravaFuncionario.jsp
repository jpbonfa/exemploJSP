<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.treinamento.exemplojsp.dao.*"%>
<%@page import="br.com.treinamento.exemplojsp.model.*"%>
<%@page import="br.com.treinamento.exemplojsp.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravando Funcionario</title>
</head>
<body">
<%
		Connection bd = ConnectionFactory.getConnection();

		Funcionario funcionario = new Funcionario();
		funcionario.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		funcionario.setNome(request.getParameter("nome"));
		funcionario.setSalario(Double.parseDouble("salario"));

		FuncionarioDAO dao = new FuncionarioDAO(bd);

		try {
			dao.inserir(funcionario);
			response.sendRedirect("listaFuncionario.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>


</body>
</html>