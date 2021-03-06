<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png"/>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../assets/js/font-awesome-3.2.1/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="../assets/js/swiper-3.4.1/css/swiper.min.css"/>
    <link rel="stylesheet" href="../assets/css/animate.css"/>
    <link rel="stylesheet" href="../assets/css/styles/second.css"/>
    <title>上海永达公益基金会</title>
    <script src="../jquery.min.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="../Partial/header.jsp"/>
<div class="top_erm_01">
    <div>
        <img src="../assets/img/wx_yd.jpg" />
        <p>永达公益基金会</p>
    </div>
    <div>
        <img src="../assets/img/wx_jd.jpg" />
        <p>聚德微信</p>
    </div>
</div>


<div id="top" class="row ab_banner">
    <div class="up_row hidden">
        <h3>YONGDAGONGYI</h3>
        <h3>YONGDAGONGYI</h3>
        <h4>永达公益&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人人公益</h4>
    </div>
</div>
<div class="ab_content">
    <div class="container ab_container">
        <div class="row ab_routemap">

        </div>
        <div class="row">
            <jsp:include page="../Partial/leftmenu.jsp"/>
            <div class="col-md-9 ab_right">
                 
                 
            </div>
        </div>
    </div>
</div>
<jsp:include page="../Partial/footer.jsp"/>

<script src="../assets/bootstrap/js/bootstrap.js"></script>
<script src="../assets/js/imagesLoaded-4.1.2/js/imagesloaded.pkgd.min.js"></script>
<script src="../assets/js/swiper-3.4.1/js/swiper.min.js"></script>
<script src="../assets/js/velocity/js/velocity.ui-5.0.4.min.js"></script>
<script src="../assets/js/velocity/js/velocity-1.2.3.min.js"></script>
<script src="../assets/js/modernizr-2.6.1/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script src="../assets/js/wow.min.js"></script>
<script src="../assets/js/custom/main.js"></script>
<script src="../assets/js/custom/common.js"></script>

<script type="text/javascript">
    $(function(){
        //初始化菜单
        //父栏目id，当前栏目id,活动id，类型 list 还是 details
        //parent_id,menu_id,article_id
        new WOW().init();

        $.ajax({
            url: "/platform/interface/info/getArticle",
            type: 'post',
            dataType: 'json',
            data: {
                id:'${param.article_id}',
                channel_id:'${param.menu_id}'
            },
            success: function(data){
                if(data.data != null){
                    $(".ab_right").empty();

                    $(".ab_right").append(
                        '<div class="title_c">'+
                        '<span>'+gb_menu_name+'</span>'+
                        '<b></b>'+
                        '</div>'+
                        '<h2>'+data.data.title+'</h2>'+
                        '<p>'+'</p>'
                        +data.data.content

                    );
                }

                dispFlowAnimate();
            }
        });
    })


    function dispFlowAnimate(){
        var wow = new WOW(
            {
                animateClass: 'animated',
                offset:       1000,
                callback:     function(box) {
                    //wow.init();
                }
            }
        );
        wow.init();
        //成为捐赠人
        if(gb_menu_id == "4e91da05626c4bd582d96cf65b094270"){
            $(".ab_right img").addClass("wow slideInRight").css("margin-left","100px");
        }
    }
</script>
</body>
</html>