<%@ page import="bean.User" %>
<%@ page import="bean.Institution" %>
<%@ page import="util.StringUtil" %><%--
  Created by IntelliJ IDEA.
  User: mengf
  Date: 2017/2/16 0016
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<%--<link rel="stylesheet" href="${basePath}/css/bootstrap.css">--%>

<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand logo" style="padding: 0px;margin: 0px;margin-right: 20px"
               href="${basePath}/index.jsp">
                <img src="${basePath}/img/logo.png" alt="ICON">
            </a>


            <button class="navbar-toggle btn btn-info" data-toggle="collapse" data-target="#collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <%--<span class="icon-bar"></span>--%>
            </button>

            <button class="search-form-btn navbar-toggle btn btn-info" data-toggle="collapse"
                    data-target="#navbar-search-form">
                <span class="glyphicon glyphicon-search"></span>
            </button>

        </div>


        <div class="container-fluid">

            <ul id="collapse" class="nav navbar-nav collapse navbar-collapse">
                <li><a id="index" class="active" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;首页</a>
                </li>
                <li><a id="course" href="course.jsp"><span class="glyphicon glyphicon-tasks"></span>&nbsp;&nbsp;课程</a>
                </li>
                <li><a id="institution" href="institution.jsp"><span class="glyphicon glyphicon-fire"></span>&nbsp;&nbsp;机构</a>
                </li>
                <%--<li><a href="#"><span></span>&nbsp;&nbsp;选项</a></li>--%>
                <%--<li><a href="#"><span></span>&nbsp;&nbsp;选项</a></li>--%>
                <li><a id="about" href="about.jsp"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;&nbsp;关于</a>
                </li>
            </ul>

            <div style="display: inline-block" class="navbar-text navbar-right">
                <span><a href="${basePath}/login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></span>
                <span>|</span>
                <span><a href="${basePath}/register.jsp"><span class="glyphicon glyphicon-user"></span> 注册</a></span>
            </div>

            <div id="navbar-search-form" class="navbar-form nav-justified navbar-right collapse navbar-collapse">
                <div class="input-group">
                    <div class="input-group-btn">
                        <select name="type" class="form-control">
                            <option value="1">课程</option>
                            <option value="2">机构</option>
                        </select>
                    </div>
                    <input class="form-control" type="text" id="search" placeholder="请输入需要查询的内容">
                    <div class="input-group-btn">
                        <button class="btn btn-info" type="button" onclick="">查询</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function login_check() {
        <%
        HttpSession session = request.getSession(false);
        User user = null;
        Institution institution = null;
        String type = "";
        String name = "";
        String headPath = "";
            if (session!=null){
                user = (User) (session.getAttribute("user"));
                institution = (Institution)(session.getAttribute("institution"));
            }
            if (user!=null){
                type="学员";
                name=(user.getName()!=null) ? user.getName() : (type+StringUtil.getId(user.getId()));
                headPath = user.getHeadPath();
        %>
        var loginPart = $("div.navbar-text.navbar-right");
        loginPart.addClass("logged");
        loginPart.empty();
        var user = $("<span class='type'><%=type%></span><a href='center.jsp'><img src='${basePath}<%=headPath==null?"/head/default.jpg":headPath%>' class='img-circle head' alt='head'></a><span><%=name%><span>");

        loginPart.addClass("dropdown");
        user.addClass("dropdown-toggle");
        user.attr({"data-toggle": "dropdown"});

        var list = $("<ul class='dropdown-menu'></ul>");
        var li_1 = $("<li><a onclick='to_userCenter(0)'>个人中心</a></li>");
        var li_2 = $("<li><a onclick='to_userCenter(1)'>订单管理</a></li>");
        var li_3 = $("<li><a onclick='to_userCenter(2)'>信息管理</a></li>");
        var li_4 = $("<li><a onclick='to_userCenter(3)'>安全中心</a></li>");
        var li_5 = $("<li><a onclick='logout()'>登&nbsp;&nbsp;出</a></li>");

        list.append(li_1, li_2, li_3,li_4,li_5);
        loginPart.append(user, list);

        <% }else if (institution!=null) {
                type="机构";
                name=institution.getName()!=null?institution.getName():type+StringUtil.getId(institution.getId());
                headPath = institution.getHeadPath();
        %>
        var loginPart = $("div.navbar-text.navbar-right");
        loginPart.empty();
        loginPart.addClass("logged");
        var user = $("<span class='type'><%=type%></span><a href='center.jsp'><img src='${basePath}<%=headPath==null?"/head/default.jpg":headPath%>' class='img-circle head' alt='head'></a><span><%=name%><span>");

        loginPart.addClass("dropdown");
        user.addClass("dropdown-toggle");
        user.attr({"data-toggle": "dropdown"});

        var list = $("<ul class='dropdown-menu'></ul>");
        var li_1 = $("<li><a onclick='to_institutionCenter(0)'>机构中心</a></li>");
        var li_2 = $("<li><a onclick='to_institutionCenter(1)'>课程管理</a></li>")
        var li_3 = $("<li><a onclick='to_institutionCenter.jsp(2)'>信息管理</a></li>");
        var li_4 = $("<li><a onclick='to_institutionCenter.jsp(3)'>安全中心</a></li>");
        var li_5 = $("<li><a onclick='logout()'>登&nbsp;&nbsp;&nbsp;&nbsp;出</a></li>");

        list.append(li_1, li_2, li_3,li_4,li_5);
        loginPart.append(user, list);
        <%}
        %>

    }


    function to_userCenter(index) {
        $.ajax({
            url: '${basePath}/userCenter',
            type: "POST",
            data: {index: index},
            dataType: "json",
            success: function (data) {
                if (data.state = "SUCCESS") {
                    window.location.href = "/userCenter.jsp";
                } else {
                    swal({
                        title: "跳转失败",
                        text: data.obj,
                        type: "warning",
                        timer: 2000
                    }, function () {
                        window.location.href = "/login.jsp";
                    });
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                swal("请求失败", "返回码：" + XMLHttpRequest.status + "\n状态码：" + XMLHttpRequest.readyState + +"\n" + "状态信息：" + textStatus);
            }
        });

    }

    function to_institutionCenter(index) {
        $.ajax({
            url: '${basePath}/institutionCenter',
            type: "POST",
            data: {index: index},
            dataType: "json",
            success: function (data) {
                if (data.state = "SUCCESS") {
                    window.location.href = "/institutionCenter.jsp";
                } else {
                    swal({
                        title: "跳转失败",
                        text: data.obj,
                        type: "warning",
                        timer: 2000
                    }, function () {
                        window.location.href = "/login.jsp";
                    });
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                swal("请求失败", "返回码：" + XMLHttpRequest.status + "\n状态码：" + XMLHttpRequest.readyState + +"\n" + "状态信息：" + textStatus);
            }
        });
    }

    function logout() {
        $.ajax({
            url:"${basePath}/logout",
            success:function () {
                window.location.href = "/login.jsp";
            }
        });
    }
</script>