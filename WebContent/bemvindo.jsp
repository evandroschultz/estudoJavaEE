<%@page import="java.util.List"%>
<%@page import="br.com.caelum.jdbc.modelo.Contato"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.caelum.jdbc.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<jsp:useBean id="dao" class="br.com.caelum.jdbc.ContatoDao"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/jquery-ui.css" rel="stylesheet">
<script type=" text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>Bem vindo</h1>
 
<table>
  <!-- percorre contatos montando as linhas da tabela -->
  <c:forEach var="contato" items="${dao.lista}">
    <tr>
      <td>${contato.nome}</td>
      <td>${contato.email}</td>
      <td>${contato.endereco}</td>
      <td><fmt:formatDate value="${contato.dataNascimento.time}"
    pattern="dd/MM/yyyy" /></td>
    </tr>
  </c:forEach><br>  
</table>
		
<caelum:campoData id="dtNascimento" label="teste"></caelum:campoData>
</body>
</html>