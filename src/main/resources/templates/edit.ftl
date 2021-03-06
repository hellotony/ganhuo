<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="shortcut icon" href="../img/icon.ico" />
    <link rel="stylesheet" type="text/css" href="/cssNew/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/table.css" />
    <link rel='icon' href="http://oekj1dj02.bkt.clouddn.com/icon.ico" type=‘image/x-ico’ />
</head>

<body>

    <#--头部内容-->
    <#include "headerNew.ftl"/>

    <#--头部内容-->
    <#--<#include "banner.ftl"/>-->
   
    <!--   栏目内容 -->
    <div class="content">
        <div class="table">
            <div class="table-left">
                <#list articles as l>
                    <div class="table-item">
                        <div class="item-image">
                            <a href="http://${host}/article/edit/show/${l.id!}">
                                <img src="${l.imgUrl!}" width="285px" height="175px">
                            </a>
                        </div>
                        <div class="item-content">
                            <div class="time">by <span class="auther">蜗牛快跑</span> | ${l.addTime?datetime!}</div>
                            <div class="title">
                                <a href="http://${host}/article/edit/show/${l.id!}" class="item-title">
                                    ${l.title!}
                                </a>
                            </div>
                            <div class="description"></div>
                        </div>
                    </div>
                </#list>
            </div>
            <div class="table-right"></div>
            <div style="clear:both"></div>
        </div>
    </div>

    <!--    尾部内容-->
    <#include "footerNew.ftl"/>
</body>
</html>