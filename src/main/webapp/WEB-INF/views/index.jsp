<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<<h1>Test Page</h1>
	
	<c:forEach var="item" items="${list}">
		<p>${item.id }</p>
	</c:forEach>

	<a href="${pageContext.request.contextPath}/content">이동</a>
	
	<script type="text/javascript">
// 		window.onload=function(){
// 			location.href = "${pageContext.request.contextPath}/content";
// 		}
		​
// 		window.addEventListener("DOMContentLoaded", function(){
// 			location.href = "${pageContext.request.contextPath}/content";
// 		}
	
	</script>
	
	




	<script type="text/javascript">
		window.addEventListener("DOMContentLoaded", function(e){
			e.preventDefault();
			
			let simple_data = {data1:"데이타1",data2:"데이타2",data3:"데이타3"};
			
			fetch("${pageContext.request.contextPath}/content",{
				method : "POST", // PUT, PATCH, DELETE
				headers : {
					"Content-Type" : "application/json"},
				body : JSON.stringify(simple_data)
			}).then(response => response.json(), e => console.log("error!!!"))
			
// 			.then(response => response.json(), e => console.log("error!!!"))
			
// 			위의 코드 한 줄과 같은 의미
// 			function(response){ // 정상 응답 함수
// 				return response.json();
// 			},
// 			function(e){ // 에러함수
// 				console.log(e);
// 			}
			
			.then(data => {
				console.log("이까지 왔다리")
				
			}).catch(error => {
				console.log("error");
			});
		});
	</script>
	
	
</body>
</html>

