<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
         body{
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .s1 {
            display: grid;
            grid-template-columns: repeat(4 ,1fr);
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
        .s2>.content{
            width: 40%;
            padding: 50px 0 0 30px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .s2>.content > h2{
            box-sizing: border-box;
            font-size: 1.5em;
            font-weight: bold;
        } 
        .s2>.content > p {
            margin: 10px 0 20px;
            box-sizing: border-box;
            line-height: 1.5;
            font-size: 15px;
        }
        .s2>.content > a {
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
            background-color: #f4f4f4;
            color: #333;
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
        	
        	
        
            <div>
                <img src="https://i.ibb.co/LZPVKq9/card1.png" alt="">
                <h3>New Surface Pro 7</h3>
                <p></p>
                <a href="#">LEARN MORE</a>
            </div>
            <div>
                <img src="https://i.ibb.co/KjGFHVJ/card2.png" alt="">
                <h3>New Surface Laptop 3</h3>
                <p></p>
                <a href="#">LEARN MORE</a>
            </div>
            <div>
                <img src="https://i.ibb.co/2cnshH6/card3.png" alt="">
                <h3>Save $150 + free controller</h3>
                <p></p>
                <a href="#">LEARN MORE</a>
            </div>
            <div>
                <img src="https://i.ibb.co/G57P0Pb/card4.png" alt="">
                <h3>The new Microsoft Edge</h3>
                <p></p>
                <a href="#">LEARN MORE</a>
            </div>
        </section>
            <section class="s2">
                <div class="content">
                    <h2>Xbox Game Pass Ultimate</h2>
                    <p>Xbox Game Pass Ultimate Xbox Live Gold and over 100 high-quality console and PC games. Play together with friends and discover your next favorite game.</p>
                    <a href="#">Join Now</a>
                </div>
            </section>
            <section class="s1">
                <div>
                    <img src="https://i.ibb.co/zVqhWn2/card5.png" alt="">
                    <h3>New Surface Pro 7</h3>
                    <p></p>
                    <a href="#">LEARN MORE</a>
                </div>
                <div>
                    <img src="https://i.ibb.co/mGZcxcn/card6.jpg" alt="">
                    <h3>New Surface Laptop 3</h3>
                    <p></p>
                    <a href="#">LEARN MORE</a>
                </div>
                <div>
                    <img src="https://i.ibb.co/NpPvVHj/card7.png" alt="">
                    <h3>Save $150 + free controller</h3>
                    <p></p>
                    <a href="#">LEARN MORE</a>
                </div>
                <div>
                    <img src="https://i.ibb.co/LkP4L5T/card8.png" alt="">
                    <h3>The new Microsoft Edge</h3>
                    <p></p>
                    <a href="#">LEARN MORE</a>
                </div>
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