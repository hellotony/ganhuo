<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/article.css" />
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
</head>

<body>

    <#--头部内容-->
    <#include "common-header.ftl"/>
    <#--头部内容-->
    <#--<#include "banner.ftl"/>-->

    <!--   栏目内容 -->
    <div class="content">

        <div class="a-left">
            <div class="article-content" >
                <div class="content-title">
                    <h1>${article.title!}</h1>
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
            <div class="comment-block sls-cont-pad  clearfix">
                <ul class="comment-list Mbot15px">
                </ul>
                <div id="respond" class="comment-respond">
                    <a href = "http://${host}/article/edit/${article.id}">
                        <input name="submit" id="submit" class="submit" style="width: 100%" value="编辑文章">
                    </a>
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
                            <a href="http://${host}/article/${l.id}" class="clear-title">${l.title?substring(0,10)}</a>
                        <#else >
                            <a href="http://${host}/article/${l.id}" class="clear-title">${l.title}</a>
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
            <div class="article-best"></div>
            <div class="article-new"></div>
        </div>
        <div style="clear:both"></div>
    </div>

    <!--    尾部内容-->
    <#include "common-footer.ftl"/>

</body>
</html>