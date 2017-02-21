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
}

responsive_navbar();
$(window).resize(responsive_navbar);