/**
 * Created by mengf on 2017/2/27 0027.
 */
function responsive_footer() {

    //头部和下面的内容分离
    var footer_height = $(".footer").height();
    // var body_height = $("body").height();
    $(".main").css("padding-bottom",(footer_height+10)+"px");
}

responsive_footer();
$(window).resize(responsive_footer);