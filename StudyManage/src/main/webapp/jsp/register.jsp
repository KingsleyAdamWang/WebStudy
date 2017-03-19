<%--
  Created by IntelliJ IDEA.
  User: mengf
  Date: 2017/2/21 0021
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<%@include file="common/taglib.jsp" %>

<html>
<head>
    <title>注册</title>
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
                <div class="header text-center">
                    <a href="index.jsp"><img class="img-header img-responsive" src="${basePath}/img/header.png"></a>
                </div>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#individual_register" data-toggle="tab">学员注册</a></li>
                    <li><a href="#institution_register" data-toggle="tab">机构注册</a></li>
                </ul>
                <div class="tab-content">
                    <%--学员注册--%>
                    <div id="individual_register" class="tab-pane fade in active">
                        <%--学员注册--%>
                        <div class="container-fluid">
                            <form class="form-horizontal" action="" method="post">
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">手机号</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" type="text" placeholder="手机号" name="tel">
                                    </div>
                                    <div class="col-sm-3">
                                        <button class="btn btn-success btn-block">获取验证码</button>
                                    </div>
                                </div>


                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">验证码</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="获取到的验证码" type="text"
                                               name="checkCode">
                                    </div>
                                </div>


                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">邮箱</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="请输入邮箱" type="email" name="email">
                                    </div>
                                </div>

                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">密码</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="密码" type="password" id="password" name="password">
                                    </div>
                                </div>

                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">确认密码</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="确认密码" type="password"
                                               id="confirm_password">
                                    </div>
                                </div>

                                <div class="btn-choose">
                                    <button class="btn btn-success pull-left" onclick="individual_register()">注册</button>
                                    <a class="btn btn-danger pull-right" href="login.jsp">已有账号</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%--机构登录--%>
                    <div id="institution_register" class="tab-pane fade">
                        <div class="container-fluid">
                            <form class="form-horizontal" action="" method="post">
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">机构名称</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" placeholder="机构名称"
                                               name="institution_name">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">所有者姓名</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" placeholder="姓名"
                                               name="institution_owner">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">身份证号</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="身份证号" type="text"
                                               name="institution_id">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">联系方式</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" placeholder="手机号" type="text"
                                               name="institution_tel">
                                    </div>
                                    <div class="col-sm-3">
                                        <button class="btn btn-success btn-block">获取验证码</button>
                                    </div>
                                </div>

                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">验证码</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="收到的验证码" type="text" name="check_code">
                                    </div>
                                </div>

                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">公邮</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="企业联系邮箱" type="email"
                                               name="institution_email">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">密码</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="密码" type="password"
                                               name="institution_password">
                                    </div>
                                </div>
                                <div class="form-group text-left">
                                    <label class="col-sm-3 control-label">确认密码</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" placeholder="确认密码" type="email"
                                            name="institution_confirm_password">
                                    </div>
                                </div>
                                <div class="btn-choose">
                                    <button class="btn btn-success pull-left" onclick="institution_register()">注册</button>
                                    <a class="btn btn-danger pull-right" href="login.jsp">已有账号</a>

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
<script type="text/javascript" src="${basePath}/js/check.js"></script>
<script type="text/javascript">
    $("individual_register").on("keyPress",function (e) {
        if (e.which==13){
            individual_register();
        }
    });

    $("institution_register").on("keyPress",function (e) {
        if (e.which==13){
            institution_register();
        }
    });

    function individual_register() {

    }




    function institution_register() {

    }
</script>
</body>
</html>
