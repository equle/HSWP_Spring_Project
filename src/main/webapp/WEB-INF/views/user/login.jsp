<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>Login page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>
 
	<!-- 	incoude - menu -->
	<%@include file="../include/menu.jsp" %>
	<br>
<div class="container">
<form action="login" method="post">
  <div class="form-group">
    <label>ID:</label>
    <input type="text" class="form-control" id="id" name="id">
  </div>
  <div class="form-group">
    <label>Password:</label>
    <input type="password" class="form-control" id="pw" name="pw">
  </div> 
  <div class="form-group">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div> 
  </form>
</div>

</body>
</html>