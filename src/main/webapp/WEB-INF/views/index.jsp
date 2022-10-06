<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello Spring MVC</h1>
	<img src="image/icon-spring-framework.svg">
	<h1>여러분 안녕~!!!!</h1>
	<h1>김가빈 바보</h1> 
	<h1>리더님 최고</h1>


	<h1>다 지웠습니당</h1>

	<a href="${pageContext.request.contextPath}/content">이동</a>
	
	<script type="text/javascript">
		window.addEventListener("DOMContentLoaded", function(){
			$.ajax({
				url : "${pageContext.request.contextPath}/content",
				type : "GET",
				contentType:"application/json; charset=utf-8",
				dataType : "json",
				success : function(data){
					console.log(data);
					console.log("--------------");
// 					const comdiv = document.getElementById("comment");
					
// 					for(let comment of data){
// 						console.log(comment);
// 						const div = document.createElement("div");
// 						div.style.border = "1px solid black";
// 						const h4 = document.createElement("h4");
// 						h4.innerText = comment.owner;
// 						const p = document.createElement("p");
// 						p.innerText = comment.content;
						
// 						div.append(h4);
// 						div.append(p);
// 						comdiv.append(div);
// 					}
				},
				error : function(e){
					alert(e);
				}
			});		
		});
	</script>
</body>
</html>

