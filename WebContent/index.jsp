<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="keywords" content="上海永达公益基金会，永达，公益，永达基金会,永达公益基金会，永达公益基金，聚德，聚德甘霖，聚德安心宝贝，安心宝贝，聚德大不同，永达公益慈善拍卖晚宴，永达公益老人伴读活动，老人伴读，永达公益帮扶彝良黑拉村，上师大永达专项教育基金，爱在您身边，陪伴粽是情" />
    <meta name="description" content="上海永达公益基金会的成立促进了社会互助风气，使社会上急待济援的特困群体，能获得物质救助与精神慰藉。此项基金将用于资助弱势群体及本市的帮困、助学等慈善公益项目和汽车产业相关项目。" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" type="image/png" href="favicon.png" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/js/font-awesome-3.2.1/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/js/swiper-3.4.1/css/swiper.min.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="assets/css/styles/main.css" />
    <link rel="stylesheet" href="assets/css/styles/style.css" />
    <script src="jquery.min.js"></script>
    <title>Yongda Foundation - 永达公益基金会</title>
</head>
<body>
<jsp:include page="Partial/header.jsp" flush="true"/>
<div class="top_erm_01">
    <div>
        <img src="assets/img/wx_yd.jpg" />
        <p>永达公益基金会</p>
    </div>
    <div>
        <img src="assets/img/wx_jd.jpg" />
        <p>聚德微信</p>
    </div>
</div>
<div id="company-banner" class="banner">
    <div class="container" style="width:100%;">
        <div class="row">
            <div class="page1" >
                <div class="page1_slide">
                    <div class="swiper-wrapper boot_swiper_wrapper" >
                        <div class="swiper-slide"><div class="page1sw_bg" style="background: url('assets/img/banner-bg-1.jpg') no-repeat center/cover;"></div></div>
                        <div class="swiper-slide"><div class="page1sw_bg" style="background: url('assets/img/banner-bg-2.jpg') no-repeat center/cover;"></div></div>
                        <div class="swiper-slide"><div class="page1sw_bg" style="background: url('assets/img/banner-bg-3.jpg') no-repeat center/cover;"></div></div>
                        <div class="swiper-slide"><div class="page1sw_bg" style="background: url('assets/img/banner-bg-4.jpg') no-repeat center/cover;"></div></div>
                        <div class="swiper-slide"><div class="page1sw_bg" style="background: url('assets/img/banner-bg-5.jpg') no-repeat center/cover;"></div></div>
                        <div class="swiper-slide"><div class="page1sw_bg" style="background: url('assets/img/banner-bg-6.jpg') no-repeat center/cover;"></div></div>
                    </div>
                    <div class="page1_sw_a boot_page1"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<section id="company-project" class="page-section">
    <div class="page4">
        <div class="page4_slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><div class="page4c_bg" style="background: url('assets/img/page4_01.jpg') no-repeat center/cover;"></div></div>
                <div class="swiper-slide"><div class="page4c_bg" style="background: url('assets/img/page4_03.jpg') no-repeat center/cover;"></div></div>
                <div class="swiper-slide"><div class="page4c_bg" style="background: url('assets/img/page4_02.jpg') no-repeat center/cover;"></div></div>
                <div class="swiper-slide"><div class="page4c_bg" style="background: url('assets/img/page4_04.jpg') no-repeat center/cover;"></div></div>
            </div>
        </div>
        <div class="page4_c"></div>
    </div>
</section>
<section id="section-jude" class="jude_bg">
    <div>
        <h1>聚 德 慈 善</h1>
    </div>
    <div class="jude_Container swiper-container">
        <div class="swiper-wrapper"></div>
        <div class="jd_button_next"></div>
        <div class="jd_button_prev"></div>
    </div>
    <div class="jd-paging "></div>
</section>
<div id="company-video" class="second-tabs-content what-we-do">
    <div class="container">
        <div class="row">
            <div class="col-md-12"></div>
        </div>
        <div class="row">
            <div class="wrapper">
                <div class="col-md-12">
                    <div class="row">
                        <ul class="tabs tabs_news clearfix" data-tabgroup="second-tab-group">
                            <li class="col-xs-3">
                                <a class="active" data-item="#unique" href="#"><div class="list-item"><div class="icon"><img src="assets/img/icons/gongyi_icon.png" alt="" /></div></div></a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#theme" href="#"><div class="list-item"><div class="icon"><img src="assets/img/icons/jiuhui_icon_1.png" alt="" /></div></div></a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#translation" href="#"><div class="list-item"><div class="icon"><img src="assets/img/icons/luntan_icon_1.png" alt="" /></div></div></a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#event" href="#"><div class="list-item"><div class="icon"><img src="assets/img/icons/shequ_icon_1.png" alt="" /></div></div></a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#photo" href="#"><div class="list-item"><div class="icon"><img src="assets/img/icons/fuqu_icon_1.png" alt="" /></div></div></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12">
                    <section id="second-tab-group" class="tabgroup"></section>
                </div>
            </div>
        </div>
    </div>
</div>
<section id="company-timeline" class="timeline-bg">
    <div class="time-container">
        <div class="col-md-12">
            <h1>永达公益大事记</h1>
            <div class="swiper-container gallery-time">
                <div class="swiper-wrapper"></div>
                <div class="tl_button_next"></div>
                <div class="tl_button_prev"></div>
            </div>
        </div>
    </div>
</section>
<section id="company-news" >
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h1>永达公益动态</h1>
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
        <div class="row news_wrapper">
            <div class="wrapper">
                <div class="col-md-6">
                    <ul id="first_news_wrapper" class="tabs tabs_info clearfix" data-tabgroup="first-tab-group"></ul>
                </div>
                <div class="col-md-6">
                    <div id="first-tab-group" class="tabgroup"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="contact-us">
    <div class="container contact-wrap">
        <div class="row">
            <div class="col-md-12">
                <div class=""><h1>联系我们</h1></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form id="contact" action="#" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <fieldset border="0">
                                <input name="name" type="text" class="form-control" id="name" placeholder="姓名：" required />
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <input name="email" type="email" class="form-control" id="email" placeholder="邮件：" required />
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <input name="subject" type="text" class="form-control" id="subject" placeholder="标题：" required />
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <input name="phone" type="phone" class="form-control" id="phone" placeholder="手机：" required />
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <textarea name="message" rows="6" class="form-control" id="message" placeholder="消息内容：" required></textarea>
                            </fieldset>
                        </div>
                        <div class="col-md-12" style="text-align:right;">
                            <fieldset>
                                <button type="button" id="form-submit" class="btn">发送您的消息</button>
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6"><div id="map"><img src="assets/img/map-location.jpg" alt="" /></div></div>
        </div>
    </div>
</section>
<jsp:include page="Partial/footer.jsp"/>
<script src="assets/js/imagesLoaded-4.1.2/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/swiper-3.4.1/js/swiper.min.js"></script>
<script src="assets/js/velocity/js/velocity.ui-5.0.4.min.js"></script>
<script src="assets/js/velocity/js/velocity-1.2.3.min.js"></script>
<script src="assets/js/modernizr-2.6.1/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script src="assets/js/custom/main.js"></script>
<script src="assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
    	// 初始化首页六宫格
        $.ajax({
            url : "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType : 'json',
            data : {
                channel_id : '46ca5a5a834f40209dfd134bb27fe55c',
                page_no : 1,
                page_size : 10
            },
            success : function (data) {
                if (data.data.list != null) {
                    //渲染列表
                    $(".page1_sw_a").empty();
                    $(data.data.list).each(function (i, event) {
                        if (i == 0) {
                            $(".page1_sw_a").append("<a href='javascript:void(0)' class=\"on\"><span class=\"sp1\">" + event.title + "<b></b></span></a>");
                        } else {
                            $(".page1_sw_a").append("<a href='javascript:void(0)'><span class=\"sp1\">" + event.title + "<b></b></span></a>");
                        }
                    });
                    // Sub Inline Page for 1st front page (6 blocks)
                    var mySwiper = null;
                    try {
                        $(".page1_slide .page1sw_bg").css({ "width" : "100%" });
                        $(".page1_slide .page1sw_bg").css({ "height" : $(window).innerHeight() + "px" });
                        mySwiper = new Swiper('.page1_slide', {
                            slidesPerView : '1',
                            effect : "fade"
                        });
                        $(".page1_sw_a a").each(function (i, e) {
                            $(this).mouseenter(function () {
                                mySwiper.slideTo(i, 1000, false);
                            });
                        });
                    } catch (e) {
                        console.log("page1_slide error : " + e);
                    }
                }
            },
            error : function (xhr, status) {
                return;
            }
        });
        //初始化首页四横
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'a2094d70d9204680b6c5e23966ccb9ae',
                page_no:1,
                page_size:10
            },
            success: function(data){
                if(data.data.list != null){
                    //渲染列表
                    $(".page4_c").empty();
                    $(data.data.list).each(function(i,event){
                        if(i == 0){
                            $(".page4_c").append("<a href='<%=basePath%>pages/jdgljh.jsp?parent_id="+event.parent_id+"&menu_id="+event.channelid+"&article_id="+event.id+"' class=\"on\"><em>\n" +
                                "                <span class=\"spicon\"></span>\n" +
                                "                <span>"+event.title+"</span><i>"+event.info+"</i></em><b class=\"b1\"></b><b class=\"b2\"></b></a>");
                        }else{
                            $(".page4_c").append("<a href='<%=basePath%>pages/jdgljh.jsp?parent_id="+event.parent_id+"&menu_id="+event.channelid+"&article_id="+event.id+"'><em>\n" +
                                "                <span class=\"spicon\"></span>\n" +
                                "                <span>"+event.title+"</span><i>"+event.info+"</i></em><b class=\"b1\"></b><b class=\"b2\"></b></a>");
                        }
                    });


                    // Sub Inline Page for donate foundation project (4 blocks)
                    var mySwiper4 = null;
                    var mySwiper4_on = -1;
                    try {
                        $("#company-project").css({ "width" : "100%", "height" : $(window).innerHeight() + "px" });
                        $(".page4_slide .page4c_bg").each(function () {
                            $(this).css({ "width" : "100%" });
                            $(this).css({ "height" : $(window).innerHeight() + "px" });
                        });
                        $(".page4_c a").each(function () {
                            $(this).css({ "height" : $(window).innerHeight() + "px" });
                        });

                        mySwiper4 = new Swiper('.page4_slide', {
                            slidesPerView : '1',
                            effect : "slide"
                        });
                        $(".page4_c a").each(function (i, e) {
                            if ($(this).attr("class") == "on") {
                                mySwiper4.slideTo(i, 1000, false);
                                mySwiper4_on = i;
                            }
                            $(this).mouseenter(function () {
                                if (mySwiper4_on != i) {
                                    $(this).addClass("on");
                                    $(".page4_c").find("a").eq(mySwiper4_on).removeClass("on");
                                    mySwiper4.slideTo(i, 1000, false);
                                    mySwiper4_on = i;
                                }
                            })
                        });
                    } catch (e) {
                        console.log("page4_slide error : " + e);
                    }

                }
            }
        });


        //永达慈善
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'d5e93e616ed44f43a9bd2406db7afa2b',
                page_no:1,
                page_size:10
            },
            success: function(data){
                if(data.data.list != null){
                    //渲染列表
                    $("#second-tab-group").empty();
                    var html = "";
                    $(data.data.list).each(function(i,event){
                        html += '<div id="'+(event.cms_params.split(",")[0])+'">'+
                            '    <div class="row">'+
                            '    <div class="tab-content-services">'+
                            '        <div class="col-md-6">'+
                            '        <div class="left-text">'+
                            '            <h4><font>'+event.title+'</font></h4>'+
                            '            <p>'+event.info+'</p>'+
                            '            <div class="primary-button"><a href="/pages/jdgljh.jsp?parent_id='+event.parent_id+'&menu_id='+event.channelid+'&article_id='+event.id+'" style="background-color: transparent;"><img src="assets/img/video/chakangengduo_btn.png"/></a></div>'+
                            '        </div>'+
                            '        </div>'+
                            '        <div class="col-md-6">';
                        html += '        <div class="right-image">' ;
                        if(event.cms_params.split(",").length > 1){
                            html +=  '<iframe width="100%" height="350px" scrolling="no" src="'+(event.cms_params.split(",")[1])+'" frameborder="0"></iframe>';
                        }

                        html += '        </div>'+
                            '        </div>'+
                            '    </div>'+
                            '    </div>'+
                            '</div>';
                    });

                    $("#second-tab-group").append(html);


                    // hide, show and process tabgroup
                    $('.tabgroup > div').hide();
                    $('.tabgroup > div:first-of-type').show();
                    $(document).on("click",".tabs_news a",function(e){
                        //$('.tabs a').click(function (e) {
                        e.preventDefault();
                        var tabgroup = '#' + $(this).parents('.tabs').data('tabgroup'); // a -> parent -> databind -> id
                        var others = $(this).closest('li').siblings().children('a.active'); // a -> closest li -> siblings -> a
                        var target = $(this).data('item'); // a -> href -> div

                        var graysrc = others.find('img').attr('src');
                        graysrc = graysrc.replace('.png','_1.png');
                        others.find('img').attr('src', graysrc);
                        others.removeClass('active');

                        var actsrc = $(this).find('img').attr('src');
                        actsrc = actsrc.replace('_1.png','.png');
                        $(this).find('img').attr('src', actsrc);
                        $(this).addClass('active');

                        $(tabgroup).children('div').hide();
                        $(target).show();
                    });
                }
            }
        });




        // //永达公益大事记
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'8d111b11a6fc44138d736af40ddaf4f9',
                page_no:1,
                page_size:100
            },
            success: function(data){
                console.log(data.data.list.length);
                if(data.data.list != null){
                    //渲染列表
                    $(".gallery-time .swiper-wrapper").empty();
                    var html = "";
                    $(data.data.list).each(function(i,event){
                        if(i%2 ==0){
                            html += ''+
                                '<div class="swiper-slide">'+
                                ' <div class="headdiv" data-id="'+event.id+'" data-parent_id="'+event.parent_id+'" data-menu_id="'+event.channelid+'">'+
                                '     <img alt="" src="'+event.picurl+'"/>'+
                                '</div>'+
                                '<div class="topdiv">'+
                                '    &nbsp;'+
                                '</div>'+
                                '<div class="middiv">'+
                                '    <img alt="" src="assets/img/timeline/gray_round.png"/>'+
                                '</div>'+
                                '<div class="botdiv" data-id="'+event.id+'" data-parent_id="'+event.parent_id+'" data-menu_id="'+event.channelid+'">'+
                                '    <div class="img-rounded">'+
                                '        <h4>'+event.opat+'</h4>'+
                                '        <p style="text-align:center">'+event.info+'</p>'+
                                '    </div>'+
                                '</div>'+
                                '</div>';

                        }else{
                            html += ''+
                                '<div class="swiper-slide">'+
                                '    <div class="botdiv" data-id="'+event.id+'" data-parent_id="'+event.parent_id+'" data-menu_id="'+event.channelid+'">'+
                                '        <div class="img-rounded">'+
                                '            <h4>'+event.opat+'</h4>'+
                                '            <p style="text-align:center">'+event.info+'</p>'+
                                '        </div>'+
                                '    </div>'+
                                '    <div class="middiv">'+
                                '        <img alt="" src="assets/img/timeline/gray_round.png"/>'+
                                '    </div>'+
                                '    <div class="topdiv">'+
                                '        &nbsp;'+
                                '    </div>'+
                                '    <div class="headdiv" data-id="'+event.id+'" data-parent_id="'+event.parent_id+'" data-menu_id="'+event.channelid+'">'+
                                '        <img alt="" src="'+event.picurl+'"/>'+
                                '    </div>'+
                                '</div>';
                        }

                    });
                    $(".gallery-time .swiper-wrapper").append(html);

                    //Timeline
                    var perviewNum = isMobile()? 1: 4;
                    console.log(perviewNum);

                    var tlswiper = new Swiper('.gallery-time', {
                        slidesPerView: perviewNum,
                        spaceBetween: 1,
                        loop: false,
                        prevButton : ".tl_button_prev",
                        nextButton : ".tl_button_next"
                    });
                    //$(".swiper-slide-active").css("width","100%");
                    $(".headdiv,.botdiv").mouseover(function(){
                        var thisObj = $(this).parent();
                        thisObj.find("h4").css("color","#ff2627");
                        thisObj.find("p").css("color","#222");
                        thisObj.find('.img-rounded').addClass("roundbox");
                        thisObj.find(".middiv img").attr("src","assets/img/timeline/red_round.png");
                        thisObj.find(".topdiv").removeClass("topdiv").addClass("redtopdiv");
                    }).mouseout(function(){
                        var thisObj = $(this).parent();
                        thisObj.find("h4").css("color","#666");
                        thisObj.find("p").css("color","#666");
                        thisObj.find('.img-rounded').removeClass("roundbox");
                        thisObj.find(".middiv img").attr("src","assets/img/timeline/gray_round.png");
                        thisObj.find(".redtopdiv").removeClass("redtopdiv").addClass("topdiv");
                    }).click(function(){
                        location.href="/pages/jdgljh.jsp?parent_id="+$(this).data("parent_id")+"&menu_id="+$(this).data("menu_id")+"&article_id="+$(this).data("id");
                    });
                    $(".tl_button_next,.tl_button_prev").mouseover(function(){
                        var bg = $(this).css("background-image");
                        if(bg.indexOf('red')>0)
                            bg = bg.replace('red','whit');
                        else
                            bg = bg.replace('whit','red');
                        $(this).css("background-image", bg);
                    }).mouseout(function(){
                        var bg = $(this).css("background-image");
                        if(bg.indexOf('red')>0)
                            bg = bg.replace('red','whit');
                        else
                            bg = bg.replace('whit','red');
                        $(this).css("background-image", bg);
                    });

                }
            }
        });

        // //永达公益慈善活动
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'b48ee99e7b934993ab2d84010963d5e0',
                page_no:1,
                page_size:10
            },
            success: function(data){
                if(data.data.list != null){
                    //渲染列表
                    $("#section-jude .swiper-wrapper").empty();
                    var html = "";
                    $(data.data.list).each(function(i,event){
                        html += '<div class="swiper-slide" style="background-image:url('+event.picurl+')"></div>\n';
                    });
                    $("#section-jude .swiper-wrapper").append(html);
                    var judeswiper = null;
                    try{
                        //$(".jude_bg").css({ "width" : "100%", "height" : $(window).innerHeight() + "px" });
                        var judeswiper = new Swiper('.jude_Container', {
                            spaceBetween: 30,
                            effect: 'fade',
                            pagination: ".jd-paging",
                            paginationClickable :true,
                            prevButton : ".jd_button_prev",
                            nextButton : ".jd_button_next"
                        });



                        $(".jd_button_prev,.jd_button_next").mouseover(function(){
                            var bg = $(this).css("background-image");
                            if(bg.indexOf('red')>0)
                                bg = bg.replace('red','whit');
                            else
                                bg = bg.replace('whit','red');
                            $(this).css("background-image", bg);
                        }).mouseout(function(){
                            var bg = $(this).css("background-image");
                            if(bg.indexOf('red')>0)
                                bg = bg.replace('red','whit');
                            else
                                bg = bg.replace('whit','red');
                            $(this).css("background-image", bg);
                        });

                    } catch (e) {
                        console.log("page4_slide error : " + e);
                    }
                }
            }
        });
        //
        //永达动态消息推送
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'b757346eba884baeaa84c7a8484ebc39',
                page_no:1,
                page_size:5
            },
            success: function(data){
                if(data.data.list != null){
                    //渲染列表
                    $("#first_news_wrapper").empty();
                    var html = "";
                    var content_html="";
                    $(data.data.list).each(function(i,event){
                        var actClass= i==0?"active":"";

                        html += '<li><a href="#tab' + (i + 1) + '" class="'+actClass+'">' + event.title + '<ul class="info-post">' +
                            //'<li><i class="fa fa-user"></i>' + event.author + '</li>' +
                            '<li><i class="fa fa-calendar"></i>' + event.opat + '</li>' +
                            '<li><i class="fa fa-wechat"></i></li>' +
                            '</ul></a></li>';
                        content_html += '<div id="tab'+(i + 1)+'">' +
                            '     <div class="img-zoom-wrap"><a href="<%=basePath%>pages/jdgljh.jsp?parent_id='+event.parent_id+'&menu_id='+event.channelid+'&article_id=' + event.id + '"><img src="' + event.picurl + '" alt=""></a></div>' +
                            '                <div class="text-content">' +
                            '                    <h4>' + event.title + '</h4>' +
                            '                    <ul class="info-post">' +
                            //'                    <li><i class="fa fa-user hidden">' + event.author + '</i></li>' +
                            '                <li><i class="fa fa-calendar"></i>' + event.opat + '</li>' +
                            '                <li><i class="fa fa-wechat"></i></li>' +
                            '                </ul>' +
                            '                <p>' + event.info + '</p>' +
                            '                <div class="primary-button"><a href="/pages/jdgljh.jsp?parent_id='+event.parent_id+'&menu_id='+event.channelid+'&article_id='+event.id+'" style="background-color: transparent;"><img src="assets/img/video/chakangengduo_btn.png"/></a></div>' +
                            '                </div>' +
                            '                </div>';

                    });

                    $("#first_news_wrapper").append(html);
                    $("#first-tab-group").append(content_html);

                    $('.img-zoom-wrap img').hover(function () {
                        $(this).stop().animate({ 'opacity' : '0.5', 'width' : '120%', 'height' : '340px', 'top' : '-40px', 'left' : '-40px' });
                    }, function () {
                        $(this).stop().animate({ 'opacity' : '1', 'width' : '100%', 'height' : '300px', 'top' : '0px', 'left' : '0px' });
                    });


                    $('.tabgroup > div').hide();
                    $('.tabgroup > div:first-of-type').show();
                    $(document).on("click",".tabs_info a",function(e){
                        e.preventDefault();
                        $(".img-zoom-wrap").parent().hide();
                        var item_data =  $(this).attr("href");
                        $(item_data).show();
                        $(".tabs_info li a").removeClass("active");

                        $(this).addClass("active");
                    });
                }
            }
        });


        $("#form-submit").on("click",function(){
            var params = $("#contact").serialize();
            var url = '/platform/interface/info/addContact';

            $.post(url,params,function(data){
                if(data.code == 0) {
                    alert("数据保存成功")
                    document.getElementById("contact").reset();
                    return;
                }
            },"json") ;
        })

    })
</script>
</body>
</html>