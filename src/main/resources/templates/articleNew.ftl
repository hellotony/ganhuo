<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${article.title!}</title>
    <link rel="shortcut icon" href="../img/icon.ico" />
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
    <input type="hidden" id="articleId" value="${article.id}">
    <div class="articleLeft">
        <div class="breadcrumb">
            <a href="http://${host}/"> 首页</a> > <a href="http://${host}/module/${module.id}">${module.name!}</a>
        </div>
            <#--<div class="tag">-->
                <#--<div class="gan">干货</div>-->
            <#--</div>-->
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
                            <img alt="" width="213" height="150" src="${indexArticles[10].imgUrl!}">
                        </a>
                    </div>
                    <div class="table-three-image">
                        <a href="http://${host}/article/${indexArticles[11].id!}">
                            <img alt="" width="213" height="150" src="${indexArticles[11].imgUrl!}">
                        </a>
                    </div>
                    <div class="table-three-image">
                        <a href="http://${host}/article/${indexArticles[12].id!}">
                            <img alt="" width="213" height="150" src="${indexArticles[12].imgUrl!}">
                        </a>
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>
        <div class="article-recommend">
        <#list comments as l >
            <div class="recommend-item">
                <div class="recommend-name">
                    <span class="name-backyan">${l.username}</span> ${l.addTime?datetime!}
                </div>
                <div class="recommend-content">
                ${l.content}
                </div>
            </div>
        </#list>
        </div>
        <div style="clear:both"></div>
        <div class="comment-block sls-cont-pad  clearfix">
            <ul class="comment-list Mbot15px">
            </ul>
            <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title">留下你的牛评！</h3>
                <form action="" method="post" id="commentform" class="comment-form" novalidate="">
                    <p class="comment-form-author"><label for="author"><span class="required"></span></label>
                        <input placeholder="您的大名 或 邮箱" id="author" name="author" type="text" value="" size="30" aria-required="true" required="required"></p>
                    <p class="comment-form-comment"><label for="comment"></label>
                        <textarea id="comment" name="comment" cols="45" rows="8" placeholder="评论内容..." aria-required="true" required="required"></textarea></p>
                    <p class="form-submit">
                        <input name="submit" type="button" id="submit" class="submit" value="提交评论">
                        <input type="hidden" name="comment_post_ID" value="2613" id="comment_post_ID">
                        <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                    </p>
                </form>
            </div><!-- #respond -->
        </div>
        <div></div>
    </div>
    <div class="right">
        <div class="mustReadContainer">
            <div class="table-right-list black-bottom">
                <div class="table-right-list-title black-background">
                    相关推荐
                </div>
                <div style="clear:both"></div>
            </div>
            <div class="table-one-right" id="img-one">
                <div class="table-one-content-left-image">
                    <a href="http://${host}/article/${nexArticle.id!}">
                    <img alt="干货网" width="300" height="225" src="${nexArticle.imgUrl!}">
                    </a>
                </div>
                <div class="table-one-title">
                    <a href="http://${host}/article/${nexArticle.id!}" style="">${nexArticle.title!}</a>
                </div>
                <div>
                    <span class="table-author">蜗牛快跑</span>     <span class="talbe-add-time">| ${nexArticle.addTime?datetime!}</span>
                </div>
                <div class="table-desc">
                        <span class="table-article-description">
                        ${nexArticle.description!}
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

        if(author == null || content == null || author == "" || content == ""){
            alert("名字 或 内容都不能为空");
            return;
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