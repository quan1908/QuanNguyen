$(document).ready(function(){
    var headclix = 0, eyeclix = 0, noseclix = 0, mouthclix = 0;

    lightning_one();
    lightning_two();
    lightning_three();

    $("#two").click(function(){
    if(headclix < 9){
        $("#two").animate({left:"-=367px"},500);
        headclix+=1;
    }
    else{
        $("#two").animate({left:"0px"},500);
        headclix = 0;
    }
});
    $("#three").click(function(){
        if(eyeclix < 9){
            $("#three").animate({left:"-=367px"},500);
            eyeclix+=1;
        }
        else{
            $("#three").animate({left:"0px"},500);
            eyeclix = 0;
        }
    });
    $("#four").click(function(){
        if(noseclix < 9){
            $("#four").animate({left:"-=367px"},500);
            noseclix+=1;
        }
        else{
            $("#four").animate({left:"0px"},500);
            noseclix = 0;
        }
    });
    $("#five").click(function(){
        if(mouthclix < 9){
            $("#five").animate({left:"-=367px"},500);
            mouthclix+=1;
        }
        else{
            $("#five").animate({left:"0px"},500);
            mouthclix = 0;
        }
    });
});

function lightning_one(){
    $("#container #lightning1").fadeIn(250).fadeOut(250);
    setTimeout("lightning_one()",2000);
};
function lightning_two(){
    $("#container #lightning2").fadeIn(250).fadeOut(250);
    setTimeout("lightning_two()",3000);
};
function lightning_three(){
    $("#container #lightning3").fadeIn(250).fadeOut(250);
    setTimeout("lightning_three()",4000);
};



