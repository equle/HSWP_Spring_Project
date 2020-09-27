<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
	<head>
	  <title>Bootstrap Example</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$("#update_btn").on("click", function(){
				formObj.attr("action", "updateNote");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$("#delete_btn").on("click", function(){
				formObj.attr("action", "delete");
				formObj.attr("method", "post");
				formObj.submit();
			})
			
			// 취소
			$("#list_btn").on("click", function(){
				
				location.href = "/listNote";
			})
		})
	</script>
	
<body style="height:2000px">



<div class="jumbotron text-center">
	<h1> Hello world! </h1>
	<p>Resize this responsive page to see the effect!</p> 
</div>

<%@include file="../include/menu.jsp" %>
<br>
<div class="container mt-3">
	<div class="w3-panel w3-border w3-round">
	  <div class="row w3-panel w3-border-bottom">
	    <div class="col-sm-6" ><c:out value="${read.title}" /></div>
	    <div class="col-sm" ><c:out value="${read.writer}" /></div>
	    <div class="col-sm-2" ><c:out value="${read.category}" /></div>
	    <div class="col-sm-2"><c:out value="${read.day}" /></div>
	  </div>
	  <div class="row-3">
	    <div class="col-sm"><c:out value="${read.contents}" /></div>
	  </div>
	</div>
	<form name="readForm" role="form" method="post">
		<input type="hidden" id="num" name="num" value="${read.num}" />
	</form>
	<button type="submit" class="btn btn-primary" id="update_btn">Update</button>
	<button type="submit" class="btn btn-primary" id="delete_btn">delete</button>
	<button type="submit" class="btn btn-primary" id="list_btn">list</button>
</div>

</body>
</html>