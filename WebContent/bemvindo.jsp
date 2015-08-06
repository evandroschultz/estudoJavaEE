<%@page import="java.util.List"%>
<%@page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.caelum.jdbc.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="dao" class="br.com.caelum.jdbc.ContatoDao"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Bem vindo</h1>
 

<c:forEach var="contato" items="${dao.lista}">
${contato.nome}, ${contato.email},
${contato.endereco}, ${contato.dataNascimento} 
</c:forEach>
		

</body>
</html>