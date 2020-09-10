<%@	page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="pl">
	<head>
		<meta charset="UTF-8">
		<title>Strefa Admina - Dodaj trening</title>

		<meta name="description" content="System obsługi twojej siłowni" />
		<meta name="keywords" content="system, obsługa, siłowni" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/strefa-klienta-zalogowany-user.css" type="text/css" />
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontello.css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext" rel="stylesheet">
		
	</head>
	<body>
		<header>
			<jsp:include page="/WEB-INF/view/myHeader.jsp"/>
		</header>
		<main>
			<div class="container">
			
				<div class="row">	
				
					<div class="headerTile col-12">
						Dodaj nowy typ treningu
					</div>
					
					<form:form id="saveForm" action="${pageContext.request.contextPath}/user/admin/workouts/add" modelAttribute="workout" method="post">
						<table>
							<tbody>
								<tr>
									<td><label>Typ treningu: </label></td>
									<td><form:input path="typeOfWorkout" type="text" name="typeOfWorkout"/></td>
								</tr>
								<tr>
									<td><label>Opis: </label></td>
									<td><form:textarea path="description" name="description" rows="4" cols="80" maxlength="255" minlength="0"/></td>
								</tr>
								<tr>
									<td><label>Zdjęcie: </label></td>
									<td><form:input path="image" type="text" name="image"/></td>
								</tr>
								<tr>
									<td><label>Czas trwania treningu: </label></td>
									<td><form:input path="duration" type="time" name="duration" step="1"/></td>
								</tr>
							</tbody>
						</table>
					</form:form>
				</div>
				
				<div class="row">
		   
			       <div class="d-flex justify-content-between col-12">
				       	<form:form action="${pageContext.request.contextPath}/user/admin/workouts" method="get"> 
							<button type="submit" class="btn btn-secondary float-left">Powrót</button>
						</form:form>
				     	
						<form:form>
							<button type="submit" class="btn btn-secondary float-right" form="saveForm">Dodaj</button> 
						</form:form>
					</div>
					
				</div>
						
			</div>
		</main>
		
		<footer>
			<jsp:include page="/WEB-INF/view/myFooter.jsp"/>
		</footer>
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
			integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" 
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
			integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
			crossorigin="anonymous"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	</body>
</html>