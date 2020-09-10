<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="/">Logo</a>
  
	<!--   반응형 -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="writeNote">writeNote</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="listNote">listNote</a>
	    </li>
	  </ul>
 	<c:if test="${loginDTO != null}">
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="/">note3</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="/">note4</a>
	    </li>
	  </ul>
	</c:if>
	<!--  오른쪽 정렬 -->
	  <ul class="navbar-nav ml-auto">
	    <c:if test="${loginDTO == null}">
		    <li class="nav-item">
		      <a class="nav-link" href="join">join</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="login">login</a>
		    </li>
	    </c:if>
	    <c:if test="${loginDTO != null}">
		    <li class="nav-item">
		      <a class="nav-link" href="/">mypage</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="logout">logout</a>
		    </li>
	    </c:if>
	  </ul>
  </div> 
</nav>