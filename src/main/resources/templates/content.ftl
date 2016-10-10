<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${modules.name!}</title>
    <meta name="description" content="${modules.name!}">
    <meta name="keywords" content="${modules.name!}">
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/content.css" />
</head>
    
<body>

    <#--头部内容-->
    <#include "common-header.ftl"/>

    <#--头部内容-->
    <#include "banner.ftl"/>
   
    <!--   栏目内容 -->
    <div class="content">
        <div class="article-list">
            <#list articles as l>
                <div class="article">
                    <a href="http://${host}/article/${l.id!}" title="${l.title!}"></a>
                    <h3>
                        <a class="article-title" href="http://${host}/article/${l.id!}" target="_blank" title="${l.title!}" data-gaevent="scientific_title:v1.1.1.1:scientific">${l.title!}</a>
                    </h3>
                    <div class="article-info">
                        <a href="http://${host}/article/${l.id!}"  class="article-author" style="color: #46b6b6;">小强</a>
                        <span class="split">|</span>
                        "2016-09-12 11:51"
                        <a class="article-comments" href="http://${host}/article/${l.id!}" data-gaevent="scientific_comment:v1.1.1.1:scientific" target="_blank">
                            <span class="icon icon-comment"></span>
                            <span class="article-comments-num">33</span>
                        </a>
                    </div>
                    <a href="http://${host}/article/${l.id!}">
                        <img data-height="235" data-width="330" src="${l.imgUrl}" height="207">
                    </a>
                    <p class="article-summry">${l.description}</p>
                </div>
            </#list>


            <div style="clear:both"></div>
        </div>
    
    </div>




    <!--    尾部内容-->
    <#include "common-footer.ftl"/>
</body>
</html>