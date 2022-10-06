<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	
	#btn{
		display : none;
	}
</style>
<body>
	
	
	<form action="${pageContext.request.contextPath}/preMove">
		<button id="btn">이동</button>
	</form>
	
	<script type="text/javascript">
		window.onload=function(){
			document.getElementById("btn").click();	  
		}
		
	</script>
</body>
</html>