<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <style>
        body{
            background-color: black;
        }
        .father{
            display: flex;
            justify-content: center;
            align-items: center;
            width: auto;
            height: auto;
            margin: 10% auto 0;
            background-color: black;
        }
        .son{
            width: 470px;
            height: 720px;
            background: #262626;
            border-radius: 5px;
        }
        input{
            border: 1px solid white;
            border-radius: 5px;
        }
        .input{
            text-align: center;
            margin-top: 30px;
        }
        input[type="checkbox"] {
            position: relative;
            margin-left: 60px;
            width: 16px;
            height: 16px;
            font-size: 14px;
            vertical-align: text-top;
            border: 0;
            background: none;
            cursor: pointer;
            color: white;
        }
        h3{
            color: white;
            margin-top: 30px;
            text-align: center;
        }
        h5{
            color: #5f5f5f;
            text-align: center;
        }
        span{
            color: white;
            line-height: 70px;
        }
        a{
            color: white;
        }
        .a-a{
            float: right;
            margin-right: 60px;
        }
        button{
            width: 75%;
            height: 62px;
            color: white;
            border: 0;
            background-color: #4c4cc1;
        }
        h5{
            color: #5f5f5f;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="father">
<div class="son" >
<p>
    <p>&nbsp;</p>
        <p style="text-align: center"><img class="" src="image/epic_logo.png" alt="epic_logo" width="50" height="50"  backgroundcolor="white"></p>
    <p>&nbsp;</p>
    <p><h3>用Epic Games账户登录</h3><p>
    <p><div class="input"><label>
    <input type="email" style="border-color:#fffdfd;background: rgba(0,0,0,0);width:75%;height: 62px;color: white " name="user" placeholder="&nbsp; 电子邮件地址" pattern="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$" size="30" required>
</label></div>
    <p><div class="input"><label>
    <input type="password" style="border-color:#ffffff;background: rgba(0,0,0,0);width: 75%;height: 62px;color: white" name="password" placeholder="&nbsp; 密码" pattern="^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$" size="30" required>
</label></div>
    <span><label style="margin-top: 30px">
            <input type="checkbox" value="1" name="checkbox">
    </label>记住我<a class="a-a" href="#" target="_blank">忘记密码</a></span>

    <p style="text-align: center"><button type="submit" value="" formmethod="post" formaction="" >现在登录
    </button>
    <p style="text-align: center"><a href="yinsi.jsp">隐私政策</a></p>
    <p style="text-align: center"><h5>还没有Epic Games账户？<a href="sign_up.jsp">注册</a></h5>
</div>
</div>
</body>
</html>