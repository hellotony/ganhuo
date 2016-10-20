<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/login.css" />
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
</head>
    
   

<body>

    <#--头部内容-->
    <#include "common-header.ftl"/>
   
    <div class="content">
        <div class="login">
            <form>
                用户名：<input type="text" name="username"><br><br>
                密&nbsp;&nbsp;&nbsp;码：<input type="text" name="password"><br><br>
                <input type="submit" value="登录">
            </form>
        </div>
    
    </div>


    <!--    尾部内容-->
    <#include "common-footer.ftl"/>

</body>
</html>