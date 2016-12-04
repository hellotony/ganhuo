<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>干货网</title>
    <link rel="shortcut icon" href="../img/icon.ico" />
    <meta name="baidu-site-verification" content="IVFhr15GD7" />
    <meta name="360-site-verification" content="1303633b6f52b6cd458a04432c50e8e1" />
    <meta name="description" content="干货网是新生的互联网内容社区，利用垂直搜索技术，网罗互联网最优质内容，精细化分类，并根据广大网友的反馈定时更新！">
    <meta name="keywords" content="干货网，干货，电影，趣闻，音乐，励志，搞笑，生活，科技，旅行，福利">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><meta name="HandheldFriendly" content="true">
    <link rel="stylesheet" type="text/css" href="../cssNew/common.css" />
    <link rel="stylesheet" type="text/css" href="../cssNew/index.css" />
</head>
<body>
<#--头部内容-->
<#include "headerNew.ftl"/>


<div class="content">

    <!--        本站通知-->
    <div class="notice">
        <div class="notice-b">
            <div class="notice-button">
                本站通知
            </div>
            <a href="http://${host}/">
                <span  class="notice-content">欢迎访问本站，生活论坛后续内测，欢迎大家！有什么建议，尽管戳这里！</span>
            </a>
        </div>
    </div>

    <!--        内容列表页-->
    <div class="table">
        <div class="table-left">
            <div class="table-one">
                <div class="table-one-content">
                    <div class="table-one-content-left" id="img-one">
                        <div class="table-one-content-left-image">
                            <a href="http://${host}/article/${indexArticles[0].id!}" ><img alt="" width="324" height="235" src="${indexArticles[0].imgUrl!}"></a>
                        </div>
                        <div class="table-one-content-left-title">
                            <a href="http://${host}/article/${indexArticles[0].id!}" style="">${indexArticles[0].title!}</a>
                        </div>
                        <div>
                            <span class="table-author">蜗牛快跑</span>     <span class="talbe-add-time">| ${indexArticles[0].addTime?datetime!}</span>
                        </div>
                        <div class="table-ar-desc">
                                <span class="table-article-description">
                                    ${indexArticles[0].description!}
                                </span>
                        </div>
                    </div>
                    <div class="talbe-one-content-right">
                        <div class="table-block">
                            <div class="block-img">
                                <a href="http://${host}/article/${indexArticles[1].id!}">
                                    <img width="70" height="70" src="${indexArticles[1].imgUrl!}" alt="">
                                </a>
                            </div>
                            <div class="block-desc">
                                <div class="desc-tilte">
                                    <a href="http://${host}/article/${indexArticles[1].id!}"> <h4> <span class="table-list-name"> ${indexArticles[1].title!}</span></h4></a>
                                </div>
                                <div class="desc-data">
                                    <span class="block-time">${indexArticles[1].addTime?datetime!}</span>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="table-block">
                            <div class="block-img">
                                <a href="http://${host}/article/${indexArticles[2].id!}">
                                    <img width="70" height="70" src="${indexArticles[2].imgUrl!}" alt="">
                                </a>
                            </div>
                            <div class="block-desc">
                                <div class="desc-tilte">
                                    <a href="http://${host}/article/${indexArticles[2].id!}"> <h4><span class="table-list-name"> ${indexArticles[2].title!}</span></h4></a>
                                </div>
                                <div class="desc-data">
                                    <span class="block-time">${indexArticles[2].addTime?datetime!}</span>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="table-block">
                            <div class="block-img">
                                <a href="http://${host}/article/${indexArticles[3].id!}">
                                    <img width="70" height="70" src="${indexArticles[3].imgUrl!}" alt="">
                                </a>
                            </div>
                            <div class="block-desc">
                                <div class="desc-tilte">
                                    <a href="http://${host}/article/${indexArticles[3].id!}"><h4> <span class="table-list-name">${indexArticles[3].title!}</span></h4></a>
                                </div>
                                <div class="desc-data">
                                    <span class="block-time">${indexArticles[3].addTime?datetime!}</span>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="table-block">
                            <div class="block-img">
                                <a href="http://${host}/article/${indexArticles[4].id!}">
                                    <img width="70" height="70" src="${indexArticles[4].imgUrl!}" alt="">
                                </a>
                            </div>
                            <div class="block-desc">
                                <div class="desc-tilte">
                                    <a href="http://${host}/article/${indexArticles[4].id!}"> <h4> <span class="table-list-name"> ${indexArticles[4].title!}</span></h4></a>
                                </div>
                                <div class="desc-data">
                                    <span class="block-time">${indexArticles[4].addTime?datetime!}</span>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                    <div style="clear:both"></div>
                </div>
                <div style="clear:both"></div>
            </div>
            <div class="table-two">
                <div class="table-one-top yellow-bottom">
                    <div class="table-one-top-block-title yellow-background">
                        不容错过
                    </div>
                    <div style="clear:both"></div>
                </div>
                <div class="table-one-content">
                    <div class="table-big">
                        <div class="table-one-content-left" id="img-two">
                            <div class="table-one-content-left-image">
                                <a href="http://${host}/article/${indexArticles[4].id!}"> <img alt="" width="324" height="160" src="${indexArticles[4].imgUrl!}"></a>
                            </div>
                            <div class="table-one-content-left-title">
                                <a href="http://${host}/article/${indexArticles[4].id!}" style="">${indexArticles[4].title!}</a>
                            </div>
                            <div>
                                <span class="table-author">蜗牛快跑</span>     <span class="talbe-add-time">| ${indexArticles[4].addTime?datetime!}</span>
                            </div>
                            <div class="table-ar-desc">
                                        <span class="table-article-description">
                                        ${indexArticles[4].description!}
                                        </span>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="table-one-content-right" id="img-three">
                            <div class="table-one-content-left-image">
                                <a href="http://${host}/article/${indexArticles[5].id!}"> <img alt="" width="324" height="160" src="${indexArticles[5].imgUrl!}"></a>
                            </div>
                            <div class="table-one-content-left-title">
                                <a href="http://${host}/article/${indexArticles[5].id!}" style="">${indexArticles[5].title!}</a>
                            </div>
                            <div>
                                <span class="table-author">蜗牛快跑</span>     <span class="talbe-add-time">| ${indexArticles[5].addTime?datetime!}</span>
                            </div>
                            <div class="table-ar-desc">
                                        <span class="table-article-description">
                                        ${indexArticles[5].description!}
                                        </span>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                    <div class="table-small">
                        <div class="table-small-left">
                            <div class="table-block1">
                                <div class="block-img">
                                    <a href="http://${host}/article/${indexArticles[6].id!}">
                                        <img width="100" height="70" src="${indexArticles[6].imgUrl!}" alt="">
                                    </a>
                                </div>
                                <div class="block-desc">
                                    <div class="small-width">
                                        <a href="http://${host}/article/${indexArticles[6].id!}"> <h4> <span class="table-list-name">${indexArticles[6].title!}</span></h4></a>
                                    </div>
                                    <div class="desc-data">
                                        <span class="block-time">${indexArticles[6].addTime?datetime!}</span>
                                    </div>
                                    <div style="clear:both"></div>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div class="table-block1">
                                <div class="block-img">
                                    <a href="http://${host}/article/${indexArticles[7].id!}">
                                        <img width="100" height="70" src="${indexArticles[7].imgUrl!}" alt="">
                                    </a>
                                </div>
                                <div class="block-desc">
                                    <div class="small-width">
                                        <a href="http://${host}/article/${indexArticles[7].id!}"> <h4> <span class="table-list-name"> ${indexArticles[7].title!}</span></h4></a>
                                    </div>
                                    <div class="desc-data">
                                        <span class="block-time">${indexArticles[7].addTime?datetime!}</span>
                                    </div>
                                    <div style="clear:both"></div>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="table-small-right">
                            <div class="table-block1">
                                <div class="block-img">
                                    <a href="http://${host}/article/${indexArticles[8].id!}">
                                        <img width="100" height="70" src="${indexArticles[8].imgUrl!}" alt="">
                                    </a>
                                </div>
                                <div class="block-desc">
                                    <div class="small-width">
                                        <a href="http://${host}/article/${indexArticles[8].id!}"> <h4> <span class="table-list-name"> ${indexArticles[8].title!}</span></h4></a>
                                    </div>
                                    <div class="desc-data">
                                        <span class="block-time">${indexArticles[8].addTime?datetime!}</span>
                                    </div>
                                    <div style="clear:both"></div>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div class="table-block1">
                                <div class="block-img">
                                    <a href="http://${host}/article/${indexArticles[9].id!}">
                                        <img width="100" height="70" src="${indexArticles[9].imgUrl!}" alt="">
                                    </a>
                                </div>
                                <div class="block-desc">
                                    <div class="small-width">
                                        <a href="http://${host}/article/${indexArticles[9].id!}"> <h4> <span class="table-list-name"> ${indexArticles[9].title!}</span></h4></a>
                                    </div>
                                    <div class="desc-data">
                                        <span class="block-time">${indexArticles[9].addTime?datetime!}</span>
                                    </div>
                                    <div style="clear:both"></div>
                                </div>
                                <div style="clear:both"></div>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                    <div style="clear:both"></div>
                </div>
                <div style="clear:both"></div>

            </div>
            <div class="table-three">
                <div class="table-one-top hui-bottom">
                    <div class="table-one-top-block-title hui-background">
                        福利推荐
                    </div>
                </div>
                <div class="table-three-content">
                    <div>
                        <div class="table-three-image">
                            <a href="http://${host}/article/${indexArticles[10].id!}">
                                <img alt="" width="210" height="150" src="${indexArticles[10].imgUrl!}">
                            </a>
                        </div>
                        <div class="table-three-image">
                            <a href="http://${host}/article/${indexArticles[11].id!}">
                                <img alt="" width="210" height="150" src="${indexArticles[11].imgUrl!}">
                            </a>
                        </div>
                        <div class="table-three-image">
                            <a href="http://${host}/article/${indexArticles[12].id!}">
                                <img alt="" width="210" height="150" src="${indexArticles[12].imgUrl!}">
                            </a>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                </div>
                <div style="clear:both"></div>
            </div>
            <div style="clear:both"></div>
        </div>

        <div class="sidebar">
            <div class="user-container">
                <div class="user-background"></div>
                <div class="user-icon">
                    <img src="http://ocgkatm4e.bkt.clouddn.com/g.jpg">
                </div>
                <div class="user-name">倚楼听风雨</div>
                <div style="clear:both"></div>
            </div>
            <div class="sidebar-one">
                <div class="table-right-list black-bottom">
                    <div class="table-right-list-title black-background">
                        杂文推荐
                    </div>
                    <div style="clear:both"></div>
                </div>
                <div class="article-list">

                    <#list lastArticles as l>
                        <div class="list-item">
                            <p>
                                <span class="num">${l_index}</span>
                                <a href="http://${host}/article/${l.id!}" title="${l.title!}">${l.title!}</a>
                            </p>

                        </div>
                    </#list>
                </div>
                <div style="clear:both"></div>
            </div>
            <div class="sidebar-one">
                <div class="table-right-list black-bottom">
                    <div class="table-right-list-title black-background">
                        最新评论
                    </div>
                    <div style="clear:both"></div>
                </div>
                <ul>
                    <#list comments as l >
                        <a href = "http://${host}/article/${l.articleId!}"><li class="comment">${l.content!}</li></a>
                    </#list>
                </ul>
                <div style="clear:both"></div>
            </div>
            <div style="clear:both"></div>
        </div>
        <div style="clear:both"></div>
    </div>
    <div style="clear:both"></div>

</div>
<#--头部内容-->
<#include "footerNew.ftl"/>
</body>
</html>