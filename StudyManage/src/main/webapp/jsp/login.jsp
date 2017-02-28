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
    <link rel="stylesheet" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/footer.css">
    <link rel="stylesheet" href="${basePath}/css/login&register.css">

</head>
<body>
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 text-center">
                <h1 class="header">蓝鲸网，培训圆梦</h1>
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
                                        <input class="form-control" type="text" placeholder="账号/手机号" id="username">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" placeholder="请输入密码" type="password" id="password">
                                    </div>
                                </div>
                                <div class="btn-choose">
                                    <button class="btn btn-success pull-left">登录</button>
                                    <button class="btn btn-danger pull-right register">注册</button>
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
                                        <input class="form-control" type="text" placeholder="账号/手机号" id="institution_username">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" placeholder="请输入密码" type="password" id="institution_password">
                                    </div>
                                </div>
                                <div class="btn-choose">
                                    <button class="btn btn-success pull-left">登录</button>
                                    <button class="btn btn-danger pull-right register">注册</button>

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
<script type="text/javascript">
    $(".register").click(function () {
        alert("hello123");

        window.location.href="http://www.baidu.com";
        //location.href="${basePath}/jsp/register.jsp";
    });
</script>
</body>
</html>
