/**
 * Created by mengf on 2017/2/18 0018.
 */

function responsive_navbar() {
    var loginPart = $("span.navbar-text.navbar-right");

    if ($(window).width() <= 768) {
        loginPart.css("float", "right");
        $("a.navbar-brand").after(loginPart);
    } else {
        $("#collapse").after(loginPart);
    }

    //头部和下面的内容分离
    var navbar_height = $(".navbar.navbar-default.navbar-fixed-top").height();
    $(".main").css("marginTop",navbar_height+"px");
}

responsive_navbar();
$(window).resize(responsive_navbar);

