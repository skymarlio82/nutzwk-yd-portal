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
    </div>
</div>
<div class="ab_content">
    <div class="container ab_container">
        <div class="row ab_routemap">
        </div>
        <div class="row">
            <jsp:include page="../Partial/leftmenu.jsp"/>

            <div class="col-md-9 ab_right">
                <div class="title_c">
                    <span></span>
                    <a href="#"></a>
                    <b></b>
                </div>
                <div class="report_c">

               </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../Partial/footer.jsp"/>

<!-- loading
<div class="loading" style="display:block;">
    <div class="load_img">
        <div id="loading-center-absolute">
            <div id="object_one" class="object"></div>
            <div id="object_two" class="object" style="left:20px;"></div>
            <div id="object_three" class="object" style="left:40px;"></div>
            <div id="object_four" class="object" style="left:60px;"></div>
            <div id="object_five" class="object" style="left:80px;"></div>
        </div>
    </div>
</div>
-->

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
        //初始化菜单
        //父栏目id，当前栏目id,活动id，类型 list 还是 details
        //parent_id,menu_id,article_id

        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id: '${param.menu_id}',
                page_no:1,
                page_size:100
            },
            success: function(data){
                if(data.data.list != null){
                    $(".report_c").empty();
                    $(data.data.list).each(function(i,event){
                        if((i+1)%3 == 1){
                            $(".report_c").append('<div class="row data'+(Math.ceil((i+1)/3))+'">'+
                            '<div class="col-sm-4">'+
                            '       <a href="'+event.file_data+'" target="_blank"  data-src="">'+
                            "       <em style=\"background: #fff url('"+event.picurl+"') no-repeat center/cover;\"><button>点击查看</button></em>"+
                            '   <span>'+event.title+'</span>' +
                            '</div>'+
                            '</div>'
                            );
                        }else{
                            $(".data"+(Math.ceil((i+1)/3))).append('<div class="col-sm-4">'+
                                '       <a href="'+event.file_data+'" target="_blank"  data-src="">'+
                                "       <em style=\"background: #fff url('"+event.picurl+"') no-repeat center/cover;\"><button>点击查看</button></em>"+
                                '   <span>'+event.title+'</span>' +
                                '</div>');
                        }
                    });

                    $(document).on("click",".video_list a",function(e){
                        e.preventDefault();
                        var item_data =  $(this).data("item");
                        $("iframe").attr("src",item_data);
                    });
                }
            }
        });
    })
</script>
</body>
</html>