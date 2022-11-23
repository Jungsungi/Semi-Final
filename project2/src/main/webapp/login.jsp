<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
	section{
		margin: 0;
	}
	#login{
		margin-top: 5px;
		margin-bottom: 20px;
		font-size: 20px;
	}
	.loginbox{
		width: 300px;
		margin-right: auto;
		margin-left: auto;
		margin-top: 150px;
		padding: 20px;
		text-align: center;
		border: 1px solid gray; 
	}
	.text-field{
		font-size: 14px;
		padding: 10px;
		border: 0.5px solid gray;
		width: 260px;
		margin-bottom: 10px;
	}	
	.loginbtn{
		font-size: 14px;
		border: none;
		padding: 10px;
		width: 260px;
		margin-top: 20px;
		margin-bottom: 30px;
	
	}
	.message{
		 margin: 15px 0 0;
  	     color: #b3b3b3;
  		 font-size: 12px;
	}
	body{
    	width: 1536px;
    }
</style>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
	 <header id="main_header">
      <h1><a id="main_link" href="main.jsp">이방어때</a></h1>
      <nav id="topMenu">
         <ul>
            <li><a class="menu_link" id="houseListPage" href="loadHouse.do">지도</a></li>
            <li><a class="menu_link" href="#">관심목록</a></li>
            <li><a class="menu_link" href="#">방내놓기</a></li>
            <li><a class="menu_link" href="#">알림</a></li>
            <li><a class="menu_link" href="#">로그인/회원가입</a></li>
         </ul>
      </nav>
   </header>
	<section>
		<div class="loginbox">
		<form action="loginOK.do" method="post">
			<div id="login">LOGIN</div>
			<input type="text" name="id" id="id" class="text-field" placeholder="아이디" required="required">	
			<input type="password" name="pwd" id="pwd" class="text-field" placeholder="비밀번호" required="required">
			<input type="submit" value="로그인" id="btnLogin" class="loginbtn">	<br>
			<p class="message">회원이 아니신가요?<a href="insertMember.do">회원가입</a></p>
		</form>	
		</div>
	</section>	
</body>
</html>