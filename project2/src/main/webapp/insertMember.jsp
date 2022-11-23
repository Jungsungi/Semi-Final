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
	.insertMemberBox{
		width: 800px;
		margin-right: auto;
		margin-left: auto;
		margin-top: 70px;
		padding: 15px;
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		border: 1px solid gray;
		padding-bottom: 20px; 
	}
	
	table{
		margin-top: 25px; 
	}
	
	input {height:20px;}
	th,td {padding-left:20px;
       text-align:left;
      background-repeat:no-repeat;
      background-position:left;
      border-bottom:#eeeeee solid 1px;
      padding-bottom: 10px;
     }
    .btn{
		font-size: 14px;
		border: none;
		width: 100px;
		margin-top: 30px;
		margin-bottom: 40px;
		height: 50px;
	
	}
    body{
    	width: 1536px;
    }
</style>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- 주소등록 시 주소 찾기=>카카오 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$(function(){
	//비밀번호 일치 불일치
	$('.pw').focusout(function(){
		var pwd = $("#pwd").val();
		var pwdOK = $("#pwdOK").val();
		
		if(pwd != '' && pwdOK == ''){
			null;
		}else if(pwd !=''|| pwdOK != ''){
			if(pwd == pwdOK){
				alert("비밀번호가 일치합니다.");
				$("#alert-success").css('display','inline-block');
				$("#alert-discordance").css('display','none');
			}else{
				alert("비밀번호가 일치하지 않습니다.");
				$("#alert-success").css('display','none');
				$("#alert-discordance").css('display','inline-block');
			}		
		}
	
	});
	
	//아이디 중복확인
	$("#btnid").on("click",function(){
		$.ajax({
			url:"Id/Check",
			type:"post",
			data:{ id: $("#id").val()},
			success:function(data){
				console.log(data);
				
				if(data == 1){
					alert("사용가능한 아이디 입니다.");
				}else if(data == 0){
					alert("이미 사용 중인 아이디 입니다.");
					$('#id').select();
				}
			},
			error:function(){
				console.log("error");
			}
		})
	});
	
	
	
		// 주소 가져오기
		$("#address_kakao").on("click",function(){
			new daum.Postcode({
				oncomplete: function(data){
					var roadAddr = data.roadAddress;// 도로명주소
					
					document.getElementById("address_kakao").value = roadAddr;
					
				}
			}).open();
		});
});

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
		<div class="insertMemberBox">
		<form action="insertMemberOK.do" method="post" >
		<div id="insertMember">회원가입</div>
		<table>
		<tr>
		<th>아이디</th>
		<td><input type="text" name="id" id="id" required="required">
			<button id="btnid">중복확인</button>
		</td>
		</tr>
		<tr>
		<th>이름</th>
		<td><input type="text" name="name" required="required" ></td>
		</tr>
		<tr>
		<th>비밀번호</th>
		<td><input type="password" name="pwd" id="pwd" class="pw" required="required" ></td>
		</tr>
		<tr>
		<th>비밀번호확인</th>
		<td><input type="password" name="pwdOK" id="pwdOK" class="pw" >
			<span id="alert-success" style="display:none">비밀번호가 일치합니다.</span>
			<span id="alert-discordance" style="display:none">비밀번호가 일치하지 않습니다.</span>
		</td>
		</tr>
		<tr>
		</tr>
		<tr>
		<th>주민번호</th>
		<td><input type="text" name="jumin1" required="required">-
			<input type="text" name="jumin2" required="required">
		</td>
		</tr>
		<tr>
		<th>주소</th>
		<td><input type="text" name="m_addr" id="address_kakao" readonly="readonly"></td>
		</tr>
		<tr>
		<th>email</th>
		<td><input type="text" name="email" required="required" ></td>
		</tr>
		<tr>
		<th>전화번호</th>
		<td><input type="text" name="phone1" required="required">-
			<input type="text" name="phone2" required="required">-
			<input type="text" name="phone3" required="required">
		</td>
		</tr>
	</table>
		<input type="submit" value="가입" class="btn" >
		<input type="reset" value="다시입력" class="btn">		
		</form>	
		</div>
		
	</section>	
</body>
</html>