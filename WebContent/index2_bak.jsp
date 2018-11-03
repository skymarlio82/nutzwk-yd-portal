<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" type="image/png" href="favicon.png">

    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/js/font-awesome-3.2.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/js/swiper-3.4.1/css/swiper.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/styles/main.css">
    <link rel="stylesheet" href="assets/css/styles/style.css">
    <script src="../jquery.min.js" type="text/javascript"></script>

    <title>Yongda Foundation - 永达公益基金会</title>
</head>
<body>



<div class="main-header OpacitySet">
    <div class="nav-wraper">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a href="/" class="navbar-brand"><img src="../assets/img/logo.png" class="yd-logo" alt="" /></a>

                <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="menu-first nav navbar-nav" style="margin-right:20px;">
                        <li><a href="http://www.ydfoundation.cn:8080/index.html">主页</a></li>
                        <li class="dropdown">
                            <a href="#company-project" class="dropdown-toggle" data-toggle="dropdown">永达公益</a>
                            <ul class="dropdown-menu">
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gongyi.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=f9b229db18bb41fda2c3c6ffbf6b3f76">慈善晚宴</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/banlaohd.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=569f36f604b34927aa9b4011e2d799de">伴老活动</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=aa95be2d0350438e9e089a17b2be1737">公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=e7176d1dfcc046299673c8fcad0f6cfb">爱心基金</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#section-jude" class="dropdown-toggle" data-toggle="dropdown">聚德慈善</a>
                            <ul class="dropdown-menu">
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gongyi.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=66ce7bb0d1714ef39df6165145a26cb0">关于聚德</a></li>
                                <li class="divider"></li>
                                <!--
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=ec58e09141f348de99e7f6699687c500">公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=37629447fa2c4ff9bdc03fcd76ff23dc">聚德慈善介绍</a></li>
                                <li class="divider"></li>
                                -->
                                <li><a href="http://www.ydfoundation.cn:8080/pages/wrap.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=b92b182c457f4c25aa6a0adc2b7c384e">聚德慈善理念</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=f66550494b6d43d19b8edac92473aed8">规章制度</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=d4f2a178fe0e4366a3ff0042faada8d2">审计报告</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=635dfebb5f9e4787a601125c86fe8117">聚德“安心.宝贝”</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=c1f98693c03145bda5bceb3f6d0fe921">聚德“甘霖”计划</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=2404bbf3282842a0b874eb73461eabbd">中医大公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=1fa3a65500fe492f9f115772fd3dbd2b">聚德大不同学园</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#company-video" class="dropdown-toggle" data-toggle="dropdown">社会影响</a>
                            <ul class="dropdown-menu">
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=b757346eba884baeaa84c7a8484ebc39">永达公益动态</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=d998b21f7b294fa280dcdaa090d05d28">聚德慈善动态</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/mtgz.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=ea8e43be1b3249db9c00dee501d1c6f6">媒体关注</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/cswy.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=cfda3aa9523846f7803c8fb4a805f0b2">永达公益视频</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#company-news" class="dropdown-toggle" data-toggle="dropdown">信息公开</a>
                            <ul class="dropdown-menu">
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=a50715dbe2784be3bbe288fb33a20f5e">关于我们</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/wrap.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=ae6d39b4e8d444a6b8a7e2fa5f857dae">永达公益理念</a></li>

                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=d1a280113926418bbeea5df7ef2a38f0">组织结构</a></li>

                                <li><a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=a28f29952cf4410595425cbddafe590b">规章制度</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=abcf110d735e490c99217e0a8326f7fc">工作报告</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=db2cf68ca72f498e8c22da49b5dd301a">审计报告</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#contact-us" class="dropdown-toggle" data-toggle="dropdown">加入我们</a>
                            <ul class="dropdown-menu">
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=4e91da05626c4bd582d96cf65b094270">成为捐赠人</a></li>
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=15fb32a0dd8e4bdeb44b6db0c5a990f8">成为志愿者</a></li>
                                <!--<li class="divide   r"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=fd012eba7383469c8c1b31ae06020394">爱心企业</a></li>
                                -->
                                <li class="divider"></li>
                                <li><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=985d7ed48730483394caf77b4b842eab">联系我们</a></li>
                            </ul>
                        </li>

                        <li class="iconMenu" style="padding-left:30px;"><a id="wc-menu-icon" href="#wc-qr"><img src="/assets/img/top_02.png" /></a></li>
                        <li class="iconMenu"><a id="en-menu-icon" href="#wc-qr">&nbsp;</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
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
                    <div class="page1_sw_a" class ="boot_page1">
                    </div>
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
        <div class="page4_c">

        </div>
    </div>
</section>

<section id="section-jude" class="jude_bg">
    <div>
        <h1>聚 德 慈 善</h1>
    </div>
    <div class="jude_Container swiper-container">
        <div class="swiper-wrapper">

        </div>
        <div class="jd_button_next"></div>
        <div class="jd_button_prev"></div>
    </div>
    <div class="jd-paging ">

    </div>

</section>

<div id="company-video" class="second-tabs-content what-we-do">
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
                                <a class="active" data-item="#unique" href="#">
                                    <div class="list-item">
                                        <div class="icon"><img src="assets/img/icons/gongyi_icon.png" alt="" /></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#theme" href="#">
                                    <div class="list-item">
                                        <div class="icon"><img src="assets/img/icons/jiuhui_icon_1.png" alt="" /></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#translation" href="#">
                                    <div class="list-item">
                                        <div class="icon"><img src="assets/img/icons/luntan_icon_1.png" alt="" /></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#event" href="#">
                                    <div class="list-item">
                                        <div class="icon"><img src="assets/img/icons/shequ_icon_1.png" alt="" /></div>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3">
                                <a data-item="#photo" href="#">
                                    <div class="list-item">
                                        <div class="icon"><img src="assets/img/icons/fuqu_icon_1.png" alt="" /></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12">
                    <section id="second-tab-group" class="tabgroup">

                    </section>
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
                <div class="swiper-wrapper">


                </div>
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
                    <h2>永达公益动态</h2>
                    <p> &nbsp;</p>
                </div>
            </div>
        </div>
        <div class="row news_wrapper">
            <div class="wrapper">
                <div class="col-md-6">
                    <ul id="first_news_wrapper" class="tabs tabs_info clearfix" data-tabgroup="first-tab-group">

                    </ul>
                </div>
                <div class="col-md-6">
                    <div id="first-tab-group" class="tabgroup">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contact-us">
    <div class="container contact-wrap">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    <h1>联系我们</h1>
                </div>
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
            <div class="col-md-6"><div id="map"><img src="assets/img/map-location.jpg" width="100%" height="492px" alt="" /></div></div>
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
                            <a href="http://www.ydfoundation.cn:8080/index.html">返回首页</a>
                        </p>
                    </li>
                    <li>
                        <h4>永达公益</h4>
                        <p>
                            <a href="http://www.ydfoundation.cn:8080/pages/gongyi.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=f9b229db18bb41fda2c3c6ffbf6b3f76">慈善晚宴</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/banlaohd.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=569f36f604b34927aa9b4011e2d799de">伴老活动</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=aa95be2d0350438e9e089a17b2be1737">公益项目</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=e7176d1dfcc046299673c8fcad0f6cfb">爱心基金</a>
                        </p>
                    </li>
                    <li>
                        <h4>聚德慈善</h4>
                        <p>
                            <a href="http://www.ydfoundation.cn:8080/pages/gongyi.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=66ce7bb0d1714ef39df6165145a26cb0">关于聚德</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/wrap.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=b92b182c457f4c25aa6a0adc2b7c384e">聚德慈善理念</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=f66550494b6d43d19b8edac92473aed8">规章制度</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=d4f2a178fe0e4366a3ff0042faada8d2">审计报告</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=635dfebb5f9e4787a601125c86fe8117">聚德“安心.宝贝”</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=c1f98693c03145bda5bceb3f6d0fe921">聚德“甘霖”计划</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=2404bbf3282842a0b874eb73461eabbd">中医大公益项目</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=1fa3a65500fe492f9f115772fd3dbd2b">聚德大不同学园</a>
                        </p>
                    </li>
                    <li>
                        <h4>社会影响</h4>
                        <p>
                            <a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=b757346eba884baeaa84c7a8484ebc39">永达公益动态</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=d998b21f7b294fa280dcdaa090d05d28">聚德慈善动态</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/mtgz.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=ea8e43be1b3249db9c00dee501d1c6f6">媒体关注</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/cswy.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=cfda3aa9523846f7803c8fb4a805f0b2">永达公益视频</a>
                        </p>
                    </li>
                    <li>
                        <h4>信息公开</h4>
                        <p>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=a50715dbe2784be3bbe288fb33a20f5e">关于我们</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/wrap.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=ae6d39b4e8d444a6b8a7e2fa5f857dae">永达公益理念</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=d1a280113926418bbeea5df7ef2a38f0">组织结构</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gyxm.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=a28f29952cf4410595425cbddafe590b">规章制度</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=abcf110d735e490c99217e0a8326f7fc">工作报告</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=db2cf68ca72f498e8c22da49b5dd301a">审计报告</a>
                        </p>
                    </li>
                    <li>
                        <h4>加入我们</h4>
                        <p>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=4e91da05626c4bd582d96cf65b094270">成为捐赠人</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=15fb32a0dd8e4bdeb44b6db0c5a990f8">成为志愿者</a>
                            <a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=985d7ed48730483394caf77b4b842eab">联系我们</a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="col-md-1">
                <a href="#top"><img class="back-top" src="../assets/img/backtop.png"/></a>
            </div>
        </div>
        <div class="link">
            <a href="#">Copyright © Yongda Foundation</a><a href="#">沪ICP备88009898号-1</a><a href="http://www.cec-ceda.org.cn/famousdb/qiye751/intro.html" target="_blank">上海永达控股（集团）有限公司</a>
            <a href="http://www.ydauto.com.cn/cns/index/" target="_blank">中国永达汽车服务</a><a href="http://www.judew.com" target="_blank">聚德网</a><a href="http://shyd.ftms-dlr.com.cn/" target="_blank">上海永达</a>
        </div>
    </div>
</footer>

<!-- loading -->
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

<script src="jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.js"></script>
<script src="assets/js/imagesLoaded-4.1.2/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/swiper-3.4.1/js/swiper.min.js"></script>
<script src="assets/js/velocity/js/velocity.ui-5.0.4.min.js"></script>
<script src="assets/js/velocity/js/velocity-1.2.3.min.js"></script>
<script src="assets/js/modernizr-2.6.1/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script src="assets/js/custom/main.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        //初始化首页六宫格
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'46ca5a5a834f40209dfd134bb27fe55c',
                page_no:1,
                page_size:10
            },
            success: function(data){
                if(data.data.list != null){
                    //渲染列表
                    $(".page1_sw_a").empty();
                    $(data.data.list).each(function(i,event){
                        if(i == 0){
                            $(".page1_sw_a").append("<a href='javascript:void(0)' class=\"on\"><span class=\"sp1\">"+event.title+"<b></b></span></a>");
                        }else{
                            $(".page1_sw_a").append("<a href='javascript:void(0)'><span class=\"sp1\">"+event.title+"<b></b></span></a>");
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
                            $(".page4_c").append("<a href='http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id="+event.parent_id+"&menu_id="+event.channelid+"&article_id="+event.id+"' class=\"on\"><em>\n" +
                                "                <span class=\"spicon\"></span>\n" +
                                "                <span>"+event.title+"</span><i>"+event.info+"</i></em><b class=\"b1\"></b><b class=\"b2\"></b></a>");
                        }else{
                            $(".page4_c").append("<a href='http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id="+event.parent_id+"&menu_id="+event.channelid+"&article_id="+event.id+"'><em>\n" +
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

        var pageno = 10;
        if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            pageno = 1;
        }


        // //永达公益大事记
        $.ajax({
            url: "/platform/interface/info/searchArticleList",
            type: 'post',
            dataType: 'json',
            data: {
                channel_id:'8d111b11a6fc44138d736af40ddaf4f9',
                page_no:1,
                page_size:pageno
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
                    var perviewNum =isMobile()? 1: 4;
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
                page_size:10
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
                            '     <div class="img-zoom-wrap"><a href="http://www.ydfoundation.cn:8080/pages/jdgljh.jsp?parent_id='+event.parent_id+'&menu_id='+event.channelid+'&article_id=' + event.id + '"><img src="' + event.picurl + '" alt=""></a></div>' +
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
                if(data.status == 0) {
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
