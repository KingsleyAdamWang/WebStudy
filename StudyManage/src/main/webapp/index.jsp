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
    <link rel="stylesheet" href="${basePath}/css/index.css">
    <link rel="stylesheet" href="${basePath}/css/sweetalert.css">
</head>
<body>


<%--内容--%>
<div class="main">
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

    <%--内容介绍--%>

    <div class="tab1">
        <div class="container">
            <h2 class="tab-h2">「为什么选择蓝鲸网培训」</h2>
            <p class="tab-p">强大的师资力量，完美的实战型管理课程，让您的企业实现质的腾飞！</p>


            <div class="row">

                <div class="col-md-6 col">
                    <div class="media">
                        <div class="media-left">
                            <img src="${basePath}/img/tab1-1.png" alt="" class="media-object">
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading">课程内容</h4>
                            <p class="text-muted">其他：只是注重理论教导，并未深入进行实战，面面俱到，难以把握重点！</p>
                            <p>我们：企业级培训机构，实战价值高，重点难点系统化讲解！</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col">
                    <div class="media">
                        <div class="media-left">
                            <img src="${basePath}/img/tab1-2.png" alt="" class="media-object">
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading">师资力量</h4>
                            <p class="text-muted">其他：非知名培训机构，鱼目混珠，鱼龙混杂！</p>
                            <p>我们：培训机构经过我们精挑细选，各大机构实名注册，为您提供最高质量的服务！</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col">
                    <div class="media">
                        <div class="media-left">
                            <img src="${basePath}/img/tab1-3.png" alt="" class="media-object">
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading">课程安排</h4>
                            <p class="text-muted">其他：无法保证上课效率、没有时间表，任务无法完成！</p>
                            <p>我们：保证按时间表的上课、效率高、当天的任务当天完成！</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col">
                    <div class="media">
                        <div class="media-left">
                            <img src="${basePath}/img/tab1-4.png" alt="" class="media-object">
                        </div>

                        <div class="media-body">
                            <h4 class="media-heading">服务团队</h4>
                            <p class="text-muted">其他：社会招聘的、服务水平参差不齐的普通员工！</p>
                            <p>我们：内部培养、经受过良好高端服务培训的高标准员工！</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="tab2">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 tab-img">
                    <img src="${basePath}/img/tab-1.png" class="auto img-responsive center-block" alt="">
                </div>
                <div class="text col-md-6 col-sm-6 tab-text">
                    <h3>强大的学习体系</h3>
                    <p>经过管理学大师层层把关、让您的学习突飞猛进。</p>
                    <p>强大的师资力量，完美的实战型管理课程，让您的企业实现质的腾飞！</p>
                </div>
            </div>
        </div>
    </div>

    <div class="tab3">
        <div class="container">
            <div class="row">

                <div class="col-md-6 col-sm-6">
                    <img src="${basePath}/img/tab-2.png" class="auto img-responsive center-block" alt="">
                </div>
                <div class="text col-md-6 col-sm-6">
                    <h3>完美的管理方式</h3>
                    <p>最新的管理培训方案，让您的能力赶超同行。</p>
                    <p>强大的师资力量，完美的实战型管理课程，让您的企业实现质的腾飞！</p>
                </div>

            </div>
        </div>

        <div class="tab2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6 tab-img">
                        <img src="${basePath}/img/tab-3.png" class="auto img-responsive center-block" alt="">
                    </div>
                    <div class="text col-md-6 col-sm-6 tab-text">
                        <h3>强大的学习体系</h3>
                        <p>经过管理学大师层层把关、让您的学习突飞猛进。</p>
                        <p>强大的师资力量，完美的实战型管理课程，让您的企业实现质的腾飞！</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="tab3">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-6">
                        <img src="${basePath}/img/tab-4.png" class="auto img-responsive center-block" alt="">
                    </div>
                    <div class="text col-md-6 col-sm-6">
                        <h3>完美的管理方式</h3>
                        <p>最新的管理培训方案，让您的能力赶超同行。</p>
                        <p>强大的师资力量，完美的实战型管理课程，让您的企业实现质的腾飞！</p>
                    </div>
                </div>
            </div>


            <div class="tab2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 tab-img">
                            <img src="${basePath}/img/tab-5.png" class="auto img-responsive center-block" alt="">
                        </div>
                        <div class="text col-md-6 col-sm-6 tab-text">
                            <h3>强大的学习体系</h3>
                            <p>经过管理学大师层层把关、让您的学习突飞猛进。</p>
                            <p>强大的师资力量，完美的实战型管理课程，让您的企业实现质的腾飞！</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--内容介绍end--%>

    </div>

    <%--内容--%>
    <%@include file="common/footer.jsp" %>
    <script type="text/javascript" src="${basePath}/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/header-responsive.js"></script>
    <script type="text/javascript" src="${basePath}/js/footer-responsive.js"></script>
    <script type="text/javascript" src="${basePath}/js/sweetalert.min.js"></script>

    <script type="text/javascript">
        $("#Carousel").carousel({
                interval: 2000
            }
        );
    </script>
</body>
</html>
