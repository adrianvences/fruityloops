<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>

  <!-- var is the var of ittirations but the items it was were sending through (the array) -->
  <div class="container align-items-center mt-3">
    
    <div class="card bg-primary align-items-center">
      <h1>FRUITY LOOPS</h1>
      <div class="card-body">
      <ul>
        <c:forEach var="fruit" items="${fruits}">
          <li class="border">
            <p>
              <!-- as long as getter and setters are there we can use dot notation -->
            Fruit : <c:out value="${fruit.name}"></c:out>
            Price : <c:out value="${fruit.price}"/>
            </p>
          </li>
        </c:forEach>
      </div>
      </ul>
    </div>
  </div>
</body>
</html>
