<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        header{
            width: 100%;
        }
        nav{
            display: flex;
            align-items: center;
            padding: 20px;
        }
        .menubar{
            display: flex;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            padding-left: 30px;
        }
        .menubar ul{
            margin: 0;
            padding: 0;
        }
        .menubar li{
            list-style-type: none;
            display: inline-block;
            padding: 0 10px;

        }
        .menubar li :hover{
            border-bottom: 2px solid black;
            cursor: pointer;
        }
        .head-banner{
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            align-items: center;
            box-sizing: border-box;
            height: 400px;
            background-image: url(https://i.ibb.co/zGSDGCL/slide1.png);
            background-repeat: no-repeat;
            background-size: cover;
            padding-bottom: 50px
        }
        .head-banner div{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        .head-banner h2{
            margin: 0;
        }
        .head-banner p{
        }

        .btn a{
            cursor: pointer;
            display: inline-block;
            border: 0;
            padding: 10px 20px;
            background-color: #262626;
            color: #fff;
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <img src="https://i.ibb.co/wwLhz98/logo.png" width="130px"/>
            <div class="menubar">
                <ul>
                    <li><a>Office</a></li>
                    <li><a>Windows</a></li>
                    <li><a>Surface</a></li>
                    <li><a>Xbox</a></li>
                    <li><a>Deals</a></li>
                    <li><a>Support</a></li>
                </ul>        
            </div>
        </nav>
        <div class="head-banner">
            <div class="title"><h2>Surface Deals</h2></div>
            <div><p>Select Surfaces are on sale now - save while supplies last</p></div>
            <div class="btn"><a>Shop Now</a></div>
        </div>
    </header>
</body>
</html>