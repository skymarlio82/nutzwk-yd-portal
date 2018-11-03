$(function() {

    $(".ab_left li.LiActive").click(function () {
        $(".ab_left li[class!='LiActive']").toggle("hidden");
    });

});
