<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/content.css" />
<!--    <link rel="stylesheet" type="text/css" href="/css/main.css" />  -->
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/jquery-1.8.0.min.js" />
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
                    <a href="http://${host}/article/${l.id!}"></a>
                    <h3>
                        <a class="article-title" href="http://${host}/article/${l.id!}" target="_blank" data-gaevent="scientific_title:v1.1.1.1:scientific">${l.title!}</a>
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
                        <img data-height="235" data-width="330" src="http://2.im.guokr.com/1shXGBw_D62QP0FIqxjTIWi_R4pT8APxE1nJgee70TZKAQAA6wAAAEpQ.jpg" height="207">
                    </a>
                    <p class="article-summry">一项新研究指出，从基因分析的数据来看，看起来模样差不多的长颈鹿们其实分别属于4个不同的物种。</p>
                </div>
            </#list>


            <div style="clear:both"></div>
        </div>
    
    </div>




    <!--    尾部内容-->
    <#include "common-footer.ftl"/>
</body>
</html>