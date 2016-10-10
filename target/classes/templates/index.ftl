<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>干货网</title>
    <meta name="description" content="干货网是面向整个互联网的内容整合分享网站，汇聚了互联网最精华的内容">
    <meta name="keywords" content="干货，电影，励志，趣闻，福利">
    <link rel='icon' href='img/icon.ico ' type=‘image/x-ico’ />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />  
    <link rel="stylesheet" type="text/css" href="/css/main.css" />  
    <link rel="stylesheet" type="text/css" href="/css/item.css" />
</head>

<body>
    <#--头部内容-->
    <#include "common-header.ftl"/>
    <#--头部内容-->
    <#include "banner.ftl"/>

    <!--    页面内容        -->
    <div class="content">
        <div class="overview"   >
            <div class="overview-left shadow">
                <div class="topic-preview-wrapper ex ex-s">
                    <div class="topic-preview-list-wrapper">
                        <ul class="topic-preview" id="topic-preview" style="width: 600%; margin-left: 0%;">
                           <li preview="preview" class="preview">
                               <a target="_blank" href="http://${host}/article/${art.id!}" title="${art.title!}">
                                   <img src="${art.imgUrl!}" alt="LOVELESS" style="width: 620px;height:300px">
                               </a>
                           </li>
                        </ul>
                    </div>
                    <div class="bottom-wrapper">
                        <div class="s-bottom">
                            <a href="http://${host}/article/${art.id!}" title="${art.title!}">${art.title!}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="overview-right">
                <div  class="overview-right-ul">
                    <ul>
                        <#list hotArticles as l>
                            <#if l_index lt 9>
                                <#assign title=l.title>
                                <li>
                                    <h2>
                                        <a href="http://${host}/article/${l.id}" title="${l.title}">
                                            <#if title?length gt 19>
                                                <span class="small-index">${title?substring(0,19)}...</span>
                                            <#else>
                                                <span class="small-index">${title}</span>
                                            </#if>
                                        </a>
                                    </h2>
                                </li>
                            </#if>
                        </#list>
                    </ul>
                </div>
            </div>
        </div>
        <#list modules as l>
            <div class="g-section-body">
                <div class="g-left">
                    <div class="b-head">
                        <div class="left">
                            <span class="b-head-i"></span>
                        <span class="b-head-t">
                            <a href="http://${host}/module/${l.value}" target="_blank" title="${l.name!}">
                                <h2>${l.name!}</h2>
                            </a>
                        </span>
                        <span class="b-head-s">
                        <#--当前共有<em>342</em> 部热门影评-->
                        </span>
                        </div>
                        <div class="right"></div>
                    </div>
                    <div class="b-body">
                        <#list l.articles as ar>
                            <li>
                                <div>
                                    <div class="item">
                                        <div>
                                            <div class="image">
                                                <a class="img" href="http://${host}/article/${ar.id}" title="监控"><img src="${ar.imgUrl!}" alt=""></a>
                                            </div>
                                            <div class="word">
                                                <div class="author">
                                                    by<span class="au">&nbsp;蜗牛快跑</span>
                                                </div>
                                                <div class="title">
                                                    <div class="table-title"><h3><a href="http://${host}/article/${ar.id}" class="ti" title="${ar.title!}">${ar.title!}</a></h3></div>
                                                    <div class="description">
                                                        <span>${ar.description!}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="clear:both"></div>
                                </div>
                            </li>
                        </#list>

                        <div style="clear:both"></div>

                    </div>
                </div>
                <div class="g-right">
                    <div class="g-right-body">
                        <a class="" href="index.ftl">
                            <img src="http://i0.hdslb.com/bfs/live/ee4cc7ff3eae8d007fe791d3d64e7366439038d1.jpg@.webp">
                        </a>
                    </div>
                </div>
                <div style="clear:both"></div>
            </div>
        </#list>
    </div>
       
    <!--    尾部内容-->
    <#include "common-footer.ftl"/>

</body>
</html>