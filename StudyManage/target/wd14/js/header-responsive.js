/**
 * Created by mengf on 2017/2/18 0018.
 */

function responsive_navbar() {
    var loginPart = $("div.navbar-text.navbar-right");

    if ($(window).width() <= 768) {
        loginPart.css("float", "right");
        loginPart.css("marginLeft","10px");
        loginPart.css("marginRight","40px");
        $("a.navbar-brand").after(loginPart);
    } else {
        loginPart.css("marginLeft","20px");
        loginPart.css("marginRight","0px");
        $("#collapse").after(loginPart);

    }

    //头部和下面的内容分离
    var navbar_height = $(".navbar.navbar-default.navbar-fixed-top").height();
    $(".main").css("marginTop",navbar_height+"px");
}

responsive_navbar();
$(window).resize(responsive_navbar);

function login_check() {
    if(true){
        var loginPart = $("div.navbar-text.navbar-right");
        loginPart.empty();
        var user = $("<a href='center.jsp'><img class='img-circle' alt='head'></a>");

        loginPart.addClass("dropdown");
        user.addClass("dropdown-toggle");
        user.attr({"data-toggle":"dropdown"});

        var list = $("<ul class='dropdown-menu'></ul>");
        var li_1 = $("<li><a href='#'>个人中心</a></li>");
        var li_2 = $("<li><a href='#'>安全中心</a></li>");
        var li_3 = $("<li><a href='#'>balabala</a></li>");
        list.append(li_1,li_2,li_3);
        loginPart.append(user,list);


    }
}
//加载完文档检测登录状态
$(function () {
   login_check();
});

