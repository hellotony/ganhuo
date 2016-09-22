<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/css/publish.css" />
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/jquery-1.8.0.min.js" />
    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="/css/wangEditor.min.css">
</head>
<style>
    div#t {
        margin-left: auto;
        margin-right: auto;
        display: block;
        padding-left: 30px;
        padding-right: 30px;
        padding-top: 40px;
        line-height: 23px;
    }

    blockquote{
        padding: 1px 20px;
        border-left: 5px solid green;
        text-align: left;
    }
</style>

<body>

    <#--头部内容-->
    <#include "common-header.ftl"/>

    <div class="main-body">
        <span class="title">发表干货</span><br><br>
        <div class="publish">
            <label>标题</label>
            <input type="text" class="input" name="title"><br><br>
            <label>类型</label>
            <select name="type" class="input">
                <#list modules as l>
                    <option value="${l.value!}" class="input">${l.name!}</option>
                </#list>
            </select>
            <br><br>
            <label>主题图片</label>
            <form id="form" action="" method="post" enctype="multipart/form-data">
                <input type="file" name="file" id="file"><br><br>
                <input type="button" value="上传" id="uploadTopic">
            </form>

            <div style="width: 805px;">
                <div id="div1" style="height:300px;width:auto;" class="submitPage">
                    <p>请输入内容...</p>
                </div>
            </div>
            <br>
            <input type="button" name="提交" id="sub" value="提交" class="submitPage">

            <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
            <script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js"></script>
            <script type="text/javascript" src="/js/wangEditor.min.js"></script>

            <!--这里引用jquery和wangEditor.js-->
            <script type="text/javascript">

                // 封装 console.log 函数
                function printLog(title, info) {
                    window.console && console.log(title, info);
                }

                // 初始化七牛上传
                function uploadInit() {
                    var editor = this;
                    var btnId = editor.customUploadBtnId;
                    var containerId = editor.customUploadContainerId;

                    // 创建上传对象
                    var uploader = Qiniu.uploader({
                        runtimes: 'html5,flash,html4',    //上传模式,依次退化
                        browse_button: btnId,       //上传选择的点选按钮，**必需**
                        uptoken_url: 'http://localhost:8080/uploadToken',
                        //Ajax请求upToken的Url，**强烈建议设置**（服务端提供）
                        // uptoken : '<Your upload token>',
                        //若未指定uptoken_url,则必须指定 uptoken ,uptoken由其他程序生成
                        unique_names: true,
                        // 默认 false，key为文件名。若开启该选项，SDK会为每个文件自动生成key（文件名）
                        // save_key: true,
                        // 默认 false。若在服务端生成uptoken的上传策略中指定了 `sava_key`，则开启，SDK在前端将不对key进行任何处理
                        domain: 'http://ocgkatm4e.bkt.clouddn.com/',
                        //bucket 域名，下载资源时用到，**必需**
                        container: containerId,           //上传区域DOM ID，默认是browser_button的父元素，
                        max_file_size: '100mb',           //最大文件体积限制
                        flash_swf_url: '../js/plupload/Moxie.swf',  //引入flash,相对路径
                        filters: {
                            mime_types: [
                                //只允许上传图片文件 （注意，extensions中，逗号后面不要加空格）
                                { title: "图片文件", extensions: "jpg,gif,png,bmp" }
                            ]
                        },
                        max_retries: 3,                   //上传失败最大重试次数
                        dragdrop: true,                   //开启可拖曳上传
                        drop_element: 'editor-container',        //拖曳上传区域元素的ID，拖曳文件或文件夹后可触发上传
                        chunk_size: '4mb',                //分块上传时，每片的体积
                        auto_start: true,                 //选择文件后自动上传，若关闭需要自己绑定事件触发上传
                        init: {
                            'FilesAdded': function(up, files) {
                                plupload.each(files, function(file) {
                                    // 文件添加进队列后,处理相关的事情
                                    printLog('on FilesAdded');
                                });
                            },
                            'BeforeUpload': function(up, file) {
                                printLog('on BeforeUpload');
                            },
                            'UploadProgress': function(up, file) {
                                // 显示进度条
                                editor.showUploadProgress(file.percent);
                            },
                            'FileUploaded': function(up, file, info) {
                                // 每个文件上传成功后,处理相关的事情
                                // 其中 info 是文件上传成功后，服务端返回的json，形式如
                                // {
                                //    "hash": "Fh8xVqod2MQ1mocfI4S4KpRL6D98",
                                //    "key": "gogopher.jpg"
                                //  }
                                printLog(info);
                                // 参考http://developer.qiniu.com/docs/v6/api/overview/up/response/simple-response.html

                                var domain = up.getOption('domain');
                                var res = $.parseJSON(info);
                                var sourceLink = domain + res.key; //获取上传成功后的文件的Url

                                printLog(sourceLink);

                                // 插入图片到editor
                                editor.command(null, 'insertHtml', '<img src="' + sourceLink + '" style="max-width:100%;"/>')
                            },
                            'Error': function(up, err, errTip) {
                                //上传出错时,处理相关的事情
                                printLog('on Error');
                            },
                            'UploadComplete': function() {
                                //队列文件处理完毕后,处理相关的事情
                                printLog('on UploadComplete');

                                // 隐藏进度条
                                editor.hideUploadProgress();
                            }
                            // Key 函数如果有需要自行配置，无特殊需要请注释
                            //,
                            // 'Key': function(up, file) {
                            //     // 若想在前端对每个文件的key进行个性化处理，可以配置该函数
                            //     // 该配置必须要在 unique_names: false , save_key: false 时才生效
                            //     var key = "";
                            //     // do something with key here
                            //     return key
                            // }
                        }
                    });
                    // domain 为七牛空间（bucket)对应的域名，选择某个空间后，可通过"空间设置->基本设置->域名设置"查看获取
                    // uploader 为一个plupload对象，继承了所有plupload的方法，参考http://plupload.com/docs
                }

                //生成编辑器
//                var editor = new wangEditor('div1');
//                editor.config.pasteFilter = false;
//                editor.config.uploadImgUrl = "http://localhost:8080/upload/test";
//                editor.config.uploadImgFileName = "myFileName";
//                editor.create();
                // 生成编辑器
                var editor = new wangEditor('editor-trigger');
                editor.config.customUpload = true;
                editor.config.customUploadInit = uploadInit;
                editor.create();

                var formData = new FormData($("#form")[0]);


                var file = $("#file");

                <#--//上传 主题图片-->
                $("#uploadTopic").unbind("click").bind("click",function(){
                    $.ajax({
                        type: "post",
                        url: "http://${host}/upload/file",
                        async:false,
                        data: $("#form").serialize(),
                        success: function(data) {
                            if (data == "" || data == undefined) {
                                alert('返回值为空!');
                            }
                            else {
                                topicImgUrl = data;
                            }
                        },
                        error: function(data) {
                            alert("获取数据异常");
                        }
                    });
                });

                $("#sub").unbind("click").bind("click",function(){
                    var content = editor.$txt.html();
                    var title = $("input[name='title']").val();
                    var type = $("input[name='type']").val();
                    var id = 0;

                    if(content=="" || title==""){
                        return;
                    }

//            插入文章
                    $.ajax({
                        type: "post",
                        url: "http://localhost:8080/article/add",
                        async:false,
                        data: { "content": content,"title":title,"type":type},
                        success: function(data) {
                            if (data == "" || data == undefined) {
                                alert('返回值为空!');
                            }
                            else {
                                id = data;
                            }
                        },
                        error: function(data) {
                            alert("获取数据异常");
                        }
                    });
                });



            </script>
        
        </div>
    </div>

    <!--    尾部内容-->
    <#include "common-footer.ftl"/>

</body>
</html>