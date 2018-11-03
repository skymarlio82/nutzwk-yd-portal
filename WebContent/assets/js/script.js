$(function () {

    new WOW().init();

    $(".join").on("click", function () {

        if ($(this).attr("disabled") == "disabled") {
            window.location = baseUrl + "/public/wx/wechat/68a31121968a400ab8d46f57323bfcb8/oauth?goto_url=/public/wx/wechat/act/index"
            return;
        }
        $(this).attr("disabled", "disabled");

        $(".mui-popup").fadeIn();
        $(".mui-popup-backdrop").fadeIn();
    });
    $(".cancle").on("click", function () {
        $(".mui-popup").fadeOut();
        $(".mui-popup-backdrop").fadeOut();
    });

    $(".bargain ").on("click", function () {
        if ($(this).attr("disabled") == "disabled")
            return;
        $(this).attr("disabled", "disabled");
        $.ajax({
            url: baseUrl + "public/wx/wechat/bargainPrice?id=" + GetQueryString("id"),
            type: "post",
            success: function (data) {
                if (data.code == 0) {
                    var nickname = data.data.nickname;
                    var headerImgUrl = data.data.headimgurl;
                    var price = data.data.barginPrice;
                    var currentPrice = data.data.currentPrice;
                    mui.toast('您已成功帮您好友砍了' + price + "元");
                    $("#noInfo").hide();
                    $("#bargainUserPrice").text(currentPrice);
                    $("#bargainList").append('<tr class="wow fadeInUp"><td><img src="' + headerImgUrl + '"></td>' +
                        '<td style="text-align: left">' + nickname + '</td>' +
                        '<td>已砍￥' + price + '</td></tr>')
                }
                else if (data.code == 1) {
                    mui.toast(data.msg);
                } else {
                    mui.toast("系统错误请联系管理！")
                }

            },
            error: function () {
                alert("网络连接失败请重试");
                $(this).removeAttr("disabled")
            }
        })
    });

    $(".mui-popup-button-bold").on("click", function () {

        var phone = $("#phone").val();
        var name = $("#realyname").val();

        var re = /^1\d{10}$/
        if (!re.test(phone)) {
            alert("请输入正确的手机号码");
            return;
        }

        if ($(".mui-popup-button-bold").attr("disabled") == "disabled")
            return;
        $(".mui-popup-button-bold").attr("disabled", "disabled");

        $(".mui-popup-button-bold").text("提交中...");

        $.ajax({
                url: baseUrl + "public/wx/wechat/bindInfo?name=" + name + "&phone=" + phone,
                type: "post",
                success: function (data) {
                    $(".mui-popup-button-bold").text("确定");
                    $(".mui-popup-button-bold").removeAttr("disabled");
                    if (data.code == 0)
                        window.location = baseUrl + "/public/wx/wechat/act/bargain?id=" + data.data;
                    else {
                        mui.toast("您已参与砍价活动！")
                    }

                },
                error: function () {
                    $(".mui-popup-button-bold").text("确定");
                    $(".mui-popup-button-bold").removeAttr("disabled");
                    alert("网络连接失败请重试");
                }
            }
        )
    })


});

function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)return unescape(r[2]);
    return null;
}
