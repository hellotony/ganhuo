<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/article.css" />  
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/jquery-1.8.0.min.js" />

</head>

<body>

    <#--头部内容-->
    <#include "common-header.ftl"/>
    <#--头部内容-->
    <#include "banner.ftl"/>

   
    <!--   栏目内容 -->
    <div class="content">
        
        <div class="a-left shadow">
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
            <div class="article-recommend">
                <div class="recommend-item">
                    <div class="recommend-name">
                        <span class="name-backyan">极客学院－媛儿</span> 2015年02月05日
                    </div>
                    <div class="recommend-content">
                        非常感谢你。不过，我是想把外面的蓝色的边框去掉，不是去掉里面的绿色的边框。。笑什么，严肃点——五名俄罗斯科学家被十多头北极熊围困在孤岛，救援预计一个月后到达(String), 1(Integer), 笑什么，严肃点——五名俄罗斯科学家被十多头北极熊围困在孤岛，救援预计一个月后到达(String), http://ocgkatm4e.bkt.clouddn.com/o_1atb6g42ju2l1r5uo0r1klrtj07.jpg(String),
                        <p>当你读到这个悲惨故事的时候，有五名俄罗斯气象学家已在北冰洋与世隔绝的孤岛上被困两周之久，而且还要再度过提心吊胆的一个多月，可谓叫天天不应，叫地地不灵——只因有十头成年北极熊正带
                    </div>
                </div>
                <div class="recommend-item">
                    <div class="recommend-name">
                        <span class="name-backyan">极客学院－媛儿</span> 2015年02月05日
                    </div>
                    <div class="recommend-content">
                        非常感谢你。不过，我是想把外面的蓝色的边框去掉，不是去掉里面的绿色的边框。。笑什么，严肃点——五名俄罗斯科学家被十多头北极熊围困在孤岛，救援预计一个月后到达(String), 1(Integer), 笑什么，严肃点——五名俄罗斯科学家被十多头北极熊围困在孤岛，救援预计一个月后到达(String), http://ocgkatm4e.bkt.clouddn.com/o_1atb6g42ju2l1r5uo0r1klrtj07.jpg(String),
                        <p>当你读到这个悲惨故事的时候，有五名俄罗斯气象学家已在北冰洋与世隔绝的孤岛上被困两周之久，而且还要再度过提心吊胆的一个多月，可谓叫天天不应，叫地地不灵——只因有十头成年北极熊正带
                    </div>
                </div>

            </div>
            <div style="clear:both"></div>
            <div class="comment-block sls-cont-pad  clearfix">
                <ul class="comment-list Mbot15px">
                </ul>
                <div id="respond" class="comment-respond">
                    <h3 id="reply-title" class="comment-reply-title">留下你的牛评！</h3>
                    <form action="" method="post" id="commentform" class="comment-form" novalidate="">
                        <p class="comment-form-author"><label for="author"><span class="required"></span></label> <input placeholder="您的大名 或 邮箱" id="author" name="author" type="text" value="" size="30" aria-required="true" required="required"></p>
                        <p class="comment-form-comment"><label for="comment"></label> <textarea id="comment" name="comment" cols="45" rows="8" placeholder="评论内容..." aria-required="true" required="required"></textarea></p>
                        <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="提交评论">
                            <input type="hidden" name="comment_post_ID" value="2613" id="comment_post_ID">
                            <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                        </p>					</form>
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
                            <#--<#if l.description?length gt 10>-->
                                <#--<a href="http://${host}/article/${l.id}" class="clear-topic">${l.description?substring(0,10)}</a>-->
                            <#--<#else >-->
                                <#--<a href="http://${host}/article/${l.id}" class="clear-topic">${l.description}</a>-->
                            <#--</#if>-->

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