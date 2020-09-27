<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html lang="en">
	<head>
	  <title>Bootstrap Example</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
 
  <form action="update" method="post">
  	<input type="hidden" name="num" value="${read.num}" readonly="readonly"/>
  	<div class="input-group mb-3">
      <div class="col-sm-2">
        <select id="category" name="category" class="custom-select" >
          <option selected >카테고리</option>
          <option value="예약">예약</option>
          <option value="분실">분실</option>
          <option value="전달">전달</option>
        </select>
      </div>
      
      <div class="input-group-prepend">
        <span class="input-group-text" >제목</span>
      </div>
      
      <input type="text" class="form-control" id="title" name="title" value="${read.title}">
      
      </div>
<!-- 	    <div class="custom-control custom-checkbox mb-3"> -->
<!--       <input type="checkbox" class="custom-control-input" id="customCheck" name="example1" value=""> -->
<!--       <label class="custom-control-label" for="customCheck">중요</label> -->
<!--     </div> -->
<!--     <div class="custom-control custom-checkbox mb-3"> -->
<!--       <input type="checkbox" class="custom-control-input" id="customCheck1" name="example1"> -->
<!--       <label class="custom-control-label" for="customCheck1">긴급</label> -->
<!--     </div> -->

    
    
	  <div class="form-group mb-3">
	  <textarea class="form-control" rows="15" id="contents" name="contents" placeholder="comment"><c:out value="${read.contents}" /></textarea>
	  </div>
	<div class="input-group mb-3">
  	  <div class="input-group-prepend">
        <span class="input-group-text">부서 선택</span>
      </div>
      <input type="text" class="form-control" id="parts" name="parts" value="${read.parts}">
     </div>
    <button type="submit" id="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
</html>