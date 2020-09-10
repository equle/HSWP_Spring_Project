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
	<script type="text/javascript">
		$(document).ready(function(){
			
// 			disabled속성으로 submit 버튼 활성화 조절
			$("#submit").attr("disabled","disabled")

			//아이디 중복 체크
			$("#id").blur(function() {

		        $.ajax({
		            type: "POST",
		            url: "idCheck",
		            data: {
		                "id": $('#id').val()
		            },
		            success: function (data) {	
		                if (data == 0) {
		                    if ($('#id').val() != '') {
					            console.log("아이디 사용가능");
		                        $('#checkMsg').html("<p class='text-success'>사용가능한 ID 입니다!</p>");
		                    }
		                } else {
		                    if ($('#id').val() != '') {
		                    	console.log("아이디 중복 사용불가");
		                        $('#checkMsg').html("<p class='text-danger'>이미 사용중인 ID 입니다. 다른 ID를 입력하세요.</p>");
		                        $('#id').focus();
		                    }
		                }
		            }
		        })
			});

			
// 			전화번호 하이픈
			$("#phone").on("keyup", function() { 
				
				$(this).val( $(this).val().replace(/[^0-9]/g, "")
						.replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3")
						.replace("--", "-") );
			});

			//pw확인
			$("#pw2").blur(function() {
				
				var pw = $("#pw").val();
				var pw2 = $("#pw2").val();

				if(pw != "" || pw2 != ""){
					if(pw == pw2){
						$("#pwCheck").html("<p class='text-success'>패스워드가 일치합니다.</p>");
						$("#submit").removeAttr("disabled");
						
					}else{
						$("#pwCheck").html("<p class='text-danger'>패스워드가 불일치합니다.</p>");
						$("#submit").attr("disabled", "disabled");
					}
				}
			});
			
			
			//미작성 쳌크
			$("#submit").on("click", function(){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#pw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pw").focus();
					return false;
				}
				if($("#pw2").val()==""){
					alert("비밀번호를 확인해 주세요.");
					$("#pw2").focus();
					return false;
				}
				if($("#name").val()==""){
					alert("이름을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#part").val()==""){
					alert("부서를 선택해주세요.");
					$("#part").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if($("#incall").val()==""){
					alert("내선번호를 입력해주세요.");
					$("#incall").focus();
					return false;
				}
				if($("#postion").val()==""){
					alert("직급을 선택해주세요.");
					$("#postion").focus();
					return false;
				}
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}
			});
		})
		
	</script>
	<body style="height:2000px">
	
	
	<div class="jumbotron text-center">
	  <h1>Sing Up page</h1>
	  <p>Resize this responsive page to see the effect!</p> 
	</div>
	
	<!-- 	incoude - menu -->
	<%@include file="../include/menu.jsp" %>
	<br>
	
	<div class="container">
	<form action="join" method="post" >
	  <div class="form-group">
	    <label>ID:</label>
	    <input type="text" class="form-control" id="id" name="id">
	    <div id="checkMsg"></div>
	  </div>
	  <div class="form-group">
	    <label>Password:</label>
	    <input type="password" class="form-control" id="pw" name="pw">
	    <label>Password Check:</label>
	    <input type="password" class="form-control" id="pw2" name="pw2">
	    
	  </div>
	  
	  <div id="pwCheck"></div>
	  
	  <div class="form-group">
	    <label>Name:</label>
	    <input type="text" class="form-control" id="name" name="name">
	  </div>
	  <div class="form-group">
	    <label for="">Part(부서):</label>
	    <select class="custom-select" id="part" name="part">
	      <option value="">-</option>
	      <option value="회계">회계</option>
	      <option value="홍보">홍보</option>
	      <option value="관리">관리</option>
	    </select>
	  </div>
	  <div class="form-group">
	    <label>Domain(권한):</label>
	    <span class="input-group-text" id="domain">user</span>
	    <input type="hidden" class="form-control" id="" name="domain" value="user">
	  </div>
	  <div class="form-group">
	    <label>Phone:</label>
	    <input type="text" class="form-control" id="phone" name="phone">
	  </div>
	  <div class="form-group">
	    <label>incall(내선번호):</label>
	    <input type="text" class="form-control" id="incall" name="incall">
	  </div>
	  <div class="form-group">
	      <label for="">postion(직급):</label>
	      <select class="custom-select" id="postion" name="postion">
	      	<option value="">-</option>
	        <option value="부장">부장</option>
	        <option value="대리">대리</option>
	        <option value="사원">사원</option>
	    </select>
	   </div>
	  <div class="form-group">
	    <label>Email:</label>
	    <input type="email" class="form-control" id="email" name="email">
	  </div>
	  <button type="submit" id="submit" class="btn btn-primary">Submit</button>
	  </form>
	</div>
	
	</body>
</html>
