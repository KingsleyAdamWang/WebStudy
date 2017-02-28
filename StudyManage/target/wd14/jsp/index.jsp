<%--
  Created by IntelliJ IDEA.
  User: mengf
  Date: 2017/2/16 0016
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<%@include file="common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <title>首页</title>
    <link rel="stylesheet" href="${basePath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/header.css">
    <link rel="stylesheet" href="${basePath}/css/footer.css">
</head>
<body>


<%--内容--%>
<div id="main">
    <%@include file="common/header.jsp" %>
    <%--banner start--%>
    <div id="Carousel" class="carousel slide">
        <ol class="carousel-indicators ">
            <li data-target="#Carousel" data-slide-to="0" class="active"></li>
            <li data-target="#Carousel" data-slide-to="1"></li>
            <li data-target="#Carousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="item active">
                <img src="${basePath}/img/banner1.jpg" alt="第一张">
            </div>
            <div class="item">
                <img src="${basePath}/img/banner2.jpg" alt="第二张">
            </div>
            <div class="item">
                <img src="${basePath}/img/banner3.jpg" alt="第三张">
            </div>
        </div>

        <a href="#Carousel" data-slide="prev" class="carousel-control left">
            <!--&lsaquo;-->
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a href="#Carousel" data-slide="next" class="carousel-control right">
            <!--&rsaquo;-->
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    <%--banner end--%>



</div>

<%--内容--%>
<%@include file="common/footer.jsp" %>
<script type="text/javascript" src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}/js/header-responsive.js"></script>
<script type="text/javascript" src="${basePath}/js/footer-responsive.js"></script>

<script type="text/javascript">
    $("#Carousel").carousel({
            interval:2000
        }
    );
</script>
</body>
</html>
