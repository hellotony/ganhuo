<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="../img/icon.ico" />
    <title>${module.name!}</title>
    <meta name="description" content="${module.name!}">
    <meta name="keywords" content="${module.name!}">
    <link rel="stylesheet" type="text/css" href="../cssNew/common.css" />
    <link rel="stylesheet" type="text/css" href="../cssNew/module.css" />
</head>
<body>
<#--头部内容-->
<#include "headerNew.ftl"/>

<div class="content">
    <div class="table-container">
        <div class="main">

            <#list articles as l>
                <div class="item">
                    <a href="http://${host}/article/${l.id!}" title="${l.title!}">
                        <img width="324" height="160" src="${l.imgUrl}">
                    </a>
                    <h3 class="title-container"><a href="http://${host}/article/${l.id!}" title="${l.title!}" class="item-title">${l.title!}</a></h3>
                    <div>
                        <span class="table-author">蜗牛快跑</span>     <span class="talbe-add-time">| ${l.addTime?datetime!}</span>
                    </div>
                </div>
            </#list>


            <div style="clear:both"></div>
        </div>

        <#--<div class="bar">-->
            <#--<a class="more">加载更多</a>-->
        <#--</div>-->

    </div>
    <div class="slidebar">

        <div class="sidebar-one">
            <div class="table-right-list black-bottom">
                <div class="table-right-list-title black-background">
                    最热推荐
                </div>
                <div style="clear:both"></div>
            </div>

            <div class="talbe-one-content-right">

                <#list lastArticles as l>
                <div class="table-block">
                    <div class="block-img">
                        <a href="http://${host}/article/${l.id!}">
                            <img width="100" height="70" src="${l.imgUrl!}" alt="${l.title!}">
                        </a>
                    </div>
                    <div class="block-desc">
                        <div class="desc-tilte">
                            <a href="http://${host}/article/${l.id!}"><h4><span class="table-list-name">${l.title!}</span></h4></a>
                        </div>
                        <div class="desc-data">
                            <span class="block-time">${l.addTime?datetime!}</span>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                    <div style="clear:both"></div>
                </div>
                </#list>
                <div style="clear:both"></div>
            </div>
        </div>

        <div class="sidebar-one">
            <div class="table-right-list black-bottom">
                <div class="table-right-list-title black-background">
                    最新评论
                </div>
                <div style="clear:both"></div>
            </div>

            <ul>
                <#list comments as l>
                    <a href="http://${host}/article/${l.articleId!}"><li class="comment">${l.content!}</li></a>
                </#list>
            </ul>


        </div>

    </div>
    <div style="clear:both"></div>
</div>



<#--头部内容-->
<#include "footerNew.ftl"/>
</body>
</html>