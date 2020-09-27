// 세부메뉴 눌렀을 시 색 변화
var menu_color = $(".sublist > li > a");
menu_color.click(function() {
    menu_color.css("color", "#999");
    $(this).css("color", "#08718E");
});


// 메인메뉴 클릭시 메뉴창 접히기
$(".sublist").hide();
$(".mainmenu").click(function(){
	var menudisplay = $(this).parent().find(".sublist").css("display");
	if(menudisplay == "none"){
		$(this).css("color","#08718E");
		$(this).parent().find(".sublist").show();
		$(this).parent().css("background-color", "#fafafa");
	} else {
		$(this).parent().find(".sublist").hide();
		$(this).css("color","#999");
	}
})


$(function () {
    $("#date1").datepicker({
        dateFormat: "yy-mm-dd",
        showOn: "both",
        buttonImage: "../../images/icons8-calendar-28.png",
        buttonImageOnly: true,
        buttonText: "Select date",
    });

    $("#date2").datepicker({
        dateFormat: "yy-mm-dd",
        showOn: "both",
        buttonImage: "../../images/icons8-calendar-28.png",
        buttonImageOnly: true,
        buttonText: "Select date",
    });
});

