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
                <div class="gyxm_c">
                    <div class="title_c">
                        <span></span>
                        <a href="#"></a>
                        <b></b>
                    </div>
                    <ul>
                    </ul>

                    <div class="cswy_paging swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
                        <span class="swiper-pagination-bullet swiper-pagination-bullet-active">1</span>
                        <span class="swiper-pagination-bullet">2</span>
                    </div>
                </div>
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
<script src="../assets/js/custom/main.js"></script>
<script src="../assets/js/custom/common.js"></script>

<script type="text/javascript">
    $(function(){
        getPage(1);

        $(document).on("click",".cswy_paging .swiper-pagination-bullet",function(e){
            e.preventDefault();
            var pageno = $(this).data("pageno");
            getPage(pageno)
        });
    })

    function getPage(page_no) {
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'${param.menu_id}',
                page_no:page_no,
                page_size:10
            },
            success: function(data){
                if(data.data.list != null){
                    $(".gyxm_c ul").empty();
                    $(data.data.list).each(function(i,event){
                        $(".gyxm_c ul").append('<li><a href="'+event.cms_params+'" target="_blank" ><span>'+event.title+'</span><i>'+event.opat+'</i></a></li>');
                    });

                    var max_page = data.data.maxPage;
                    $(".cswy_paging").empty();
                    if(max_page != 0 ){
                        for(var i =1;i <= max_page ;i++) {
                            if(i==page_no) {
                                $(".cswy_paging").append('<span class="swiper-pagination-bullet swiper-pagination-bullet-active" data-pageno='+i+'>'+i+'</span>');
                            }else{
                                $(".cswy_paging").append('<span class="swiper-pagination-bullet" data-pageno='+i+'>'+i+'</span>');
                            }
                        }
                    }
                }
            }
        });
    }
</script>

</body>
</html>