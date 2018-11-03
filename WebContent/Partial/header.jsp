<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="main-header OpacitySet">
    <div class="nav-wraper">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="/" class="navbar-brand"><img src="../assets/img/logo.png" class="yd-logo" alt="" /></a>
                <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="menu-first nav navbar-nav" style="margin-right:20px;">
                        <li><a href="<%=basePath%>index.html">主页</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-sect="#company-project" data-toggle="dropdown">永达公益</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=basePath%>pages/gongyi.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=f9b229db18bb41fda2c3c6ffbf6b3f76">慈善晚宴</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/banlaohd.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=569f36f604b34927aa9b4011e2d799de">伴老活动</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gyxm.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=aa95be2d0350438e9e089a17b2be1737">公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gzbg.jsp?parent_id=83d4920b596b4298b5f5a0d8de567889&menu_id=e7176d1dfcc046299673c8fcad0f6cfb">爱心基金</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-sect="#section-jude" data-toggle="dropdown">聚德慈善</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=basePath%>pages/gongyi.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=66ce7bb0d1714ef39df6165145a26cb0">关于聚德</a></li>
                                <li class="divider"></li>
                                <!--
                                <li><a href="<%=basePath%>pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=ec58e09141f348de99e7f6699687c500">公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=37629447fa2c4ff9bdc03fcd76ff23dc">聚德慈善介绍</a></li>
                                <li class="divider"></li>
                                -->
                                <li><a href="<%=basePath%>pages/wrap.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=b92b182c457f4c25aa6a0adc2b7c384e">聚德慈善理念</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gyxm.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=f66550494b6d43d19b8edac92473aed8">规章制度</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gzbg.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=d4f2a178fe0e4366a3ff0042faada8d2">审计报告</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=635dfebb5f9e4787a601125c86fe8117">聚德“安心.宝贝”</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=c1f98693c03145bda5bceb3f6d0fe921">聚德“甘霖”计划</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=2404bbf3282842a0b874eb73461eabbd">中医大公益项目</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=4e1fac4c7758443299e035a96aa7bdb3&menu_id=1fa3a65500fe492f9f115772fd3dbd2b">聚德大不同学园</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-sect="#company-video" data-toggle="dropdown">社会影响</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=basePath%>pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=b757346eba884baeaa84c7a8484ebc39">永达公益动态</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gyxm.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=d998b21f7b294fa280dcdaa090d05d28">聚德慈善动态</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/mtgz.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=ea8e43be1b3249db9c00dee501d1c6f6">媒体关注</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/cswy.jsp?parent_id=25585f1b1c1c4072870984b24b0e2ab3&menu_id=cfda3aa9523846f7803c8fb4a805f0b2">永达公益视频</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-sect="#company-news" data-toggle="dropdown">信息公开</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=a50715dbe2784be3bbe288fb33a20f5e">关于我们</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/wrap.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=ae6d39b4e8d444a6b8a7e2fa5f857dae">永达公益理念</a></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=d1a280113926418bbeea5df7ef2a38f0">组织结构</a></li>
                                <li><a href="<%=basePath%>pages/gyxm.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=a28f29952cf4410595425cbddafe590b">规章制度</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=abcf110d735e490c99217e0a8326f7fc">工作报告</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/gzbg.jsp?parent_id=a7a1c83aa28f4d07b2b9789c8ceef738&menu_id=db2cf68ca72f498e8c22da49b5dd301a">审计报告</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-sect="#contact-us" data-toggle="dropdown">加入我们</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=4e91da05626c4bd582d96cf65b094270">成为捐赠人</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=15fb32a0dd8e4bdeb44b6db0c5a990f8">成为志愿者</a></li>
                                <!--
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=fd012eba7383469c8c1b31ae06020394">爱心企业</a></li>
                                -->
                                <li class="divider"></li>
                                <li><a href="<%=basePath%>pages/jdgljh.jsp?parent_id=e9ab3f8cdc354e81a527b4f6948efa62&menu_id=985d7ed48730483394caf77b4b842eab">联系我们</a></li>
                            </ul>
                        </li>
                        <li class="enMenu"><a href="index2.jsp">English</a></li>
                        <li class="iconMenu" style="padding-left:30px;"><a id="wc-menu-icon" href="#wc-qr"><img src="/assets/img/top_02.png" /></a></li>
                        <li class="iconMenu"><a id="en-menu-icon" href="/index2.jsp">&nbsp;</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>