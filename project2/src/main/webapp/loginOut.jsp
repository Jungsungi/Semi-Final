<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ�</title>
</head>
<body>
<script type="text/javascript">
	var logout = sessionStorage.getItem("id");
	sessionStorage.removeItem("id");
	
	if(logout == null){
		
	}else{
		alert("�α׾ƿ��Ǿ����ϴ�.");
		location.href = "main.jsp";
	}
	
</script>
	
</body>
</html>