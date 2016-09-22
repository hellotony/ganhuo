<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />  
    <link rel="stylesheet" type="text/css" href="/css/main.css" />  
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/jquery-1.8.0.min.js" />
</head>
    
     <script>
        setInterval("myInterval()",1000);//1000为1秒钟
        function ready(){
            document.getElementById("slider-bar").children[0].style.borderColor = "darkcyan";
        }
        function myInterval()
            {
                var length = document.getElementById("topic-preview").style.marginLeft;
                var index = length.indexOf('%');
                var value = length.substring(0,index);
                
                var tagLength = document.getElementById("topic-preview").getElementsByTagName("li").length;
                
            
                
                if(value == 0){
                    document.getElementById("slider-bar").children[0].style.borderColor = "white";
                    document.getElementById("slider-bar").children[tagLength-1].style.borderColor = "white";
                }else{
                    document.getElementById("slider-bar").children[value/100*(-1)].style.borderColor = "white";
                }
               
                    
                value = value-100;
                if(value == -100*tagLength){
                    value = 0;
                }
                document.getElementById("slider-bar").children[value/100*(-1)].style.borderColor = "darkcyan";
                var valuep = value+"%";
                document.getElementById("topic-preview").style.marginLeft = valuep;
                
                
                

            }
    
    </script>

<body onload="ready()">

    <#--头部内容-->
    <#include "common-header.ftl"/>
    <#--头部内容-->
    <#include "banner.ftl"/>

    <!--    页面内容        -->
    <div class="content">
        <div class="overview">
            <div class="overview-left">
                <div class="topic-preview-wrapper ex ex-s">
                    <div class="topic-preview-list-wrapper">
                        <ul class="topic-preview" id="topic-preview" style="width: 600%; margin-left: 0%;">
                           <li preview="preview"><a target="_blank" href=""><img src="http://i0.hdslb.com/bfs/bangumi/112c20142c12ced9ccc583545d01e5e8fda25701.jpg_620x300.jpg" alt="LOVELESS"></a></li>
                           <li preview="preview"><a target="_blank" href="http://bangumi.bilibili.com/anime/451"><img src="http://i0.hdslb.com/bfs/bangumi/262cbb0a5532382eb13a3d734f0a9ee95520334e.jpg_620x300.jpg" alt="恋爱研究所"></a></li>
                           <li preview="preview"><a target="_blank" href="http://bangumi.bilibili.com/anime/2932"><img src="http://i0.hdslb.com/bfs/bangumi/9776fe4258618613c50b22e7889b33dda333f478.jpg_620x300.jpg" alt="打工吧！魔王大人"></a></li>
                           <li preview="preview"><a target="_blank" href="http://bangumi.bilibili.com/anime/2585"><img src="http://i0.hdslb.com/bfs/bangumi/8863a290835420709f962f7c93915109a610bace.jpg_620x300.jpg" alt="乱步奇谭"></a></li>
                           <li preview="preview"><a target="_blank" href="http://bangumi.bilibili.com/anime/5477"><img src="http://i0.hdslb.com/bfs/bangumi/b2045ef6da39280d9205266d83fa3cddc594e2c7.jpg_620x300.jpg" alt="剧场版 选择破坏者WIXOSS"></a></li>
                           <li preview="preview"><a target="_blank" href="http://bangumi.bilibili.com/anime/3468"><img src="http://i0.hdslb.com/bfs/bangumi/bb385c42555c06b66979bba36693c2913662463a.jpg_620x300.jpg" alt="元气少女缘结神 过去篇"></a></li>
                        </ul>
                    
                    </div>
                    <div class="bottom-wrapper">
                        <div class="s-bottom">
                            <ul class="slider-bar" id="slider-bar">
                                <li class="menu-li">    
                                    <a href="index.ftl">
                                        <img src="http://i0.hdslb.com/bfs/bangumi/0b543c6aac1e6b865f9e25c67e09ec1d26f02db8.jpg_50x38.jpg" style="width:50px;height:38px;">
                                    </a>
                                </li>
                                
                                <li class="menu-li">
                                    <a href="index.ftl">
                                        <img src="http://i0.hdslb.com/bfs/bangumi/0b543c6aac1e6b865f9e25c67e09ec1d26f02db8.jpg_50x38.jpg" style="width:50px;height:38px;">
                                    </a>
                                </li>
                                
                                <li class="menu-li">
                                    <a href="index.ftl">
                                        <img src="http://i0.hdslb.com/bfs/bangumi/0b543c6aac1e6b865f9e25c67e09ec1d26f02db8.jpg_50x38.jpg" style="width:50px;height:38px;">
                                    </a>
                                </li>
                                
                                <li class="menu-li">
                                    <a href="index.ftl">
                                        <img src="http://i0.hdslb.com/bfs/bangumi/0b543c6aac1e6b865f9e25c67e09ec1d26f02db8.jpg_50x38.jpg" style="width:50px;height:38px;">
                                    </a>
                                </li>
                                
                                <li class="menu-li">
                                    <a href="index.ftl">
                                        <img src="http://i0.hdslb.com/bfs/bangumi/0b543c6aac1e6b865f9e25c67e09ec1d26f02db8.jpg_50x38.jpg" style="width:50px;height:38px;">
                                    </a>
                                </li>
                                
                                <li class="menu-li">
                                    <a href="index.ftl">
                                        <img src="http://i0.hdslb.com/bfs/bangumi/0b543c6aac1e6b865f9e25c67e09ec1d26f02db8.jpg_50x38.jpg" style="width:50px;height:38px;">
                                    </a>
                                </li>
                                
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="overview-right">
                <div  class="overview-right-ul">
                    <ul>
                        <#list hotArticles as l>
                        <li>
                            <h2>
                                <a href="http://${host}/article/${l.id}" title="${l.title}">
                                    <span class="small-index">${l.title}</span>
                                </a>
                            </h2>
                        </li>
                        </#list>

                    </ul>
                </div>
            </div>
        
        </div>
        
        <div class="g-section-body">
            <div class="g-left">
                <div class="b-head">
                    <div class="left">
                        <span class="b-head-i"></span>
                        <span class="b-head-t">
                            <a href="content.ftl" target="_blank">
                                <h2>光影世界</h2>
                            </a>
                        </span>
                        <span class="b-head-s">
                        当前共有<em>342</em> 部热门影评
                        </span>
                    </div>
                    <div class="right"></div>   
                
                </div>
                <div class="b-body">
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    
                </div>
            </div>
            <div class="g-right">
                <div class="g-right-body">
                    <a class="" href="index.ftl">
                        <img src="http://i0.hdslb.com/bfs/live/ee4cc7ff3eae8d007fe791d3d64e7366439038d1.jpg@.webp">
                    </a>
                </div>
            </div>     
        </div>
        
        
        
        <div class="g-section-body">
            <div class="g-left">
                <div class="b-head">
                    <div class="left">
                        <span class="b-head-i"></span>
                        <span class="b-head-t">
                            <a href="index.ftl" target="_blank">
                                <h2>光影世界</h2>
                            </a>
                        </span>
                        <span class="b-head-s">
                        当前共有<em>342</em> 部热门影评
                        </span>
                    </div>
                    <div class="right"></div>   
                
                </div>
                <div class="b-body">
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    
                </div>
            </div>
            <div class="g-right">
                <div class="g-right-body">
                    <a class="" href="index.ftl">
                        <img src="http://i0.hdslb.com/bfs/live/ee4cc7ff3eae8d007fe791d3d64e7366439038d1.jpg@.webp">
                    </a>
                </div>
            </div>     
        </div>
        
        
        <div class="g-section-body">
            <div class="g-left">
                <div class="b-head">
                    <div class="left">
                        <span class="b-head-i"></span>
                        <span class="b-head-t">
                            <a href="index.ftl" target="_blank">
                                <h2>光影世界</h2>
                            </a>
                        </span>
                        <span class="b-head-s">
                        当前共有<em>342</em> 部热门影评
                        </span>
                    </div>
                    <div class="right"></div>   
                
                </div>
                <div class="b-body">
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    
                </div>
            </div>
            <div class="g-right">
                <div class="g-right-body">
                    <a class="" href="index.ftl">
                        <img src="http://i0.hdslb.com/bfs/live/ee4cc7ff3eae8d007fe791d3d64e7366439038d1.jpg@.webp">
                    </a>
                </div>
            </div>     
        </div>
        
        <div class="g-section-body">
            <div class="g-left">
                <div class="b-head">
                    <div class="left">
                        <span class="b-head-i"></span>
                        <span class="b-head-t">
                            <a href="index.ftl" target="_blank">
                                <h2>光影世界</h2>
                            </a>
                        </span>
                        <span class="b-head-s">
                        当前共有<em>342</em> 部热门影评
                        </span>
                    </div>
                    <div class="right"></div>   
                
                </div>
                <div class="b-body">
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="v m300">
                            <a href="index.ftl">
                                <div></div>
                                <img src="http://i2.hdslb.com/320_200/video/ba/baa80b00f2732b8eedc8594cb1020b3a.jpg"/>
                            </a>
                            <a href="index.ftl" title="首页网站开发">
                                <div class="b-body-title">首页网站开发</div>
                                <div>
                                    <span class="b-body-state">
                                        <span class="icon-z"></span>
                                        39545   
                                    </span>
                                </div>    
                            </a>
                        </div>
                    </li>
                    
                    
                </div>
            </div>
            <div class="g-right">
                <div class="g-right-body">
                    <a class="" href="index.ftl">
                        <img src="http://i0.hdslb.com/bfs/live/ee4cc7ff3eae8d007fe791d3d64e7366439038d1.jpg@.webp">
                    </a>
                </div>
            </div>     
        </div>
        
        
        
        
        
        
        
        

        
        
        
        
    </div>
       
    <!--    尾部内容-->
    <#include "common-footer.ftl"/>

</body>
</html>