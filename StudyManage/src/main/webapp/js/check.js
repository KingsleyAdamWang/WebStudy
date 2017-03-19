/**
 * Created by mengf on 2017/3/6 0006.
 */
$(function () {
        checkEmpty();
        checkPassword();
        checkMail();
});

function checkEmpty() {
    //当失去焦点的时候
    $(':input').not("button").on("focusout",function () {
        var title = $(this).attr("placeholder");

        //如果为空的话 就是提示不能为空 并调用bootstarp的tooltip方法
        if ($(this).val().trim()==''){
            $(this).addClass("error").attr({
                'data-toggle':'tooltip',
                'title':title+"不能为空"
            }).tooltip();
            $(this).parent("div").prev("label").addClass("error");
        }else {
            //如果不是，就取消tooltip 添加destroy
            $(this).removeClass("error").tooltip('destroy');
            $(this).parent("div").prev("label").removeClass("error");
        }
})
}

function checkPassword() {
    $("#confirm_password").on("focusout",function () {
        if($(this).val().trim()!=$("#password")){
            $(this).addClass("error").attr({
                'data-toggle':'tooltip',
                'title':"密码不一致"
            }).tooltip();
            $(this).parent("div").prev("label").addClass("error");
        }else {
            //如果不是，就取消tooltip 添加destroy
            $(this).removeClass("error").tooltip('destroy');
            $(this).parent("div").prev("label").removeClass("error");
        }
    })
}

function checkTel() {

}


function checkMail() {
    var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    $('input[type="email"]').on("focusout",function () {
        var content = $(this).val().trim();
        if (!re.test(content)){
            $(this).addClass('error').attr({
                'data-toggle': 'tooltip',
                'title': '邮箱格式不合法'
            }).tooltip();
            $(this).parent("div").prev("label").addClass("error");
        }else {
            $(this).removeClass('error').tooltip('destroy');
            $(this).parent("div").prev("label").removeClass("error");
        }
    });
}