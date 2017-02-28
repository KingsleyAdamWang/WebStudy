<%--
  Created by IntelliJ IDEA.
  User: mengf
  Date: 2017/2/28 0028
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<html>
<head>
    <title>关于</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="${basePath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${basePath}/css/common.css">
    <link rel="stylesheet" href="${basePath}/css/header.css">
    <link rel="stylesheet" href="${basePath}/css/footer.css">
    <link rel="stylesheet" href="${basePath}/css/index.css">

</head>
<body>
<%@include file="common/header.jsp" %>

<%--内容--%>
<div class="main">
    <%@include file="common/footer.jsp" %>

</div>
<%--内容--%>
<script type="text/javascript" src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}/js/header-responsive.js"></script>
<script type="text/javascript" src="${basePath}/js/footer-responsive.js"></script>
<script type="text/javascript">
    $("div.navbar ul a").removeClass("active");
    $("div.navbar ul a#about").addClass("active");
</script>
</body>
</html>
