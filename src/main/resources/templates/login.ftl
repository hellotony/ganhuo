<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="../img/icon.ico" />
    <link rel="stylesheet" type="text/css" href="/cssNew/common.css" />
    <link rel="stylesheet" type="text/css" href="/cssNew/login.css" />
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
</head>
    
   

<body>

    <#--头部内容-->
    <#include "headerNew.ftl"/>
   
    <div class="content">
        <div class="signUp">
            <div class="form_container">
                <div class="form_title">
                    注册新账号
                </div>
                <div class="word">
                    用户名
                </div>
                <input type="input" class="input"  name="username" placeholder="中文、字母、符号都可以"/>
                <div class="word">
                    邮箱
                </div>
                <input type="input" class="input" name="email" placeholder="example@163.com"/>
                <div class="word">
                    密码
                </div>
                <input type="password" class="input" name="password" placeholder="********"/>

                <div class="">
                    <input type="button" class="button" value="注册">
                    <!--                    <input type="button" class="button" value="登陆">-->

                </div>
            </div>
        </div>
    </div>


    <!--    尾部内容-->
    <#include "footerNew.ftl"/>

</body>
</html>