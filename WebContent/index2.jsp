<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg no-smil svgclippaths"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="keywords" content="上海永达公益基金会，永达，公益，永达基金会,永达公益基金会，永达公益基金，聚德，聚德甘霖，聚德安心宝贝，安心宝贝，聚德大不同，永达公益慈善拍卖晚宴，永达公益老人伴读活动，老人伴读，永达公益帮扶彝良黑拉村，上师大永达专项教育基金，爱在您身边，陪伴粽是情" />
    <meta name="description" content="上海永达公益基金会的成立促进了社会互助风气，使社会上急待济援的特困群体，能获得物质救助与精神慰藉。此项基金将用于资助弱势群体及本市的帮困、助学等慈善公益项目和汽车产业相关项目。" />
    <link href="favicon.ico" rel="shortcut icon">
    <link href="favicon.png" rel="icon" type="image/png">

    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/js/font-awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/js/swiper-3.4.1/css/swiper.min.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/styles/main.css" rel="stylesheet">
    <link href="assets/css/styles/style.css" rel="stylesheet">
    <script src="jquery.min.js"></script>

    <style>
        #company-news .tabs a{
            text-transform:none;
        }
    </style>
    <title>Yongda Foundation - 永达公益基金会</title>
</head>
<body>



<div class="main-header OpacitySet">
    <div class="nav-wraper">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button class="navbar-toggle" id="nav-toggle" type="button" data-toggle="collapse" data-target="#main-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><img class="yd-logo" alt="" src="../assets/img/logo.png"></a>

                <div class="collapse navbar-collapse" id="main-nav">
                    <ul class="menu-first nav navbar-nav" style="margin-right: 20px;">
                        <li><a href="/">主页</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-sect="#company-project">永达公益</a>
                            <ul class="dropdown-menu">
                                <li><a href="/pages/gongyi.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=f9b229db18bb41fda2c3c6ffbf6b3f76">慈善晚宴</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/banlaohd.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=569f36f604b34927aa9b4011e2d799de">伴老活动</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gyxm.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=aa95be2d0350438e9e089a17b2be1737">公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gzbg.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=e7176d1dfcc046299673c8fcad0f6cfb">爱心基金</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-sect="#section-jude">聚德慈善</a>
                            <ul class="dropdown-menu">
                                <li><a href="/pages/gongyi.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=66ce7bb0d1714ef39df6165145a26cb0">关于聚德</a></li>
                                <li class="divider"></li>
                                <!--
                                <li><a href="/pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=ec58e09141f348de99e7f6699687c500">公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=37629447fa2c4ff9bdc03fcd76ff23dc">聚德慈善介绍</a></li>
                                <li class="divider"></li>
                                -->
                                <li><a href="/pages/wrap.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=b92b182c457f4c25aa6a0adc2b7c384e">聚德慈善理念</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=f66550494b6d43d19b8edac92473aed8">规章制度</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gzbg.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=d4f2a178fe0e4366a3ff0042faada8d2">审计报告</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=635dfebb5f9e4787a601125c86fe8117">聚德“安心.宝贝”</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=c1f98693c03145bda5bceb3f6d0fe921">聚德“甘霖”计划</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=2404bbf3282842a0b874eb73461eabbd">中医大公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=1fa3a65500fe492f9f115772fd3dbd2b">聚德大不同学园</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-sect="#company-video">社会影响</a>
                            <ul class="dropdown-menu">
                                <li><a href="/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39">永达公益动态</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=d998b21f7b294fa280dcdaa090d05d28">聚德慈善动态</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/mtgz.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=ea8e43be1b3249db9c00dee501d1c6f6">媒体关注</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/cswy.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=cfda3aa9523846f7803c8fb4a805f0b2">永达公益视频</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-sect="#company-news">信息公开</a>
                            <ul class="dropdown-menu">
                                <li><a href="/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=a50715dbe2784be3bbe288fb33a20f5e">关于我们</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/wrap.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=ae6d39b4e8d444a6b8a7e2fa5f857dae">永达公益理念</a></li>

                                <li><a href="/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=d1a280113926418bbeea5df7ef2a38f0">组织结构</a></li>

                                <li><a href="/pages/gyxm.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=a28f29952cf4410595425cbddafe590b">规章制度</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=abcf110d735e490c99217e0a8326f7fc">工作报告</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=db2cf68ca72f498e8c22da49b5dd301a">审计报告</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-sect="#contact-us">加入我们</a>
                            <ul class="dropdown-menu">
                                <li><a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&amp;menu_id=4e91da05626c4bd582d96cf65b094270">成为捐赠人</a></li>
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&amp;menu_id=15fb32a0dd8e4bdeb44b6db0c5a990f8">成为志愿者</a></li>
                                <!--<li class="divide   r"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=fd012eba7383469c8c1b31ae06020394">爱心企业</a></li>
                                -->
                                <li class="divider"></li>
                                <li><a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&amp;menu_id=985d7ed48730483394caf77b4b842eab">联系我们</a></li>
                            </ul>
                        </li>
                        <li class="enMenu"><a href="index.jsp">中文</a></li>

                        <li class="iconMenu" style="padding-left: 30px;"><a id="wc-menu-icon" href="#wc-qr"><img src="/assets/img/top_02.png"></a></li>
                        <li class="iconMenu"><a id="en-menu-icon" href="/index2.jsp">&nbsp;</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<div class="top_erm_01">
    <div>
        <img src="assets/img/wx_yd.jpg">
        <p>Yongda Public Welfare Foundation</p>
    </div>
    <div>
        <img src="assets/img/wx_jd.jpg">
        <p>Jude Charity Foundation</p>
    </div>
</div>

<div class="banner" id="company-banner">
    <div class="container" style="width: 100%;">
        <div class="row">
            <div class="page1">
                <div class="page1_slide swiper-container-horizontal swiper-container-fade swiper-wp8-horizontal">
                    <div class="swiper-wrapper boot_swiper_wrapper" style="transition-duration: 0ms;">
                        <div class="swiper-slide" style="width: 1524px; opacity: 1; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;"><div class="page1sw_bg" style='background: url("assets/img/banner-bg-1.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                        <div class="swiper-slide" style="width: 1524px; opacity: 1; transform: translate3d(-1524px, 0px, 0px); transition-duration: 0ms;"><div class="page1sw_bg" style='background: url("assets/img/banner-bg-2.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                        <div class="swiper-slide" style="width: 1524px; opacity: 1; transform: translate3d(-3048px, 0px, 0px); transition-duration: 0ms;"><div class="page1sw_bg" style='background: url("assets/img/banner-bg-3.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                        <div class="swiper-slide swiper-slide-prev" style="width: 1524px; opacity: 1; transform: translate3d(-4572px, 0px, 0px); transition-duration: 0ms;"><div class="page1sw_bg" style='background: url("assets/img/banner-bg-4.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                        <div class="swiper-slide swiper-slide-active" style="width: 1524px; opacity: 1; transform: translate3d(-6096px, 0px, 0px); transition-duration: 0ms;"><div class="page1sw_bg" style='background: url("assets/img/banner-bg-5.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                        <div class="swiper-slide swiper-slide-next" style="width: 1524px; opacity: 0; transform: translate3d(-7620px, 0px, 0px); transition-duration: 0ms;"><div class="page1sw_bg" style='background: url("assets/img/banner-bg-6.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                    </div>
                    <div class="page1_sw_a"><a class="on" href="javascript:void(0)"><span class="sp1">Enthusiastic in public welfare for a harmonious society<b></b></span></a><a href="javascript:void(0)"><span class="sp1">Charity makes happiness, and the public welfare makes connections<b></b></span></a><a href="javascript:void(0)"><span class="sp1">Make the public service a daily routine<b></b></span></a><a href="javascript:void(0)"><span class="sp1">Work together on the charitable actions and public services<b></b></span></a><a href="javascript:void(0)"><span class="sp1">Love is around us<b></b></span></a><a href="javascript:void(0)"><span class="sp1">To be a warm-hearted foundation<b></b></span></a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="page-section" id="company-project" style="width: 100%; height: 745px;">
    <div class="page4">
        <div class="page4_slide swiper-container-horizontal swiper-wp8-horizontal">
            <div class="swiper-wrapper" style="transform: translate3d(-3048px, 0px, 0px); transition-duration: 0ms;">
                <div class="swiper-slide" style="width: 1524px;"><div class="page4c_bg" style='background: url("assets/img/page4_01.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                <div class="swiper-slide swiper-slide-prev" style="width: 1524px;"><div class="page4c_bg" style='background: url("assets/img/page4_03.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                <div class="swiper-slide swiper-slide-active" style="width: 1524px;"><div class="page4c_bg" style='background: url("assets/img/page4_02.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
                <div class="swiper-slide swiper-slide-next" style="width: 1524px;"><div class="page4c_bg" style='background: url("assets/img/page4_04.jpg") no-repeat center / cover; width: 100%; height: 745px;'></div></div>
            </div>
        </div>
        <div class="page4_c"><a style="height: 745px;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=a2094d70d9204680b6c5e23966ccb9ae&amp;article_id=62e268e9e9b346eb92636adb1987117c"><em>
            <span class="spicon"></span>
            <span>New activities to assist the impoverished students</span><i>New activities to assist the impoverished students</i></em><b class="b1"></b><b class="b2"></b></a><a style="height: 745px;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=a2094d70d9204680b6c5e23966ccb9ae&amp;article_id=63a6f47ca2b64cea95343892112dd574"><em>
            <span class="spicon"></span>
            <span>Poverty alleviation</span><i>Poverty alleviation</i></em><b class="b1"></b><b class="b2"></b></a><a class="on" style="height: 745px;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=a2094d70d9204680b6c5e23966ccb9ae&amp;article_id=83420bdf566241f4ae6992a2bd2c249b"><em>
            <span class="spicon"></span>
            <span>Traffic safety improvement</span><i>Traffic safety improvement</i></em><b class="b1"></b><b class="b2"></b></a><a style="height: 745px;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=a2094d70d9204680b6c5e23966ccb9ae&amp;article_id=a7d91294c514423692972e7c97b495a6"><em>
            <span class="spicon"></span>
            <span>Disaster relief</span><i>Disaster relief</i></em><b class="b1"></b><b class="b2"></b></a></div>
    </div>
</section>

<section class="jude_bg" id="section-jude">
    <div>
        <h1>Jude Charity Foundation</h1>
    </div>
    <div class="jude_Container swiper-container swiper-container-horizontal swiper-container-fade swiper-wp8-horizontal">
        <div class="swiper-wrapper"><div class="swiper-slide swiper-slide-active" style='width: 1099px; opacity: 1; transform: translate3d(0px, 0px, 0px); background-image: url("/upload/image/20180629/30enn0cob6hjkpkag8im59t115.jpg");'></div>
            <div class="swiper-slide swiper-slide-next" style='width: 1099px; opacity: 0; transform: translate3d(-1099px, 0px, 0px); background-image: url("/upload/image/20180629/uu22fg0oiiheco94vgrnvq3nl9.jpg");'></div>
            <div class="swiper-slide" style='width: 1099px; opacity: 0; transform: translate3d(-2198px, 0px, 0px); background-image: url("/upload/image/20180629/1de455snqsjunphe9c9tcda1cr.jpg");'></div>
            <div class="swiper-slide" style='width: 1099px; opacity: 0; transform: translate3d(-3297px, 0px, 0px); background-image: url("/upload/image/20180629/s117itd7rajdfotr2lforf7es8.jpg");'></div>
        </div>
        <div class="jd_button_next" style='background-image: url("/assets/img/timeline/whit_rightarr.png");'></div>
        <div class="jd_button_prev swiper-button-disabled"></div>
    </div>
    <div class="jd-paging swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>

</section>

<div class="second-tabs-content what-we-do" id="company-video">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>
        <div class="row">
            <div class="wrapper">
                <div class="col-md-12">
                    <div class="row">
                        <ul class="tabs tabs_news clearfix" data-tabgroup="second-tab-group">
                            <li class="col-xs-3">
                                <a class="active" href="#" data-item="#unique">
                                    <div class="list-item">
                                        <div class="icon"><img alt="" src="assets/img/icons/gongyi_icon.png"></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a href="#" data-item="#theme">
                                    <div class="list-item">
                                        <div class="icon"><img alt="" src="assets/img/icons/jiuhui_icon_1.png"></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a href="#" data-item="#translation">
                                    <div class="list-item">
                                        <div class="icon"><img alt="" src="assets/img/icons/luntan_icon_1.png"></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a href="#" data-item="#event">
                                    <div class="list-item">
                                        <div class="icon"><img alt="" src="assets/img/icons/shequ_icon_1.png"></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a href="#" data-item="#photo">
                                    <div class="list-item">
                                        <div class="icon"><img alt="" src="assets/img/icons/fuqu_icon_1.png"></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12">
                    <section class="tabgroup" id="second-tab-group"><div id="unique" style="display: block;">    <div class="row">    <div class="tab-content-services">        <div class="col-md-6">        <div class="left-text">            <h4><font>Charity Auction Dinner by Yongda</font></h4>            <p>On November 11th, 2017, Yongda Charity Auction Dinner was held in Yongda International Building. The chairman of Yongda Group, Mr De-an Zhang, special guests, executives and the general manager of the company, the head of departments and the caring personage of the society presented the dinner.
                    </p>            <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=d5e93e616ed44f43a9bd2406db7afa2b&amp;article_id=d483e64397534725806707dc5596998b"><img src="assets/img/video/chakangengduo_btn.png"></a></div>        </div>        </div>        <div class="col-md-6">        <div class="right-image"><iframe width="100%" height="350" src="https://v.qq.com/iframe/player.html?vid=e066389buut&amp;tiny=0&amp;auto=0" frameborder="0"></iframe>        </div>        </div>    </div>    </div></div><div id="theme" style="display: none;">    <div class="row">    <div class="tab-content-services">        <div class="col-md-6">        <div class="left-text">            <h4><font>The helps to the development of teenagers through the traffic safety activities by Yongda！</font></h4>            <p>On October 28th, 2017,  "traffic safety experience class in the base of Lv zhou, 2017 -- a public activity by Yongda" was successfully started in Shanghai Oriental Lv zhou safety base. As a joint organized activity, it was hosted by Oriental Lv zhou , the Out-of-school Activity Camp for Teenagers in Shanghai, prepared by Shanghai Yongda Public Welfare Foundation, and generally guided by Shanghai Public Security Bureau Traffic Police Corps.</p>            <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=d5e93e616ed44f43a9bd2406db7afa2b&amp;article_id=0103db0c8a7c458abfc1b7c473eb8c2e"><img src="assets/img/video/chakangengduo_btn.png"></a></div>        </div>        </div>        <div class="col-md-6">        <div class="right-image"><iframe width="100%" height="350" src="http://47.101.39.249:8080/static/upload/file/20180629172153/1530264113649.jpg" frameborder="0"></iframe>        </div>        </div>    </div>    </div></div><div id="translation" style="display: none;">    <div class="row">    <div class="tab-content-services">        <div class="col-md-6">        <div class="left-text">            <h4><font>The support to Heila Village, Kuixiang Town, Yiliang County by Yongda Charity</font></h4>            <p>15 million yuan was donated to the project of “New Shanghai, new village” from Yongda group, a member of the new Shanghai commercial federation and other five companies. Integrating with the funding for the programs of electricity, forestry and other industries, the security housing and related infrastructure were started to be built.</p>            <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=d5e93e616ed44f43a9bd2406db7afa2b&amp;article_id=0cb1e6b581bb43438e4b9d99e1cba6b0"><img src="assets/img/video/chakangengduo_btn.png"></a></div>        </div>        </div>        <div class="col-md-6">        <div class="right-image"><iframe width="100%" height="350" src="https://v.qq.com/iframe/player.html?vid=y07036ktcp5&amp;tiny=0&amp;auto=0" frameborder="0"></iframe>        </div>        </div>    </div>    </div></div><div id="event" style="display: none;">    <div class="row">    <div class="tab-content-services">        <div class="col-md-6">        <div class="left-text">            <h4><font>Yongda Charity is by your side</font></h4>            <p>The Heqing Senior’s Home in Pudong new area was filled with liveliness on April 17th, 2018. Around 10 volunteers from all walks of life and hundreds of aged people witnessed the launch ceremony which named "The public benefit event of reading for the elderly by Yongda, 2018 ". With the guidance of Shanghai Volunteer Public Welfare Foundation and together participating of Shanghai Reading Association, Shanghai Big City Small Love Charity and the volunteers from Shanghai University of Traditional Chinese Medicine, this activity was hosted by Shanghai Yongda Public Foundation. The public welfare activity, reading for the elderly will be carried out over dozens of senior’s homes in Shanghai from May to October, 2018.</p>            <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=d5e93e616ed44f43a9bd2406db7afa2b&amp;article_id=d483e64397534725806707dc55969982"><img src="assets/img/video/chakangengduo_btn.png"></a></div>        </div>        </div>        <div class="col-md-6">        <div class="right-image"><iframe width="100%" height="350" src="http://47.101.39.249:8080/static/upload/file/20180629133840/1530250720086.jpg" frameborder="0"></iframe>        </div>        </div>    </div>    </div></div><div id="photo" style="display: none;">    <div class="row">    <div class="tab-content-services">        <div class="col-md-6">        <div class="left-text">            <h4><font>“Anxin Baby”Project of Jude</font></h4>            <p>On the afternoon of 9th May, the donation ceremony for " Anxin Baby" project, a charity project for helping children with congenital heart disease initiated by Shanghai Jude Charity Foundation, was held in Shanghai Children's Medical Center. The chairman of Yongda Group, Mr De-an Zhang, the director of Shanghai Jude Charity Foundation, Ms Lifang Gu, the vice director Mr Xiao-ping Lu and the dean of Shanghai children's Medical Center Mr Zhongyi Jiang, the vice secretary of CPC Committee Ms QingYing Ji, the director of the institute of Shanghai congenital heart disease of children, professor Jin-fen Liu and other leaders presented and officially launched the "Jude Anxin baby" project.</p>            <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=de411d51d0ff4dfb9590cadc11cdf6c1&amp;menu_id=d5e93e616ed44f43a9bd2406db7afa2b&amp;article_id=4cb2e2fa9c45407783adab9ab2158a23"><img src="assets/img/video/chakangengduo_btn.png"></a></div>        </div>        </div>        <div class="col-md-6">        <div class="right-image"><iframe width="100%" height="350" src="https://v.qq.com/iframe/player.html?vid=g0705e8ijr5&amp;tiny=0&amp;auto=0" frameborder="0"></iframe>        </div>        </div>    </div>    </div></div></section>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="timeline-bg" id="company-timeline">
    <div class="time-container">
        <div class="col-md-12">
            <h1>Yongda Public Welfare Memorabilia </h1>
            <div class="swiper-container gallery-time swiper-container-horizontal swiper-wp8-horizontal">
                <div class="swiper-wrapper">
                    <div class="swiper-slide swiper-slide-active" style="width: 296.5px; margin-right: 1px;">
                        <div class="headdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="66b232d3deab40cdab5793bbc0bb1d2f">
                            <img alt="" src="/upload/image/20180705/qpq91u885qh67r2p1m54hvp18t.png"></div>
                        <div class="topdiv">    &nbsp;</div>
                        <div class="middiv">    <img alt="" src="assets/img/timeline/gray_round.png"></div>
                        <div class="botdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="66b232d3deab40cdab5793bbc0bb1d2f">
                            <div class="img-rounded">        <h4>2017-04-28</h4>        <p>Registration of Yongda Public Welfare Foundation</p>    </div>
                        </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" style="width: 296.5px; margin-right: 1px;">
                        <div class="botdiv" data-menu_id="'+event.channelid+'" data-parent_id="'+event.parent_id+'" data-id="'+event.id+'">
                            <div class="img-rounded">            <h4>2017-10-28</h4>            <p>Yongda public welfare activities on traffics</p>        </div>
                        </div>
                        <div class="middiv">        <img alt="" src="assets/img/timeline/gray_round.png">    </div>
                        <div class="topdiv">        &nbsp;    </div>
                        <div class="headdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="58b1831e66f6435e88c044a9e09f6240">
                            <img alt="" src="/upload/image/20180628/4a9vh8thm8j33preri2e531l5i.jpg">
                        </div>
                    </div>
                    <div class="swiper-slide" style="width: 296.5px; margin-right: 1px;">
                        <div class="headdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="2e0bf44367ad497ea5c0bac9beea9d92">
                            <img alt="" src="/upload/image/20180628/6c55c9km2ej9gobibcro0rptej.jpg">
                        </div>
                        <div class="topdiv">        &nbsp;    </div>
                        <div class="middiv">        <img alt="" src="assets/img/timeline/gray_round.png">    </div>
                        <div class="botdiv" data-menu_id="'+event.channelid+'" data-parent_id="'+event.parent_id+'" data-id="'+event.id+'">        <div class="img-rounded">            <h4>2017-11-11</h4>            <p>Yongda Charity Auction Dinner</p>        </div>    </div>
                    </div>
                    <div class="swiper-slide" style="width: 296.5px; margin-right: 1px;">
                        <div class="botdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="7ac078c8d1774fd39da09ed86e3e5f15">
                            <div class="img-rounded">        <h4>2018-04-13</h4>        <p>Yongda Public Welfare Activities to Support Heila Village,Yiliang County</p>    </div>
                        </div>
                        <div class="middiv">    <img alt="" src="assets/img/timeline/gray_round.png"></div>
                        <div class="topdiv">    &nbsp;</div>
                        <div class="headdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="7ac078c8d1774fd39da09ed86e3e5f15">
                            <img alt="" src="/upload/image/20180628/tn1cqdthdqggco8oppu6c8hnfi.jpg"></div>
                    </div>
                    <div class="swiper-slide" style="width: 296.5px; margin-right: 1px;">
                        <div class="headdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="70d6b255203549e48cf144dfb66d930a">
                            <img alt="" src="/upload/image/20180628/uafqbi3v50i3hpqqi7ak4btuqh.jpg">    </div>
                        <div class="topdiv">        &nbsp;    </div>
                        <div class="middiv">        <img alt="" src="assets/img/timeline/gray_round.png">    </div>
                        <div class="botdiv" data-menu_id="'+event.channelid+'" data-parent_id="'+event.parent_id+'" data-id="'+event.id+'">
                            <div class="img-rounded">            <h4>2018-04-17</h4>            <p>The Opening of Yongda Charity Reading Activity for the Elderly</p>        </div>
                        </div>
                    </div>
                    <div class="swiper-slide" style="width: 296.5px; margin-right: 1px;">
                        <div class="botdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="bf65b007f57a49f49a21bcb3047d18be">
                            <div class="img-rounded">        <h4>2018-07-03</h4>        <p>The official launch of "Reassuring baby" project of Jude</p>    </div>
                        </div>
                        <div class="middiv">    <img alt="" src="assets/img/timeline/gray_round.png"></div>
                        <div class="topdiv">    &nbsp;</div>
                        <div class="headdiv" data-menu_id="8d111b11a6fc44138d736af40ddaf4f9" data-parent_id="de411d51d0ff4dfb9590cadc11cdf6c1" data-id="bf65b007f57a49f49a21bcb3047d18be">
                            <img alt="" src="/upload/image/20180628/2ulljp6hfmi4gpm94sgbf3l7tt.jpg"></div>
                    </div>
                </div>
                <div class="tl_button_next"></div>
                <div class="tl_button_prev swiper-button-disabled"></div>
            </div>
        </div>
    </div>
</section>

<section id="company-news">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h1>Yongda Public Welfare Activities</h1>
                    <p> &nbsp;</p>
                </div>
            </div>
        </div>
        <div class="row news_wrapper">
            <div class="wrapper">
                <div class="col-md-6">
                    <ul class="tabs tabs_info clearfix" id="first_news_wrapper" data-tabgroup="first-tab-group"><li><a class="active" href="#tab1">Love is around you, Zongzi will speak my heart<ul class="info-post"><li><i class="fa fa-calendar"></i>2018-06-15</li><li><i class="fa fa-wechat"></i></li></ul></a></li><li><a href="#tab2">Love is around you-for IND (The International Nurses Day on May 12th).<ul class="info-post"><li><i class="fa fa-calendar"></i>2018-06-22</li><li><i class="fa fa-wechat"></i></li></ul></a></li><li><a href="#tab3">Love is around you - for Youth Day on May 4th<ul class="info-post"><li><i class="fa fa-calendar"></i>2018-06-22</li><li><i class="fa fa-wechat"></i></li></ul></a></li><li><a href="#tab4">Love is around you - The Public Event,Reading for elderly by Yongda, 2018<ul class="info-post"><li><i class="fa fa-calendar"></i>2018-06-22</li><li><i class="fa fa-wechat"></i></li></ul></a></li><li><a href="#tab6">Traffic safety activity by Yongda helps the development of teenagers<ul class="info-post"><li><i class="fa fa-calendar"></i>2018-06-22</li><li><i class="fa fa-wechat"></i></li></ul></a></li></ul>
                </div>
                <div class="col-md-6">
                    <div class="tabgroup" id="first-tab-group">

                        <div id="tab1" style="display: block;">     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=54000ab7de48409da9be67029b68a5c4"><img style="left: 0px; top: 0px; width: 100%; height: 300px; display: inline-block; opacity: 1;" alt="" src="/upload/image/20180627/tiqjikhhnmgeaqfvintlva9she.png"></a></div>                <div class="text-content">                    <h4>Love is around you, Zongzi will speak my heart</h4>                    <ul class="info-post">                <li><i class="fa fa-calendar"></i>2018-06-15</li>                <li><i class="fa fa-wechat"></i></li>                </ul>                <p></p>                <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=54000ab7de48409da9be67029b68a5c4"><img src="assets/img/video/chakangengduo_btn.png"></a></div>                </div>                </div><div id="tab2" style="display: none;">     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=45f6940833d3470294e0d441d62cfea8"><img alt="" src="/upload/image/20180627/r1fpgukiieiabr1o3ol5kcv8s4.jpg"></a></div>                <div class="text-content">                    <h4>Love is around you-for IND (The International Nurses Day on May 12th).</h4>                    <ul class="info-post">                <li><i class="fa fa-calendar"></i>2018-06-22</li>                <li><i class="fa fa-wechat"></i></li>                </ul>                <p></p>                <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=45f6940833d3470294e0d441d62cfea8"><img src="assets/img/video/chakangengduo_btn.png"></a></div>                </div>                </div><div id="tab3" style="display: none;">     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=5dc5da9f9691498a8bd92e308b9e385e"><img alt="" src="/upload/image/20180627/744ofsufv4jflp0c71ggv5lspp.jpg"></a></div>                <div class="text-content">                    <h4>Love is around you - for Youth Day on May 4th</h4>                    <ul class="info-post">                <li><i class="fa fa-calendar"></i>2018-06-22</li>                <li><i class="fa fa-wechat"></i></li>                </ul>                <p></p>                <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=5dc5da9f9691498a8bd92e308b9e385e"><img src="assets/img/video/chakangengduo_btn.png"></a></div>                </div>                </div><div id="tab4" style="display: none;">     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=5d66da58eb91490bbffc226366a8c1ba"><img alt="" src="/upload/image/20180627/uo52ug1cmag7ao22cm2163e9bp.png"></a></div>                <div class="text-content">                    <h4>Love is around you - The Public Event,Reading for elderly by Yongda, 2018</h4>                    <ul class="info-post">                <li><i class="fa fa-calendar"></i>2018-06-22</li>                <li><i class="fa fa-wechat"></i></li>                </ul>                <p></p>                <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=5d66da58eb91490bbffc226366a8c1ba"><img src="assets/img/video/chakangengduo_btn.png"></a></div>                </div>                </div><div id="tab5" style="display: none;">     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=9f8db35104f8401b9d8d88471f20793e"><img alt="" src="/upload/image/20180627/6pietu0jv0gohrvnq57rm7dj27.png"></a></div>                <div class="text-content">                    <h4>The Support to Heila village, Yiliang County from Shanghai new merchants association (new Shanghai) - a fresh outlook of "New Shanghai New village"</h4>                    <ul class="info-post">                <li><i class="fa fa-calendar"></i>2018-06-27</li>                <li><i class="fa fa-wechat"></i></li>                </ul>                <p></p>                <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=9f8db35104f8401b9d8d88471f20793e"><img src="assets/img/video/chakangengduo_btn.png"></a></div>                </div>                </div><div id="tab6" style="display: none;">     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=ce566df9e0c447cc80a4a94b399d94d1"><img alt="" src="/upload/image/20180627/rj83khqa58hjboeiqai3ueb14u.png"></a></div>                <div class="text-content">                    <h4>Traffic safety activity by Yongda helps the development of teenagers</h4>                    <ul class="info-post">                <li><i class="fa fa-calendar"></i>2018-06-22</li>                <li><i class="fa fa-wechat"></i></li>                </ul>                <p></p>                <div class="primary-button"><a style="background-color: transparent;" href="/pages/jdgljh.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39&amp;article_id=ce566df9e0c447cc80a4a94b399d94d1"><img src="assets/img/video/chakangengduo_btn.png"></a></div>                </div>                </div></div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contact-us">
    <div class="container contact-wrap">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <h1>Contact Us</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form id="contact" action="#" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <fieldset border="0">
                                <input name="name" class="form-control" id="name" required="" type="text" placeholder="Name：">
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <input name="email" class="form-control" id="email" required="" type="email" placeholder="E-Mail：">
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <input name="subject" class="form-control" id="subject" required="" type="text" placeholder="Title：">
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <input name="phone" class="form-control" id="phone" required="" type="phone" placeholder="Phone：">
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <textarea name="message" class="form-control" id="message" required="" placeholder="Content：" rows="6">Message content：</textarea>
                            </fieldset>
                        </div>
                        <div class="col-md-12" style="text-align: right;">
                            <fieldset>
                                <button class="btn" id="form-submit" type="button">Send your message</button>
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6"><div id="map"><img alt="" src="assets/img/map-location.jpg"></div></div>
        </div>
    </div>
</section>



<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-11">
                <ul>
                    <li>
                        <h4>主页</h4>
                        <p>
                            <a href="/">返回首页</a>
                        </p>
                    </li>
                    <li>
                        <h4>永达公益</h4>
                        <p>
                            <a href="/pages/gongyi.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=f9b229db18bb41fda2c3c6ffbf6b3f76">慈善晚宴</a>
                            <a href="/pages/banlaohd.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=569f36f604b34927aa9b4011e2d799de">伴老活动</a>
                            <a href="/pages/gyxm.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=aa95be2d0350438e9e089a17b2be1737">公益项目</a>
                            <a href="/pages/gzbg.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&amp;menu_id=e7176d1dfcc046299673c8fcad0f6cfb">爱心基金</a>
                        </p>
                    </li>
                    <li>
                        <h4>聚德慈善</h4>
                        <p>
                            <a href="/pages/gongyi.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=66ce7bb0d1714ef39df6165145a26cb0">关于聚德</a>
                            <a href="/pages/wrap.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=b92b182c457f4c25aa6a0adc2b7c384e">聚德慈善理念</a>
                            <a href="/pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=f66550494b6d43d19b8edac92473aed8">规章制度</a>
                            <a href="/pages/gzbg.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=d4f2a178fe0e4366a3ff0042faada8d2">审计报告</a>
                            <a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=635dfebb5f9e4787a601125c86fe8117">聚德“安心.宝贝”</a>
                            <a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=c1f98693c03145bda5bceb3f6d0fe921">聚德“甘霖”计划</a>
                            <a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=2404bbf3282842a0b874eb73461eabbd">中医大公益项目</a>
                            <a href="/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&amp;menu_id=1fa3a65500fe492f9f115772fd3dbd2b">聚德大不同学园</a>
                        </p>
                    </li>
                    <li>
                        <h4>社会影响</h4>
                        <p>
                            <a href="/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=b757346eba884baeaa84c7a8484ebc39">永达公益动态</a>
                            <a href="/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=d998b21f7b294fa280dcdaa090d05d28">聚德慈善动态</a>
                            <a href="/pages/mtgz.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=ea8e43be1b3249db9c00dee501d1c6f6">媒体关注</a>
                            <a href="/pages/cswy.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&amp;menu_id=cfda3aa9523846f7803c8fb4a805f0b2">永达公益视频</a>
                        </p>
                    </li>
                    <li>
                        <h4>信息公开</h4>
                        <p>
                            <a href="/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=a50715dbe2784be3bbe288fb33a20f5e">关于我们</a>
                            <a href="/pages/wrap.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=ae6d39b4e8d444a6b8a7e2fa5f857dae">永达公益理念</a>
                            <a href="/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=d1a280113926418bbeea5df7ef2a38f0">组织结构</a>
                            <a href="/pages/gyxm.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=a28f29952cf4410595425cbddafe590b">规章制度</a>
                            <a href="/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=abcf110d735e490c99217e0a8326f7fc">工作报告</a>
                            <a href="/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&amp;menu_id=db2cf68ca72f498e8c22da49b5dd301a">审计报告</a>
                        </p>
                    </li>
                    <li>
                        <h4>加入我们</h4>
                        <p>
                            <a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&amp;menu_id=4e91da05626c4bd582d96cf65b094270">成为捐赠人</a>
                            <a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&amp;menu_id=15fb32a0dd8e4bdeb44b6db0c5a990f8">成为志愿者</a>
                            <a href="/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&amp;menu_id=985d7ed48730483394caf77b4b842eab">联系我们</a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="col-md-1">
                <a href="#top"><img class="back-top" src="../assets/img/backtop.png"></a>
            </div>
        </div>
        <div class="link">
            <a href="#">Copyright © Yongda Foundation</a><a href="http://www.miitbeian.gov.cn/">沪ICP备18027416号</a>
        </div>
    </div>
</footer>

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
<script src="assets/js/imagesLoaded-4.1.2/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/swiper-3.4.1/js/swiper.min.js"></script>
<script src="assets/js/velocity/js/velocity.ui-5.0.4.min.js"></script>
<script src="assets/js/velocity/js/velocity-1.2.3.min.js"></script>
<script src="assets/js/modernizr-2.6.1/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script src="assets/js/custom/main.js"></script>
<script src="assets/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

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

        // 永达慈善hide, show and process tabgroup
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

        var pageno = 10;
        if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            pageno = 1;
        }

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
        $(".gallery-time .botdiv").click(function(){
            location.href="/pages/jdgljh.jsp?article_id="+$(this).data("id");
        });


        //永达动态消息推送
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

        //联系我们
        $("#form-submit").on("click",function(){
            var params = $("#contact").serialize();
            var url = '/platform/interface/info/addContact';

            $.post(url,params,function(data){
                if(data.status == 0) {
                    alert("Successful, thanks for your feedback!")
                    document.getElementById("contact").reset();
                    return;
                }
            },"json") ;
        })


    })
</script>



</body></html>