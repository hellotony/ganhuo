<div class="header">
    <div class="h-inner">
        <div class="h-top">
            <div class="h-top-left">
                <a href="http://${host}/" title="">
                    <img src="http://ocgkatm4e.bkt.clouddn.com/logo.png">
                </a>
                <div class="web-title"><a href="http://${host}/" title="干货网">干货网</a></div>
            </div>
            <#--<div class="h-top-right">-->
                <#--<a href="http://${host}/" title="">-->
                    <#--<img src="http://demo.tagdiv.com/newspaper/wp-content/uploads/2016/01/rec728.jpg">-->
                <#--</a>-->
            <#--</div>-->
            <div style="clear:both"></div>
        </div>

        <div class="h-bootom">
            <div class="h-table">
                <ul class="header-menu">
                <#list modules as l>
                    <li>
                        <a href="http://${host}/module/${l.value}" title="${l.name!}">
                        ${l.name}
                                <#--<div class="v-num">-->
                                    <#--<span class="add_new">${l.count}+</span>-->
                                <#--</div>-->
                        </a>
                    </li>
                </#list>
                <#--<li>-->
                <#--<a href="index.html">电影</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">趣闻</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">音乐</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">励志</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">搞笑</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">生活</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">科技</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">旅行</a>-->
                <#--</li><li>-->
                <#--<a href="index.html">福利</a>-->
                <#--</li>-->
                </ul>
            </div>
        </div>
        <div style="clear:both"></div>
    </div>
</div>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-86114808-1', 'auto');
    ga('send', 'pageview');

</script>