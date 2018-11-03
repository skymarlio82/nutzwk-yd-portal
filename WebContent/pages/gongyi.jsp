<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
    <link rel="stylesheet" href="../assets/css/styles/gongyi.css"/>
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
                <div class="title_c">
                    <span></span>
                    <a href="#"></a>
                    <b></b>
                </div>
                <div class="gyxm_c">

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

<script src="../assets/js/imagesLoaded-4.1.2/js/imagesloaded.pkgd.min.js"></script>
<script src="../assets/js/swiper-3.4.1/js/swiper.min.js"></script>
<script src="../assets/js/velocity/js/velocity.ui-5.0.4.min.js"></script>
<script src="../assets/js/velocity/js/velocity-1.2.3.min.js"></script>
<script src="../assets/js/modernizr-2.6.1/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script src="../assets/js/custom/main.js"></script>
<script src="../assets/js/custom/common.js"></script>
<script src="../assets/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript">
    $(function(){
        //初始化菜单
        //父栏目id，当前栏目id,活动id，类型 list 还是 details
        //parent_id,menu_id,article_id

        $.ajax({
            url: "/platform/interface/info/getArticle",
            type: 'post',
            dataType: 'json',
            data: {
                id:'${param.article_id}',
                channel_id:'${param.menu_id}'
            },
            success: function(data){
                 $(".ab_right .gyxm_c").empty();
                 $(".ab_right .gyxm_c").append(
                    '<div class="wrap ayy_01">'+
                    '    <div class="wrap_c">'+
                    '        <a href="#">'+
                    '            <em class="em1">'+
                    '                <img src="'+data.data.picurl+'">'+
                    '            </em>'+
                    '            <em class="em2">'+
                    '                <span class="sp1">'+data.data.title+'<b></b></span>'+
                    '                <span class="sp2" style="height: 52px;">'+
                    '                    <span class="">'+data.data.info+'</span>'+
                    '                    <span class=""></span>'+
                    '                    <b class="b1" style="display: inline;"></b>'+
                    '                </span>'+
                    '                <span class="sp3 more_data" channel_id="${param.menu_id}" parent_id="${param.parent_id}"><i>MORE+</i></span>'+
                    '            </em>'+
                    '        </a>'+
                    '    </div>'+
                    '</div>'
                );

                $(document).on("click",".more_data",function(){
                    location.href="<%=basePath%>pages/jdgljh.jsp?parent_id="+$(this).attr("parent_id")+"&menu_id="+$(this).attr("channel_id");
                });

            }
        }); 
    })
</script>
</body>
</html>