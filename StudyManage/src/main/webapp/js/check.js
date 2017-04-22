/**
 * Created by mengf on 2017/3/6 0006.
 */
$(function () {
        checkEmpty();
        checkPassword();
        checkConfirmPassword();
        checkMail();
        checkTel();
});

function checkEmpty() {
    //当失去焦点的时候
    $(':input').not("button").not(".not-check").on("focusout",function (){checkEmpty_inside($(this))});
}
function checkPassword() {
    $("div.tab-content>div.active .password").not(".not-check").on("focusout",function (){checkPassword_inside($(this))});
}
function checkConfirmPassword() {
    $("div.tab-content>div.active .confirm_password").not(".not-check").on("focusout",function () {checkConfirmPassword_inside($(this))});
}


function checkTel() {
    $(".tel").not(".not-check").on("focusout",function (){checkTel_inside($(this))});
}


function checkMail() {

    $('input[type="email"]').not(".not-check").on("focusout",function(){checkMail_inside($(this))});
}



function getWarn(info) {
    var warn = $("<div class='alert alert-danger'></div>");
    warn.text(info);
    warn.addClass("warn");
    return warn;

}

function checkRegisterSubmit() {
    if($("div.tab-content>div.active .warn").length>0|| $("div.tab-content>div.active .error").length>0){
        swal("注册失败", "信息内容不符合要求，请按照提示进行修改注册信息");
        return false;
    }else{
        checkEmpty_inside($('div.tab-content>div.active :input').not("button"));
        checkMail_inside($('div.tab-content>div.active input[type="email"]').not(".not-check"));
        checkPassword_inside( $("div.tab-content>div.active .password").not(".not-check"));
        checkConfirmPassword_inside( $("div.tab-content>div.active .confirm_password").not(".not-check"));
        checkTel_inside( $("div.tab-content>div.active .tel").not(".not-check"));


        if($("div.tab-content>div.active .warn").length>0|| $("div.tab-content>div.active .error").length>0){
            swal("注册失败", "信息内容不符合要求，请按照提示进行修改注册信息");
            return false;
        }
    }

    return true;

}

function checkLoginSubmit() {
    if($("div.tab-content>div.active .warn").length>0|| $("div.tab-content>div.active .error").length>0){
        swal("登录失败", "信息填写不能为空");
        return false;
    }else{
        checkEmpty_inside($('div.tab-content>div.active :input').not("button"));

        if($("div.tab-content>div.active .warn").length>0|| $("div.tab-content>div.active .error").length>0){
            swal("登录失败", "信息填写不能为空");
            return false;
        }
    }

    return true;

}




function checkEmpty_inside(input_obj) {
    var title = input_obj.attr("placeholder");

    //如果为空的话 就是提示不能为空 并调用bootstarp的tooltip方法
    if (input_obj.val().trim()==''){
        input_obj.addClass("error").attr({
            'data-toggle':'tooltip',
            'title':title+"不能为空"
        }).tooltip();
        input_obj.parent("div").prev("label").addClass("error");
        //**添加警告信息**//
        if(input_obj.parent("div").parent("div.form-group").next("div.alert").length>0){
            input_obj.parent("div").parent("div.form-group").next("div.alert").text("不能为空！");
        }
        else{
            var warn = getWarn(title+"不能为空！");
            input_obj.parent("div").parent("div.form-group").after(warn);
        }
    }else {
        //如果不是，就取消tooltip 添加destroy
        input_obj.removeClass("error").tooltip('destroy');
        input_obj.parent("div").prev("label").removeClass("error");
        //删除警告信息
        input_obj.parent("div").parent("div.form-group").next("div.alert").remove();
    }
}

function checkPassword_inside(input_obj) {
    if(input_obj.val().indexOf(" ")>=0||input_obj.val().indexOf("\t")>=0||input_obj.val().trim().length<6){
        input_obj.addClass("error").attr({
            'data-toggle':'tooltip',
            'title':"密码长度小于6,或者包含空格或制表符"
        }).tooltip();
        input_obj.parent("div").prev("label").addClass("error");
        //**添加警告信息**//
        //jQuery判断结点是不是存在使用length属性
        if(input_obj.parent("div").parent("div.form-group").next("div.alert").length>0){
            input_obj.parent("div").parent("div.form-group").next("div.alert").text("密码长度小于6,或者包含空格或制表符");
        }
        else {
            var warn = getWarn("密码长度小于6,或者包含空格或制表符");
            input_obj.parent("div").parent("div.form-group").after(warn);
        }
    }else {
        //如果不是，就取消tooltip 添加destroy
        input_obj.removeClass("error").tooltip('destroy');
        input_obj.parent("div").prev("label").removeClass("error");
        //删除警告信息
        input_obj.parent("div").parent("div.form-group").next("div.alert").remove();
    }
}

function checkConfirmPassword_inside(input_obj) {
    var currentPassword = $("div.tab-content>div.active .password");
    if(input_obj.val().trim()!=currentPassword.val().trim()){
        input_obj.addClass("error").attr({
            'data-toggle':'tooltip',
            'title':"密码不一致"
        }).tooltip();
        input_obj.parent("div").prev("label").addClass("error");
        //**添加警告信息**//
        //jQuery判断结点是不是存在使用length属性
        if(input_obj.parent("div").parent("div.form-group").next("div.alert").length>0){
            input_obj.parent("div").parent("div.form-group").next("div.alert").text("密码不一致");
        }
        else {
            var warn = getWarn("密码不一致");
            input_obj.parent("div").parent("div.form-group").after(warn);
        }
    }else {
        //如果不是，就取消tooltip 添加destroy
        input_obj.removeClass("error").tooltip('destroy');
        input_obj.parent("div").prev("label").removeClass("error");
        //删除警告信息
        input_obj.parent("div").parent("div.form-group").next("div.alert").remove();
    }
}
function checkMail_inside(input_obj) {
    var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    var content = input_obj.val().trim();
    if (!re.test(content)){
        input_obj.addClass('error').attr({
            'data-toggle': 'tooltip',
            'title': '邮箱格式不合法'
        }).tooltip();
        input_obj.parent("div").prev("label").addClass("error");
        //**添加警告信息**//
        if( input_obj.parent("div").parent("div.form-group").next("div.alert").length>0){
            input_obj.parent("div").parent("div.form-group").next("div.alert").text("邮箱格式不合法");
        }
        else{
            var warn = getWarn("邮箱格式不合法");
            input_obj.parent("div").parent("div.form-group").after(warn);
        }
    }else {
        input_obj.removeClass('error').tooltip('destroy');
        input_obj.parent("div").prev("label").removeClass("error");
        //删除警告信息
        input_obj.parent("div").parent("div.form-group").next("div.alert").remove();
    }
}
function checkTel_inside(input_obj) {
    var regex = /^1[3|4|5|8][0-9]\d{4,8}$/;

    var content = input_obj.val().trim();
    if (!regex.test(content)){
        input_obj.addClass('error').attr({
            'data-toggle': 'tooltip',
            'title': '手机号格式不合法'
        }).tooltip();
        input_obj.parent("div").prev("label").addClass("error");
        //**添加警告信息**//
        if( input_obj.parent("div").parent("div.form-group").next("div.alert").length>0){
            input_obj.parent("div").parent("div.form-group").next("div.alert").text("手机号格式不合法");
        }
        else{
            var warn = getWarn("手机号格式不合法");
            input_obj.parent("div").parent("div.form-group").after(warn);
        }
    }else {
        input_obj.removeClass('error').tooltip('destroy');
        input_obj.parent("div").prev("label").removeClass("error");
        //删除警告信息
        input_obj.parent("div").parent("div.form-group").next("div.alert").remove();
    }
}



function check_institution_logged() {
    var user = "${institution}";
    if (!user||user==""){
        swal({
            title:"抱歉，未检测到用户登录",
            text: "请重新登录",
            type:"warning",
            timer:2000
        },function () {
            window.location.href="/login.jsp";
        });
    }
}

function checkImg(radio,source) {
    var img = null;
    img = $("<img>");
    img.src = source;
    console.log(source);
    console.log(radio);

    var imgwidth = img.width();
    var imgheight = img.height();
    console.log(imgwidth);
    console.log(imgheight);
    if((imgwidth/imgheight)!=radio){
        swal("抱歉，您传入的图片长宽比不符合要求");
        return false;
    }

    else return true;
}