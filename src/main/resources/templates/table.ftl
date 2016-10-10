<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${module.name!}</title>
    <meta name="description" content="${module.name!}">
    <meta name="keywords" content="${module.name!}">
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/table.css" />

</head>
    
<body>
    <#--头部内容-->
    <#include "common-header.ftl"/>

    <#--头部内容-->
    <#include "banner.ftl"/>
   
    <!--   栏目内容 -->
    <div class="content">
        <div class="table">
            <div class="table-left">
                <#list articles as l>
                    <div class="table-item">
                        <div class="item-image">
                            <a href="http://${host}/article/${l.id!}">
                                <img src="${l.imgUrl!}" width="285px" height="175px">
                            </a>
                        </div>
                        <div class="item-content">
                            <div class="time">by <span class="auther">蜗牛快跑</span> | ${l.addTime?datetime!}</div>
                            <div class="title">
                                <a href="http://${host}/article/${l.id!}" class="item-title">
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
    <#include "common-footer.ftl"/>
</body>
</html>