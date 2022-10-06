<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .s1 {
            display: grid;
            grid-template-columns: repeat(4 ,1fr);
            gap: 20px;
            margin-bottom: 40px;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.5;
        }
        .s1 >div > img {
            width: 225px;
            height: 125px;
        }
        .s1 > div {
            box-sizing: border-box;
        }
        .s1 > div > h3 {
            margin-bottom: 5px;
            box-sizing: border-box;
            font-size: 1.17em;
            font-weight: bold;
        } 
        .s1 > div > a {
            display: inline-block;
            padding-top: 10px;
            color: #0067b8;
            text-transform: uppercase;
            font-weight: bold;
            text-decoration: none;
            box-sizing: border-box;
            cursor: pointer;
            font-size: 15px;
        }
        .s2{
            background:url("https://i.ibb.co/tBJGPD9/xbox.png") center no-repeat;
            background-size: cover;
            width: 100%;
            height: 350px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
        .content{
            width: 460px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .content > h2{
            box-sizing: border-box;
            font-size: 1.5em;
            font-weight: bold;
        } 
        .content > p {
            margin: 10px 0 20px;
            box-sizing: border-box;
            line-height: 1.5;
            font-size: 15px;
        }
        .content > a {
            text-decoration: none;
            border: 1px solid #262626;
            background-color: #262626;
            color: white;
            padding: 10px 20px;
            font-size: 15px;
            font-weight: bold;
            display: inline-block;
        }
        .s3{
            background:url("https://i.ibb.co/72cgtsz/carbon.jpg") center no-repeat;
            background-size: cover;
            width: 100%;
            height: 350px;
            margin-bottom: 20px;
            box-sizing: border-box;
            color: white;
        }
        .s3>.content{
            width: 55%;
            padding: 100px 0 0 30px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .s3>.content > h2{
            box-sizing: border-box;
            font-size: 1.5em;
            font-weight: bold;
        } 
        .s3>.content > p {
            margin: 10px 0 20px;
            box-sizing: border-box;
            line-height: 1.5;
            font-size: 15px;
        }
        .s3>.content > a {
            text-decoration: none;
            border: 1px solid #262626;
            background-color: #262626;
            padding: 10px 20px;
            font-size: 15px;
            font-weight: bold;
            display: inline-block;
        }
    </style>
</head>
<body>
    <main>
        <section class="s1">
	        <c:forEach items="${list}" var="item1">
	        	<c:if test="${item1.category == 1}">
					<div>
						<img src="${item1.img}" alt="">
		                <h3>${item1.head }</h3>
		                <p>${item1.content }</p>
		                <a href="#">${item1.link}</a>	
					</div>	        		
		        </c:if>
        	</c:forEach>
    
        </section>
            <section class="s2">
                <div class="content">
                    <h2>Xbox Game Pass Ultimate</h2>
                    <p>Xbox Game Pass Ultimate Xbox Live Gold and over 100 high-quality console and PC games. Play together with friends and discover your next favorite game.</p>
                    <a href="#">Join Now</a>
                </div>
            </section>
            <section class="s1">
            
              <c:forEach items="${list}" var="item2">
	        	<c:if test="${item2.category == 2}">
					<div>
						<img src="${item2.img}" alt="">
		                <h3>${item2.head }</h3>
		                <p>${item2.content }</p>
		                <a href="#">${item2.link}</a>	
					</div>	        		
		        </c:if>
        	</c:forEach>
                
            </section>
                <section class="s3">
                    <div class="content">
                        <h2>Xbox Game Pass Ultimate</h2>
                        <p>Xbox Game Pass Ultimate Xbox Live Gold and over 100 high-quality console and PC games. Play together with friends and discover your next favorite game.</p>
                        <a href="#">Join Now</a>
                    </div>
                </section>
    </main>
</body>
</html>