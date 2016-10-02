<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />  
    <link rel="stylesheet" type="text/css" href="/css/main.css" />  
    <link rel="stylesheet" type="text/css" href="/css/item.css" />
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/jquery-1.8.0.min.js" />
</head>
    


<body onload="ready()">

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
                               <a target="_blank" href="">
                                   <img src="http://ocgkatm4e.bkt.clouddn.com/o_1atb6g42ju2l1r5uo0r1klrtj07.jpg" alt="LOVELESS" style="width: 620px;height:300px">
                               </a>
                           </li>
                        </ul>
                    
                    </div>
                    <div class="bottom-wrapper">
                        <div class="s-bottom">
                            <a href="index.ftl">今日推荐：天价背后对应的是什么？</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="overview-right">
                <div  class="overview-right-ul">
                    <ul>
                        <#list hotArticles as l>
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
                            <a href="http://${host}/module/${l.value}" target="_blank">
                                <h2>${l.name!}</h2>
                            </a>
                        </span>
                        <span class="b-head-s">
                        当前共有<em>342</em> 部热门影评
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
                                                    <h3><a href="http://${host}/article/${ar.id}" class="ti" title="Travel Guide: Walking tour of Massachusetts">${ar.title!}</a></h3>
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

                        <#--<li>-->
                            <#--<div>-->
                                <#--<div class="item">-->
                                    <#--<div>-->
                                        <#--<div class="image">-->
                                            <#--<a class="img" href="/" title="监控"><img src="http://nostheme.com/selasih/wp-content/uploads/2015/09/girls-739071_1920-360x206.jpg" alt=""></a>-->
                                        <#--</div>-->
                                        <#--<div class="word">-->
                                            <#--<div class="author">-->
                                                <#--by<span class="au">&nbsp;蜗牛快跑</span>-->
                                            <#--</div>-->
                                            <#--<div class="title">-->
                                                <#--<h3><a href class="ti" title="Travel Guide: Walking tour of Massachusetts">【榜单】 BBC评选21世纪最伟大电影Top100</a></h3>-->
                                                <#--<div class="description">-->
                                                    <#--<span>似乎电影明星不再神秘与遥远，拍电影也没有那么难，但事实上无论在任何年代，拍出一部好电影。</span>-->
                                                <#--</div>-->
                                            <#--</div>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                <#--</div>-->
                                <#--<div style="clear:both"></div>-->
                            <#--</div>-->
                        <#--</li>-->
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