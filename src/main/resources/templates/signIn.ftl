<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="../img/icon.ico" />
    <link rel="stylesheet" type="text/css" href="/cssNew/common.css" />
    <link rel="stylesheet" type="text/css" href="/cssNew/login.css" />
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
    <script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js"></script>
</head>
    
   

<body>

    <#--头部内容-->
    <#include "headerNew.ftl"/>
   
    <div class="content">
        <div class="signUp">
            <div class="form_container">
                <form id="form" method="post" action="http://${host}/user/signIn">
                    <div class="form_title">
                        登录
                    </div>
                    <div class="word">
                        用户名
                    </div>
                    <input type="input" class="input"  name="username" placeholder="中文、字母、符号都可以"/>
                    <div class="word">
                        密码
                    </div>
                    <input type="password" class="input" name="password" placeholder="********"/>

                    <div class="">
                        <#--<input type="button" class="button" value="注册">-->
                        <input type="button" class="button" value="登陆">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function testEmail(str){
            var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if(reg.test(str)){
                return true;
            }else{
                return false;
            }
        }

        $(".button").click(function () {
            var username = $("input[name = 'username']").val();
            var password = $("input[name = 'password']").val();
            if(username == "" || password == ""){
                alert("输入项不能为空！");
                return;
            }
            $("#form").submit();
        });

    </script>


    <!--    尾部内容-->
    <#include "footerNew.ftl"/>

</body>
</html>