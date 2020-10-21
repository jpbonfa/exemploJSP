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
<title>Gravando Fornecedor</title>
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();

		Fornecedor fornecedor = new Fornecedor();
		fornecedor.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		fornecedor.setNome(request.getParameter("nome"));
		fornecedor.setCidade(request.getParameter("cidade"));
		fornecedor.setTelefone(request.getParameter("telefone"));
		fornecedor.setEmail(request.getParameter("email"));
		
		

		FornecedorDAO dao = new FornecedorDAO(bd);

		try {
			dao.inserir(fornecedor);
			response.sendRedirect("listaFornecedor.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>