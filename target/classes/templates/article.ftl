<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${article.title!}</title>
    <meta name="description" content="${article.description!}">
    <meta name="keywords" content="${article.title!}">
    <link rel='icon' href="http://oekj1dj02.bkt.clouddn.com/icon.ico" type=‘image/x-ico’ />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/article.css" />  
    <script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js"></script>
</head>

<body>
    <#include "headerNew.ftl"/>
    <#--<#include "banner.ftl"/>-->

    <!--   栏目内容 -->
    <div class="content">
        <div class="a-left">
            <div class="article-content" >
                <input type="hidden" id="articleId" value="${article.id}">
                <div class="content-title">
                    <h1>${article.title!}</h1>
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- firstAd -->
                    <ins class="adsbygoogle"
                         style="display:inline-block;width:336px;height:280px"
                         data-ad-client="ca-pub-3334321875292776"
                         data-ad-slot="9838232446"></ins>
                    <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
                <div class="content-info">
                    <#--<a href="article.ftl">智能</a>-->
                    <#--<a href="article.ftl">好东西</a>-->
                    <span class="info-right">
                        时间：<em>${article.addTime?datetime!}</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        阅读：<em>${article.readTimes!}</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        评论：<em class="article-commend-num">${article.commend!}</em>
                    </span>
                </div>
                <div class="content-inner">
                    ${article.content!}
                </div>
            </div>
            <div style="clear:both"></div>
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

        </div>
        <div class="a-right">
            <div class="article-user">
                <h2 class="user-title">最新文章</h2>
                <ul class="user-inner">
                    <#list recentArticles as l>
                    <li class="clear">
                        <#if l.title?length gt 10>
                            <a href="http://${host}/article/${l.id}" class="clear-title" title="${l.title!}">${l.title?substring(0,10)}</a>
                        <#else >
                            <a href="http://${host}/article/${l.id}" class="clear-title" title="${l.title}">${l.title}</a>
                        </#if>
                        <p class="article-topic">
                            <span class="user-inner-right">
                                阅读&nbsp;<em>${l.readTimes}</em>&nbsp;&nbsp;
                                评论&nbsp;<em>${l.commend}</em>
                            </span>
                        </p>
                    </li>
                    </#list>
                </ul>
            </div>

            <div class="article-new">
            </div>
        </div>
        <div style="clear:both"></div>
    </div>

    <!--    尾部内容-->
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