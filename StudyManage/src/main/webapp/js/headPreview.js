/**
 * Created by mengf on 2017/3/25 0025.
 */
function refreshPreview() {
    var img = $(".head-preview>img");
    var inputFile = $(".head-inputfile");
    if (checkImg(1,inputFile.value)){
        //如果长宽比合适的话
        img.src = inputFile.value;
    }else {
        img.value="";
    }
}