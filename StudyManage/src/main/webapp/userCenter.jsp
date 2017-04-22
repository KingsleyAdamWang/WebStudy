<%@ page import="bean.User" %>
<%@ page import="util.StringUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: mengf
  Date: 2017/3/22 0022
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <title>用户中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="${basePath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${basePath}/css/sweetalert.css">
    <link rel="stylesheet" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/footer.css">
    <link rel="stylesheet" href="${basePath}/css/login&register.css">
    <link rel="stylesheet" href="${basePath}/css/center.css">
    <link rel="stylesheet" href="${basePath}/css/fileinput.min.css">
    <link href="//cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css" rel="stylesheet">

</head>
<body>
<%
    User user = null;
    if (request.getSession(false) != null) {
        user = (User) (request.getSession(false).getAttribute("user"));
    }

%>
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-xs-3 center-block navdiv">

                <ul class="nav nav-pills nav-stacked text-center">
                    <li index="0"><a href="#0" data-toggle="tab">个人中心</a></li>
                    <li index="1"><a href="#1" data-toggle="tab">订单管理</a></li>
                    <li index="2"><a href="#2" data-toggle="tab">信息管理</a></li>
                    <li index="3"><a href="#3" data-toggle="tab">安全中心</a></li>
                </ul>
                <div class="text-left back-page">
                    <a onclick="javascript:history.back(-1);window.location.reload();"><span
                            class="glyphicon glyphicon-arrow-left"></span><span>返回上页</span></a>
                </div>
            </div>

            <div class="col-xs-9 tab-content">
                <div id="0" index="0" class="tab-pane fade">0</div>
                <div id="1" index="1" class="tab-pane fade">

                </div>
                <div id="2" index="2" class="tab-pane fade">
                    <div class="container-fluid">
                        <form id="user-basic" class="form-horizontal" enctype="multipart/form-data" action=""
                              method="post">


                            <div class="form-group text-center">
                                <div class="col-sm-3">
                                </div>
                                <div class="col-sm-9">
                                    <img class="img-circle preview"
                                         style="width: 100px;height: 100px;box-shadow: #2aabd2 2px 2px 3px; background: rgba(90,255,235,0.19);"
                                         src="<%= user.getHeadPath()%>"
                                         alt="抱歉！获取失败！">
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <%--<div class="head-preview col-sm-3">--%>
                                <%--<img src="/head/default.jpg" class="img-circle" alt="头像预览区">--%>
                                <%--</div>--%>

                                <div class="col-sm-3">
                                </div>
                                <div class="head-inputfile col-sm-9" onchange="" data-toggle="tooltip"
                                     title="目前只支持正方形图片">
                                    <input type="file" name="headImg" class="headImg">
                                </div>


                                <%--上传头像end--%>
                            </div>
                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label">用户账号</label>
                                <div class="col-sm-9">
                                    <input class="form-control" type="text" placeholder="用户账号"
                                           name="id" value="<%= user==null?"":StringUtil.getId(user.getId())%>"
                                           disabled>
                                </div>
                            </div>
                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label not-check">用户昵称</label>
                                <div class="col-sm-9">
                                    <input class="form-control" type="text" placeholder="用户昵称"
                                           name="name" value="<%= user==null?"":user.getName()%>">
                                </div>
                            </div>
                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label not-check">出生日期</label>
                                <div class="col-sm-9 ">
                                    <div class="input-group date" id="birthday">
                                        <input class="form-control datetimepicker" type="text" placeholder="出生日期"
                                               name="birth" value="2016-12-12">
                                        <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label not-check">个人宣言</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control not-check" name="comment"></textarea>
                                </div>
                            </div>
                            <label class="col-sm-3 control-label"></label>
                            <div class="btn-choose col-sm-9">
                                <button type="button" class="btn btn-success pull-left"
                                        onclick="updateBasic()">确认修改
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

                <%--账号安全--%>
                <div id="3" index="3" class="tab-pane fade">
                    <div class="container-fluid">
                        <form id="user-safe" class="form-horizontal" action="" method="post">
                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label">银行卡号</label>
                                <div class="col-sm-9">
                                    <input class="form-control not-check" placeholder="银行卡号" type="text"
                                           name="bankCard" value="<%= user==null?"":user.getBankCardId()%>">
                                </div>
                            </div>
                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label">邮箱</label>
                                <div class="col-sm-6">
                                    <input class="form-control" placeholder="联系邮箱" type="email"
                                           name="email" value="<%= user==null?"":user.getMail()%>">
                                </div>
                                <div class="col-sm-3">
                                    <button type="button" class="btn btn-success btn-block"
                                            onclick="sentMailForCheckCode()">获取验证码
                                    </button>
                                </div>
                            </div>

                            <div class="form-group text-left">
                                <label class="col-sm-3 control-label">验证码</label>
                                <div class="col-sm-9">
                                    <input class="form-control identity_id" placeholder="验证码" type="text"
                                           name="checkCode">
                                </div>
                            </div>

                            <label class="col-sm-3 control-label"></label>

                            <div class="btn-choose col-sm-9">
                                <button type="button" class="btn btn-success pull-left"
                                        onclick="updateSafe()">确认修改
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp" %>
<script type="text/javascript" src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}/js/footer-responsive.js"></script>
<script type="text/javascript" src="${basePath}/js/sweetalert.min.js"></script>
<script type="text/javascript" src="${basePath}/js/check.js"></script>
<script type="text/javascript" src="${basePath}/js/moment-with-locales.js"></script>
<script src="http://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${basePath}/js/fileinput.min.js"></script>
<script type="text/javascript" src="${basePath}/js/zh.js"></script>
<script type="text/javascript" src="${basePath}/js/headPreview.js"></script>
<script type="text/javascript">
    function responsive_nav() {
        $(window).resize(function () {
            var height = $(this).height();
            var navUL = $("ul.nav.nav-stacked");
            var move = (height - $(navUL).height()) / 2;
            navUL.css("marginTop", move + "px");
        });
    }

    $(function () {
        var height = $(this).height();
        var navUL = $("ul.nav.nav-stacked");
        var move = (height - $(navUL).height()) / 2;
        navUL.css("marginTop", move + "px");
        responsive_nav();

        var index = <%= request.getSession(false)==null? 0 : request.getSession().getAttribute("index")%>;
        if (!index || index > 3 || index < 0) {
            $(".nav-pills>li[index='0']").addClass("active");
            $(".tab-content>div[index='0']").addClass("active").addClass("in");
        } else {
            $(".nav-pills>li[index='" + index + "']").addClass("active");
            $(".tab-content>div[index='" + index + "']").addClass("active").addClass("in");

        }
        check_logged();

        $(window).on("click", check_logged);

        //初始化日历插件
        $('#birthday').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn')
        });
    });

    function check_logged() {
        var isLoggedIn = <%= user==null? false:true%>;
        if (!isLoggedIn) {
            swal({
                title: "抱歉，未检测到用户登录",
                text: "请重新登录",
                type: "warning",
                timer: 2000
            }, function () {
                window.location.href = "/login.jsp";
            });
        }
    }


    $("input.headImg").fileinput({
        language: 'zh', //设置语言
        //uploadUrl: '/modifyUserHead',
        showUpload: false, //是否显示上传按钮
        showRemove: true,
        dropZoneEnabled: false,
        showCaption: true,//是否显示标题
        allowedPreviewTypes: ['image'],
        allowedFileTypes: ['image'],
        allowedFileExtensions: ['jpg', 'png'],
        showPreview: false, //支持预览
        enctype: 'multipart/form-data',
        maxFileSize: 2000,
        maxFileCount: 1,
        uploadAsync: false, //同步上传

    });

    $(".headImg").change(function () {
        var file = this.files[0];
        //alert("文件大小:" + (file.size / 1024).toFixed(1) + "kB");
        if (window.FileReader) {
            var reader = new FileReader();
            reader.readAsDataURL(file);
            //监听文件读取结束后事件
            reader.onloadend = function (e) {
                show(e.target.result, file.fileName);
            };
        }
    });

    function show(source) {
        var img = $(".preview")
        img.attr("src", source);

    }
    function sentMailForCheckCode() {
        var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
        var mailAddress = $('div.tab-content>div.active input[type="email"]').val();
        if (mailAddress.trim() == '') {
            swal("请先输入邮箱地址");
            return;
        } else if (!re.test(mailAddress)) {
            swal("请先输入正确格式的邮箱地址");
            return;
        }

        //开始发送邮件
        $.ajax({
            url: "${basePath}/sendCheckCode",
            type: "post",
            data: {mailAddress: mailAddress},
            dataType: "json",
            success: function (message) {
                swal("发送成功", "请耐心等待验证码发送到您的邮箱");
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                swal("发送失败", "返回码：" + XMLHttpRequest.status + "\n状态码：" + XMLHttpRequest.readyState + +"\n" + "状态信息：" + textStatus);
            }
        });
    }


    function updateBasic() {
        var user_basic = $("#user-basic");
        var formData = new FormData(user_basic[0]);
        //因为表单中含有文件 所以不能用form的serializable方法
        $.ajax({
            url: "${basePath}/updateUserBasic",
            type: "post",
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                if (data.state == 'SUCCESS') {
                    swal("修改成功！", "", "success");
                    <% request.getSession().setAttribute("index",2);%>
                    window.location.reload();
                } else {
                    swal("修改失败", "失败原因：" + data.obj);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                swal("发送失败", "返回码：" + XMLHttpRequest.status + "\n状态码：" + XMLHttpRequest.readyState + +"\n" + "状态信息：" + textStatus);
            }
        });

    }

    function updateSafe() {
        var user_safe = $("#user-safe");
        $.ajax({
            url: "${basePath}/updateUserSafe",
            type: "post",
            data: user_safe.serialize(),
            dataType: "json",
            success: function (data) {
                if (data.state == 'SUCCESS') {
                    swal("修改成功！", "", "success");
                    window.location.reload();
                } else {
                    swal("修改失败", "失败原因：" + data.obj);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                swal("发送失败", "返回码：" + XMLHttpRequest.status + "\n状态码：" + XMLHttpRequest.readyState + +"\n" + "状态信息：" + textStatus);
            }
        });
    }
</script>
</body>
</html>
