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
                    <a href="article.ftl">智能</a>
                    <a href="article.ftl">好东西</a>
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
            <div class="article-recommend"></div>

            <div class="sls-comment-block sls-cont-pad  clearfix">
                <div id="comments">
                    <h3>
                        No <span class="comment-block">Comment</span>						</h3>
                </div>
                <ul class="comment-list Mbot15px">
                </ul>
                <div id="respond" class="comment-respond">
                    <h3 id="reply-title" class="comment-reply-title">Leave a <span class="comment-block">Comment</span> <small><a rel="nofollow" id="cancel-comment-reply-link" href="/selasih/business/the-future-of-the-internet-according-to-its-father/#respond" style="display:none;">Cancel reply</a></small></h3>
                    <form action="http://nostheme.com/selasih/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate="">
                        <p class="comment-notes"><span id="email-notes">Your email address will not be published.</span> Required fields are marked <span class="required">*</span></p>							<p class="comment-form-author"><label for="author">Name <span class="required">*</span></label> <input placeholder="name or a nick name" id="author" name="author" type="text" value="" size="30" aria-required="true" required="required"></p>
                        <p class="comment-form-email"><label for="email">Email <span class="required">*</span></label> <input placeholder="Example@gmail.com" id="email" name="email" type="text" value="" size="30" aria-describedby="email-notes" aria-required="true" required="required"></p>
                        <p class="comment-form-url"><label for="url">Website</label> <input placeholder="www.themeforest.net" id="url" name="url" type="text" value="" size="30"></p>
                        <p class="comment-form-comment"><label for="comment">Comment</label> <textarea id="comment" name="comment" cols="45" rows="8" aria-required="true" required="required"></textarea></p>
                        <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Submit Comment"> <input type="hidden" name="comment_post_ID" value="2613" id="comment_post_ID">
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
                        <a href="http://${host}/article/${l.id}" class="clear-title">${l.title}</a>
                        <p class="article-topic">
                            <a href="http://${host}/article/${l.id}" class="clear-topic">${l.description}</a>
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