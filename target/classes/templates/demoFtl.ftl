<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DemoFlt</title>
    <meta name="keywords" content="翻译,在线翻译,百度翻译,词典,英语,"/>
    <meta name="description" content="百度翻译提供即时免费的多语种文本翻译和网页翻译服务，支持中、英、日、韩、泰、法、西、德等27种热门语言互译，覆盖702个翻译方向。"/>
    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="/css/wangEditor.min.css">

    <style>
        div#t {
            margin-left: auto;
            margin-right: auto;
            display: block;
            padding-left: 30px;
            padding-right: 30px;
            padding-top: 40px;
            line-height: 23px;
        }

        blockquote{
            padding: 1px 20px;
            border-left: 5px solid green;
            text-align: left;
        }
    </style>

</head>
<body>
    <h1>DemoFtl</h1>

    <div style="width: 805px;">
        <div id="div1" style="height:300px;width:auto;" class="submitPage">
            <p>请输入内容...</p>
        </div>
    </div>
    <input type="button" name="提交" id="sub" value="提交" class="submitPage">
    <div id="t" class="showPage" style="display: none;"></div>
    <input type="button" value="返回" id="return" style="display: none" class="showPage"></input>

    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
    <script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/js/wangEditor.min.js"></script>

    <!--这里引用jquery和wangEditor.js-->
    <script type="text/javascript">
        var editor = new wangEditor('div1');
        editor.config.pasteFilter = false;
        editor.config.uploadImgUrl = "http://localhost:8080/upload/test";
        editor.config.uploadImgFileName = "myFileName";
        editor.create();

        $("#sub").unbind("click").bind("click",function(){
            var content = editor.$txt.html();
            var id = 0;

//            插入文章
            $.ajax({
                type: "post",
                url: "http://localhost:8080/article/add",
                async:false,
                data: { "content": content },
                success: function(data) {
                    if (data == "" || data == undefined) {
                        alert('返回值为空!');
                    }
                    else {
                        id = data;
                    }
                },
                error: function(data) {
                    alert("获取数据异常");
                }
            });

            $(".submitPage").hide();
            $(".wangEditor-container").hide();

            //根据 ID获取 文章
            var article = "";
            $.ajax({
                type: "get",
                url: "http://localhost:8080/article/get",
                async:false,
                data: { "id": id},
                success: function(data) {
                    if (data == "" || data == undefined) {
                        alert('返回值为空!');
                    }
                    article = data.content;
                },
                error: function(data) {
                    alert("获取数据异常");
                }
            });
            $("#t").html(article);
            $(".showPage").show();
        });

        $("#return").unbind("click").bind("click", function (){
            $(".submitPage").show();
            $(".wangEditor-container").show();
            $(".showPage").hide();
        })

    </script>

</body>
</html>
















