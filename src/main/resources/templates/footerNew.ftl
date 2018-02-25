<div class="footer">
    <div class="footer-container">
        <#--<div class="footor-logo">-->
            <#--<a href="http://${host!}/">-->
                <#--<img alt="" src="http://demo.tagdiv.com/newspaper/wp-content/uploads/2016/01/logo-white.png">-->
            <#--</a>-->
        <#--</div>-->
        <div class="link">
            <div class="block-title">
                友情链接
            </div>
            <div class="about-us-info">
                <#list links as l>
                    <a href="${l.indexUrl!}"><span>${l.title!}</span></a>
                </#list>

            </div>
        </div>
        <div class="aboutus">
            <div class="block-title">
                ABOUT US
            </div>
            <div class="about-us-info">
                    <span>
                        干货网是新一代的互联网内容社区，利用先进的爬虫系统和内容审核算法，致力于为所有互联网用户提供筛选过的优质内容，避免迷失在浩瀚的垃圾海洋里！
                    </span>
            </div>
        </div>
    </div>
</div>