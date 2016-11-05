<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${article.title!}</title>
    <meta name="description" content="${article.description!}">
    <meta name="keywords" content="${article.title!}">
    <link rel="stylesheet" type="text/css" href="../cssNew/common.css" />
    <link rel="stylesheet" type="text/css" href="../cssNew/article.css" />
    <script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js"></script>
</head>
<body>
<#--头部内容-->
<#include "headerNew.ftl"/>


<div class="content">

    <div class="articleLeft">
        <div class="tag">
            <div class="gan">干货</div>
        </div>
        <div class="articleHeader">
            <div >
                <h3 class="title">${article.title!}</h3>
            </div>
        </div>
        <div class="articleInner">${article.content!}</div>
        <div class="recommend">
            <div class="table-one-top black-bottom">
                <div class="table-one-top-block-title black-background">
                    不容错过
                </div>
            </div>
            <div class="table-three-content">
                <div>
                    <div class="table-three-image">
                        <a href="http://${host}/article/${indexArticles[10].id!}">
                            <img alt="" width="218" height="150" src="${indexArticles[10].imgUrl!}">
                        </a>
                    </div>
                    <div class="table-three-image">
                        <a href="http://${host}/article/${indexArticles[11].id!}">
                            <img alt="" width="218" height="150" src="${indexArticles[11].imgUrl!}">
                        </a>
                    </div>
                    <div class="table-three-image">
                        <a href="http://${host}/article/${indexArticles[12].id!}">
                            <img alt="" width="218" height="150" src="${indexArticles[12].imgUrl!}">
                        </a>
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>
        <div></div>
    </div>
    <div class="right">
        <div class="mustReadContainer">
            <div class="table-right-list black-bottom">
                <div class="table-right-list-title black-background">
                    最热推荐
                </div>
                <div style="clear:both"></div>
            </div>
            <div class="table-one-right" id="img-one">
                <div class="table-one-content-left-image">
                    <a href="http://${host}/article/${indexArticles[10].id!}">
                    <img alt="干货网" width="324" height="235" src="${indexArticles[10].imgUrl!}">
                    </a>
                </div>
                <div class="table-one-title">
                    <a href="http://${host}/article/${indexArticles[10].id!}" style="">${indexArticles[10].title!}</a>
                </div>
                <div>
                    <span class="table-author">蜗牛快跑</span>     <span class="talbe-add-time">| ${indexArticles[10].addTime?datetime!}</span>
                </div>
                <div class="table-desc">
                        <span class="table-article-description">
                        ${indexArticles[9].description!}
                        </span>
                </div>
            </div>
            <div style="clear:both"></div>

        </div>
    </div>
    <div style="clear:both"></div>

</div>



<#--头部内容-->
<#include "footerNew.ftl"/>
<script>
    $("#submit").click(function(){
        var author = $("#author").val();
        var content = $("#comment").val();
        var articleId = $("#articleId").val();
        var date = new Date();

        if(author == null || content == null){
            alert("名字和内容都不能为空");
        }
        //插入评论
        $.ajax({
            type: "post",
            url: "http://${host}/article/addComment",
            async:false,
            data: { "content": content,"author":author,"articleId":articleId},
            success: function(data) {
                if (data) {
                    alert("评论成功！");
                    var ht = "<div class='recommend-item'><div class='recommend-name'><span class='name-backyan'>"+author+
                            "</span>"+date+
                            "</div><div class='recommend-content'>"+content+"</div></div>";
                    $(".article-recommend").append(ht);
                    $("#author").val("");
                    $("#comment").val("");
                }
                else {
                    id = data;
                }
            },
            error: function(data) {
                alert("获取数据异常");
            }
        });
    });
</script>
</body>
</html>