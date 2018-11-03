$(function() {

	var x = 115, y = 25;
	$("a.mytooltip").mouseover(function (e) {
		this.myTitle = this.title;
		this.title = "";
		var tooltip = "<div id='tooltip_temp'>" + this.myTitle + "</div>";
		$("body").append(tooltip);
		$("#tooltip_temp").css({ "left" : (e.pageX - x) + "px", "top" : (e.pageY + y) + "px" }).show("fast");
	}).mouseout(function () {
		this.title = this.myTitle;
		$("#tooltip_temp").remove();
	}).mousemove(function (e) {
		$("#tooltip_temp").css({ "left" : (e.pageX - x) + "px", "top" : (e.pageY + y) + "px" });
	});

    $(".ab_left li.LiActive a").removeAttr("href").on("click",function () {
        $(".ab_left li[class!='LiActive']").toggle("hidden");
        return false;
    });


    //切换banner背景
    changeBannerImg();
});


function changeBannerImg()
{
    var bgimg = "";
    switch (gb_parent_id)
    {
        //永达公益
        case "83d4920b596b4298b5f5a0d8de567889":
            bgimg = "aboutus_banner.jpg";
            break;
        //聚德慈善
        case "4e1fac4c7758443299e035a96aa7bdb3":
            bgimg = "jude_banner.jpg";
            break;
        //社会影响
        case "25585f1b1c1c4072870984b24b0e2ab3":
            bgimg = "shehui_banner.jpg";
            break;
        //信息公开
        case "a7a1c83aa28f4d07b2b9789c8ceef738":
            bgimg = "xinxi_banner.jpg";
            break;
        //加入我们
        case "e9ab3f8cdc354e81a527b4f6948efa62":
            bgimg = "jiaru_banner.jpg";
            break;
        default:
            bgimg = "aboutus_banner.jpg";
            break;
    }
    bgimg = "url(../assets/img/aboutus/" + bgimg+")";
    $(".ab_banner").css("background-image", bgimg);
}