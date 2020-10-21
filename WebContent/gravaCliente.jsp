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
<title>Gravando Cliente</title>
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();

		Cliente cliente = new Cliente();
		cliente.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		cliente.setNome(request.getParameter("nome"));
		cliente.setCelular(request.getParameter("celular"));
		cliente.setIdade(Integer.parseInt(request.getParameter("idade")));
		
		ClienteDAO dao =  new ClienteDAO(bd);
		
		try {
			dao.inserir(cliente);
			response.sendRedirect("listaCliente.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>