<%--
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
               href="${basePath}/jsp/index.jsp">
                <img src="${basePath}/img/logo.png" alt="ICON">
            </a>


            <button class="navbar-toggle" data-toggle="collapse" data-target="#collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <button class="navbar-toggle" data-toggle="collapse" data-target="#navbar-search-form">
                <span class="glyphicon glyphicon-search"></span>
            </button>

        </div>


        <div class="container-fluid">

            <ul id="collapse" class="nav navbar-nav collapse navbar-collapse">
                <li><a id="index" class="active" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;首页</a></li>
                <li><a href="#"><span></span>&nbsp;&nbsp;选项</a></li>
                <li><a href="#"><span></span>&nbsp;&nbsp;选项</a></li>
                <li><a href="#"><span></span>&nbsp;&nbsp;选项</a></li>
                <li><a href="#"><span></span>&nbsp;&nbsp;选项</a></li>
                <li><a id="about" href="about.jsp"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;&nbsp;关于</a></li>
            </ul>

            <span class="navbar-text navbar-right">
                <span><a href="${basePath}/jsp/login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></span>
                <span>|</span>
                <span><a href="${basePath}/jsp/register.jsp"><span class="glyphicon glyphicon-user"></span> 注册</a></span>
            </span>

            <div id="navbar-search-form" class="navbar-form nav-justified navbar-right collapse navbar-collapse">
                <div class="input-group">
                    <div class="input-group-btn">
                        <select name="type" class="form-control">
                            <option value="1">内网</option>
                            <option value="2">全网</option>
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
