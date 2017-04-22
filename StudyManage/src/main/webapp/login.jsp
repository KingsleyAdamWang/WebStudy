<%--
  Created by IntelliJ IDEA.
  User: mengf
  Date: 2017/2/21 0021
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<%@ include file="common/taglib.jsp"%>
<html>
<head>
    <title>登录页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="${basePath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${basePath}/css/sweetalert.css">
    <link rel="stylesheet" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/footer.css">
    <link rel="stylesheet" href="${basePath}/css/login&register.css">

</head>
<body>
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 text-center">
                <div class="header text-center">
                    <a href="index.jsp"><img class="img-header img-responsive" src="${basePath}/img/header.png"></a>
                </div>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#individual_login" data-toggle="tab">学员登录</a></li>
                    <li><a href="#institution_login" data-toggle="tab">机构登录</a></li>
                </ul>
                <div class="tab-content">
                    <%--学员登录--%>
                    <div id="individual_login" class="tab-pane fade in active">
                        <%--学员登录--%>
                        <div class="container-fluid">
                            <form class="form-horizontal" action="" method="post">
                                <div class="form-group text-left">
                                    <label class="col-sm-2 control-label">账号</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="text" placeholder="账号/邮箱号" name="username" id="username">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" placeholder="请输入密码" name="password" type="password" id="password">
                                    </div>
                                </div>
                                <div class="btn-choose">
                                    <button class="btn btn-success pull-left" type="button" onclick="individual_login()">登录</button>
                                    <a class="btn btn-danger pull-right" href="register.jsp">注册</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%--机构登录--%>
                    <div id="institution_login" class="tab-pane fade">
                        <div class="container-fluid">
                            <form class="form-horizontal" action="" method="post">
                                <div class="form-group text-left">
                                    <label class="col-sm-2 control-label">账号</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" type="text" placeholder="账号/邮箱号" name="username" id="institution_username">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" placeholder="请输入密码" type="password" name="password" id="institution_password">
                                    </div>
                                </div>
                                <div class="btn-choose">
                                    <button type="button" class="btn btn-success pull-left" onclick="institution_login()">登录</button>
                                    <a class="btn btn-danger pull-right" href="register.jsp">注册</a>

                                </div>
                            </form>
                        </div>
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
<script type="text/javascript">
    $("#individual_login").on("keyPress",function (e) {
        if (e.which==13){
            individual_login();
        }
    });

    $("#institution_login").on("keyPress",function (e) {
        if (e.which==13){
            institution_login();
        }
    });

    function individual_login() {
        if(checkLoginSubmit()){
            $.ajax({
                url:'${basePath}/user_login',
                type:"POST",
                data:$("#individual_login form").serialize(),
                dataType:"json",
                success:function (data) {
                    if(data.state=='SUCCESS'){
                        swal({
                            title:"登录成功",
                            text: data.obj+"\n转向主页.....",
                            type:"success",
                            timer:5000
                        },function () {
                            window.location.href="/index.jsp";
                        });
                    }else{
                        swal("登录失败","失败原因：\n"+data.obj);
                    }
                },
                error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                    //alert(XMLHttpRequest.readyState);
                    //alert(textStatus);
                    swal("发送失败","返回码："+XMLHttpRequest.status+"\n状态码："+XMLHttpRequest.readyState+
                        +"\n"+"状态信息："+textStatus);
                }
            });
        }
    }




    function institution_login() {
        if(checkLoginSubmit()){
            $.ajax({
                url:'${basePath}/institution_login',
                type:"POST",
                data:$("#institution_login form").serialize(),
                dataType:"json",
                success:function (data) {
                    if(data.state=='SUCCESS'){
                        swal({
                            title:"登录成功",
                            text: data.obj+"转向主页......",
                            type:"success",
                            timer:5000
                        },function () {
                            window.location.href="/index.jsp";
                        });
                    }else{
                        swal("登录失败","失败原因：\n"+data.obj);
                    }
                },
                error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                    //alert(XMLHttpRequest.readyState);
                    //alert(textStatus);
                    swal("登录请求失败","返回码："+XMLHttpRequest.status+"\n状态码："+XMLHttpRequest.readyState+
                        +"\n"+"状态信息："+textStatus);
                }
            });
        }
    }

</script>
</body>
</html>
