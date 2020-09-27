<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<body style="height:2000px">



<div class="jumbotron text-center">
	<h1> Hello world! </h1>
	<p>Resize this responsive page to see the effect!</p> 
</div>

<%@include file="../include/menu.jsp" %>
<br>
<div class="container mt-3">
  <div class="row">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
          <th>답글</th>
        </tr>
      </thead>
      <tbody>
        
        <c:forEach items="${list}" var = "list">
			<tr>
				<td>
					<a href="readNote?num=${list.num}">
						<c:out value="${list.title}" />
					</a>
				</td>
				<td><c:out value="${list.writer}" /></td>
				<td><c:out value="${list.day}" /></td>
				<td><span class="badge badge-primary badge-pill">12</span></td>
			</tr>
		</c:forEach>
      </tbody>
    </table>
    <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
      <li class="page-item"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">Next</a></li>
  	</ul>
  </div>
</div>

</body>
</html>