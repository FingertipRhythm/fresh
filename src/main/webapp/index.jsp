<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
<head lang="en">
<base href="<%=basepath %>" />
    <meta charset="UTF-8">
    <title>超鲜网-首页</title>
    <link rel="stylesheet" href="css/member.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/banner.css"/>
    <link rel="stylesheet" href="css/tab.css"/>
    <link rel="stylesheet" href="css/table.css"/>
    <link rel="stylesheet" href="css/select.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
    <script type="text/javascript"></script>
</head>
<body>
<!--网站顶部-->
<div class="top">
    <div class="container">
        <div class="top-left">
            <p>欢迎${sessionScope.myuser.username }来到超鲜网</p>
            <c:if test="${sessionScope.myuser.username ==null }">
            	 <a href="login.jsp">请登录</a>
           		 <span>|</span>
           		 <a href="regist.jsp">免费注册</a>
            </c:if>
            <c:if test="${sessionScope.myuser.username !=null }">
            	 <a href="member-sj.jsp">去认证</a>
            </c:if>
           
        </div>
        <div class="top-right">
            <ul>
                <li><a href="javascript:;">帮助中心&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">我的关注&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">联系客服&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">网站导航&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">客服热线：<span>400-888-8888</span>&nbsp;&nbsp;|</a></li>
            </ul>
            <div class="attention">
                <p>关注我们：</p>
                <a class="weixin" href="javascript:;">
                    <img src="images/top-icon01.png" alt=""/>
                    <div class="weixin-erweima">
                        <i></i>
                        <img src="images/erweima.png" alt=""/>
                    </div>
                </a>
                <a class="xl" href="javascript:;"><img src="images/top-icon02.png" alt=""/></a>
                <a class="tx" href="javascript:;"><img src="images/top-icon03.png" alt=""/></a>
                <span>|</span>
            </div>
            <a class="version" href="javascript:;">English</a></div>
    </div>
</div>
<!--网站头部-->
<header>
    <div class="container">
         <a href="javascript:;" class="logo">
           <img src="images/logo.png" alt=""/>
         </a>
        <div class="search">
            <div class="search-form">
                <div class="input"><input type="text"/></div>
                <div class="button">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </div>
            </div>
            <div class="search-list">
                <a class="selected" href="javascript:;">A级牛肉</a>
                <span>|</span>
                <a href="javascript:;">进口猪肉</a>
                <span>|</span>
                <a href="javascript:;">A级排骨肉</a>
                <span>|</span>
                <a href="javascript:;">A级牛肉</a>
                <span>|</span>
                <a href="javascript:;">进口猪肉</a>
                <span>|</span>
                <a class="selected" href="javascript:;">A级排骨肉</a>
            </div>
        </div>
        <div class="cart">购物车中<span>0</span>件</div>
    </div>
</header>
<!--网站导航-->
<nav>
    <div class="container">
        <dl>
            <dt>
                <a class="pro-all" href="javascript:;">商品全部分类&nbsp;&nbsp;<i class="fa fa-sort-desc fa-caret-up"></i></a>
                <ul>
                    <c:forEach items="${productclasslist }" var="pl">
							<c:if test="${pl.fid==0 }">
								<li class="pro-sort">
									<div class="sort-first">
										<i class="fa fa-caret-right"></i>

										<!-- 一级分类 -->
										<a class="tit" href="">${pl.classname }</a>

										<!-- 二级分类 -->
										<div class="con">
											<c:forEach items="${productclasslist }" var="pl2">
												<c:if test="${pl2.fid==pl.classid }">
													<a href="">${pl2.classname }</a>
												</c:if>
											</c:forEach>
										</div>
									</div>

									<div class="sort-second">
										<c:forEach items="${productclasslist }" var="pl2">
											<c:if test="${pl2.fid==pl.classid }">
												<div class="second-list">
													<a class="second-tit" href="">${pl2.classname }<i
														class="fa fa-angle-right"></i></a>
													<!-- 三级分类 -->
													<div class="second-con">
														<c:forEach items="${productclasslist }" var="pl3">
															<c:if test="${pl3.fid==pl2.classid }">
																<span>|</span>
																<a href="">${pl3.classname }</a>
															</c:if>
														</c:forEach>
													</div>
												</div>
											</c:if>
										</c:forEach>
										<a class="second-add" href=""><img
											src="images/sort-add01.jpg" alt="" /></a>
									</div>
								</li>
							</c:if>
						</c:forEach>
                </ul>
            </dt>
            <dd><a class="selected" href="javascript:;">首页</a></dd>
            <dd><a href="sup/showResource">资源</a></dd>
            <dd><a href="pc/enter">采购</a></dd>
            <dd><a href="search.jsp">搜索</a></dd>
            <dd><a href="javascript:;">物流</a></dd>
            <dd><a href="javascript:;">行情</a></dd>
            <dd><a href="javascript:;">积分商城</a></dd>
            <dd><a href="members.jsp">会员俱乐部</a></dd>
        </dl>
    </div>
</nav>
<div class="content">
    <div class="container">
        <!--首页banner-->
        <div id="bannerIndex" class="banner-index">
            <div class="hd">
                <ul>
                    <li class="on">1</li>
                    <li>2</li>
                    <li>3</li>
                </ul>
            </div>
            <div class="bd">
                <ul>
                    <li><a href="javascript:;" target="_blank"><img src="images/banner-index01.jpg"></a></li>
                    <li><a href="javascript:;" target="_blank"><img src="images/banner-index01.jpg"></a></li>
                    <li><a href="javascript:;" target="_blank"><img src="images/banner-index01.jpg"></a></li>
                </ul>
            </div>
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
        <!--交易行情01-->
        <div class="quotes01">
            <div class="lib-tab1">
                <ul class="lib-menu">
                    <li class="hover">交易行情</li>
                    <li>物流行情</li>
                    <li>市场行情</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <div class="banner-quotes01">
                            <div class="hd">
                                <ul>
                                    <li class="on"></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="bd">
                                    <ul>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>  
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="child-content" style="display: none;">
                         <div class="banner-quotes01">
                            <div class="hd">
                                <ul>
                                    <li class="on"></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="bd">
                                     <ul>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>  
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="child-content" style="display: none;">
                         <div class="banner-quotes01">
                            <div class="hd">
                                <ul>
                                    <li class="on"></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl class="accordion" id="my-accordion">
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                          <dt>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-weight">120G</div>
                                              <div class="quotes01-prices">20-100</div>
                                          </dt>
                                          <dd>
                                              <div class="quotes01-date">交易日期：05月14日  10:20</div>
                                              <div class="quotes01-name">鱿鱼</div>
                                              <div class="quotes01-prices"><span>80</span>￥</div>
                                              <div class="quotes01-percent">16.3%</div>
                                              <div class="quotes01-weight">120G</div>
                                          </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--找货助手-->
        <div class="helpMe">
           <img src="images/helpMe-icon01.png" alt="" class="helpMe-img">
           <form action="">
               <input type="text" class="helpMe-input">
               <input type="submit" class="helpMe-sub">
           </form>
           <div class="helpMe-tel">400-888-8888</div>
        </div>
        <!--交易行情02-->
        <div class="quotes02">
            <h5>交易行情</h5>
            <div class="lib-tab2">
                <ul class="lib-menu">
                    <li class="hover">水产类</li>
                    <li>速冻食品类</li>
                    <li>调理品类</li>
                    <li>禽类</li>
                    <li>冻肉类</li>
                    <li>其它冻肉类</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                               <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                               <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                        <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                                <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="child-content" style="display: none;">
                               <!-- 交易行情02广告 -->
                        <div class="banner-quotes02">
                            <div class="hd">
                                <ul>
                                    <li class="on">1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </div>
                            <div class="bd">
                                <ul>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                    <li><a href="javascript:;"><img src="images/lastTrade-pic01.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 交易行情02 信息列表 -->
                        <table class="quotes02-list">
                            <thead>
                                <tr>
                                    <th colspan="2">最近价格概况</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th style="width:100px;">产品</th>
                                                    <th>规格</th>
                                                    <th>价格区间</th>
                                                    <th>波动</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>蟹类</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                 <tr>
                                                    <td>鱿鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                                <tr>
                                                    <td>大头鱼</td>
                                                    <td>6.5</td>
                                                    <td>20-100</td>
                                                    <td>16.2%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!--实时交易-->
        <div class="trading">
           <div class="tit">实时交易信息</div>
           <dl class="con">
               <dt>
                   <div class="trading-user">用户</div>
                   <div class="trading-con">采购内容</div>
                   <div class="trading-state">交易状态</div>
                   <div class="trading-date">时间</div>
               </dt>
               <dd class="txtScroll-top">
                    <div class="bd">
                        <ul>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                            <li><a href="javascript:;">
                                <div class="trading-user">陈**</div>
                                <div class="trading-con">水产类</div>
                                <div class="trading-state">在线下单</div>
                                <div class="trading-date">11:01</div>
                            </a></li>
                        </ul>
                    </div>
               </dd>
           </dl>
        </div>
        <!-- 首页广告 -->
        <a class="index-add">
            <img src="images/index-add01.jpg" alt="">
        </a>
        <!--查询工具-->
        <div class="inquiry-tool">
            <div class="lib-tab3">
                <ul class="lib-menu">
                    <li class="hover"><i class="fa fa-search-plus"></i>查询路线</li>
                    <li><i class="fa fa-home"></i>仓库查询</li>
                    <li><i class="fa fa-truck"></i>物流跟踪</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <label for ="" style="z-index:3;">
                            <p>发货地：</p>
                            <input type="text" class="input01 w170">
                            <i class="fa fa-bars"></i>
                            <div class="inquiry-list">
                                 <div class="lib-tab9">
                                    <a href="javascript:;" class="closed">X</a>
                                    <ul class="lib-menu">
                                        <li class="hover">常用</li>
                                        <li>省</li>
                                        <li>市</li>
                                        <li>区县</li>
                                    </ul>
                                    <div class="lib-content">
                                        <div class="child-content" style="display: block;">
                                            <div class="inquiry-span" index="0">
                                                <span data-name="北京-北京市1">深圳</span>
                                                <span data-name="北京-北京市2">深圳深圳</span>
                                                <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                <span data-name="北京-北京市4">深圳是</span>
                                                <span data-name="北京-北京市5">深圳</span>
                                                <span data-name="北京-北京市6">深圳</span>
                                                <span data-name="北京-北京市7">深圳</span>
                                                <span data-name="北京-北京市8">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳深圳</span>
                                                <span data-name="北京-北京市">深圳深圳深圳</span>
                                                <span data-name="北京-北京市">深圳是</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                            </div>
                                        </div>
                                        <div class="child-content" style="display: none;">
                                            <div class="inquiry-span" index="1">
                                                <dl>
                                                    <dt>A-G</dt>
                                                    <dd>
                                                        <span data-name="北京-北京市1">深圳</span>
                                                        <span data-name="北京-北京市2">深圳深圳</span>
                                                        <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市4">深圳是</span>
                                                        <span data-name="北京-北京市5">深圳</span>
                                                        <span data-name="北京-北京市6">深圳</span>
                                                        <span data-name="北京-北京市7">深圳</span>
                                                        <span data-name="北京-北京市8">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳是</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                    </dd>
                                                </dl>
                                                <dl>
                                                    <dt>H-K</dt>
                                                    <dd>
                                                        <span data-name="北京-北京市1">深圳</span>
                                                        <span data-name="北京-北京市2">深圳深圳</span>
                                                        <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市4">深圳是</span>
                                                        <span data-name="北京-北京市5">深圳</span>
                                                        <span data-name="北京-北京市6">深圳</span>
                                                        <span data-name="北京-北京市7">深圳</span>
                                                        <span data-name="北京-北京市8">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳是</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="child-content" style="display: none;">
                                            <div class="inquiry-span" index="2">
                                               <span data-name="北京-北京市1">深圳</span>
                                                <span data-name="北京-北京市2">深圳深圳</span>
                                                <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                <span data-name="北京-北京市4">深圳是</span>
                                                <span data-name="北京-北京市5">深圳</span>
                                                <span data-name="北京-北京市6">深圳</span>
                                                <span data-name="北京-北京市7">深圳</span>
                                                <span data-name="北京-北京市8">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳深圳</span>
                                                <span data-name="北京-北京市">深圳深圳深圳</span>
                                                <span data-name="北京-北京市">深圳是</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                            </div>
                                        </div>
                                        <div class="child-content" style="display: none;">
                                             <div class="inquiry-span" index="3">
                                                <span data-name="北京-北京市1">深圳</span>
                                                <span data-name="北京-北京市2">深圳深圳</span>
                                                <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                <span data-name="北京-北京市4">深圳是</span>
                                                <span data-name="北京-北京市5">深圳</span>
                                                <span data-name="北京-北京市6">深圳</span>
                                                <span data-name="北京-北京市7">深圳</span>
                                                <span data-name="北京-北京市8">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳深圳</span>
                                                <span data-name="北京-北京市">深圳深圳深圳</span>
                                                <span data-name="北京-北京市">深圳是</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                        <label for ="">
                            <p>收货地：</p>
                            <input type="text" class="input01 w170">
                            <i class="fa fa-bars"></i>
                            <div class="inquiry-list">
                                 <div class="lib-tab9">
                                    <a href="javascript:;" class="closed">X</a>
                                    <ul class="lib-menu">
                                        <li class="hover">常用</li>
                                        <li>省</li>
                                        <li>市</li>
                                        <li>区县</li>
                                    </ul>
                                    <div class="lib-content">
                                        <div class="child-content" style="display: block;">
                                            <div class="inquiry-span" index="0">
                                                <span data-name="北京-北京市1">深圳</span>
                                                <span data-name="北京-北京市2">深圳深圳</span>
                                                <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                <span data-name="北京-北京市4">深圳是</span>
                                                <span data-name="北京-北京市5">深圳</span>
                                                <span data-name="北京-北京市6">深圳</span>
                                                <span data-name="北京-北京市7">深圳</span>
                                                <span data-name="北京-北京市8">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳深圳</span>
                                                <span data-name="北京-北京市">深圳深圳深圳</span>
                                                <span data-name="北京-北京市">深圳是</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                            </div>
                                        </div>
                                        <div class="child-content" style="display: none;">
                                            <div class="inquiry-span" index="1">
                                                <dl>
                                                    <dt>A-G</dt>
                                                    <dd>
                                                        <span data-name="北京-北京市1">深圳</span>
                                                        <span data-name="北京-北京市2">深圳深圳</span>
                                                        <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市4">深圳是</span>
                                                        <span data-name="北京-北京市5">深圳</span>
                                                        <span data-name="北京-北京市6">深圳</span>
                                                        <span data-name="北京-北京市7">深圳</span>
                                                        <span data-name="北京-北京市8">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳是</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                    </dd>
                                                </dl>
                                                <dl>
                                                    <dt>H-K</dt>
                                                    <dd>
                                                        <span data-name="北京-北京市1">深圳</span>
                                                        <span data-name="北京-北京市2">深圳深圳</span>
                                                        <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市4">深圳是</span>
                                                        <span data-name="北京-北京市5">深圳</span>
                                                        <span data-name="北京-北京市6">深圳</span>
                                                        <span data-name="北京-北京市7">深圳</span>
                                                        <span data-name="北京-北京市8">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳深圳深圳</span>
                                                        <span data-name="北京-北京市">深圳是</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                        <span data-name="北京-北京市">深圳</span>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="child-content" style="display: none;">
                                            <div class="inquiry-span" index="2">
                                               <span data-name="北京-北京市1">深圳</span>
                                                <span data-name="北京-北京市2">深圳深圳</span>
                                                <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                <span data-name="北京-北京市4">深圳是</span>
                                                <span data-name="北京-北京市5">深圳</span>
                                                <span data-name="北京-北京市6">深圳</span>
                                                <span data-name="北京-北京市7">深圳</span>
                                                <span data-name="北京-北京市8">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳深圳</span>
                                                <span data-name="北京-北京市">深圳深圳深圳</span>
                                                <span data-name="北京-北京市">深圳是</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                            </div>
                                        </div>
                                        <div class="child-content" style="display: none;">
                                             <div class="inquiry-span" index="3">
                                                <span data-name="北京-北京市1">深圳</span>
                                                <span data-name="北京-北京市2">深圳深圳</span>
                                                <span data-name="北京-北京市3">深圳深圳深圳</span>
                                                <span data-name="北京-北京市4">深圳是</span>
                                                <span data-name="北京-北京市5">深圳</span>
                                                <span data-name="北京-北京市6">深圳</span>
                                                <span data-name="北京-北京市7">深圳</span>
                                                <span data-name="北京-北京市8">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳深圳</span>
                                                <span data-name="北京-北京市">深圳深圳深圳</span>
                                                <span data-name="北京-北京市">深圳是</span>
                                                <span data-name="北京-北京市">深圳</span>
                                                <span data-name="北京-北京市">深圳</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                        <input type="submit" value="查询" class="btn02">
                    </div>
                    <div class="child-content" style="display: none;">
                        <label for ="">
                            <p>地区：</p>
                            <input type="text" class="input01 w170">
                        </label>
                        <label for ="">
                            <p>街道：</p>
                            <input type="text" class="input01 w170">
                        </label>
                        <input type="submit" value="查询" class="btn02">
                    </div>
                    <div class="child-content" style="display: none;">
                        <label for ="">
                            <p>运单号：</p>
                            <input type="text" class="input01 w170">
                        </label>
                        <input type="submit" value="查询" class="btn02">
                    </div>
                </div>
            </div>
            <div class="inquiry-pic">
                <img src="images/inquiry-pic01.png" alt="">
            </div>
        </div>
        <!--热门路线-->
        <div class="popular-routes">
            <div class="tit">热门线路</div>
            <div class="con">
                <div class="routes-left">
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                </div>
                <div class="routes-right">
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                    <a class="otw" href="javascript:;">深圳市 <i class="fa fa-long-arrow-right"></i> 上海市 0.44元/公斤 120元/立方</a>
                </div>
            </div>
        </div>
        <!--查询货物信息-->
        <div class="inquiry-infor">
            <div class="tit">查询货物信息</div>
            <div class="con">
                <label for="">
                    <p>发货地：</p>
                    <input type="text" class="input02 w155"/>
                </label>
                <label for="">
                    <p>收货地：</p>
                    <input type="text" class="input02 w155"/>
                </label>
                <label for="">
                    <p>货物类型：</p>
                    <select name="" id="" class="select01 w155">
                          <option value="">请选择</option>
                          <option value="">类型一</option>
                          <option value="">类型二</option>
                          <option value="">类型三</option>
                    </select>
                </label>
                <input value="查询" type="submit" class="btn02"/>
            </div>
        </div>
    </div>
</div>
<!--网站底部-->
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="footer-left">
                <div class="footer-logo"><img src="images/logo.png" alt=""/></div>
                <div class="footer-tel">
                    <h6>服务热线：</h6>
                    <p>400-888-8888</p>
                </div>
            </div>
            <div class="footer-nav">
                <dl style="background: url(images/footer-icon01.png) no-repeat top left;">
                    <dt><a href="javascript:;">购物指南</a></dt>
                    <dd><a href="">购物流程</a><a href="">订货方式</a><a href="">联系客服</a><a href="">交易条款</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon02.png) no-repeat top left;">
                    <dt><a href="javascript:;">支付方式</a></dt>
                    <dd><a href="">银行付款</a><a href="">在线支付</a><a href="">组合支付</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon03.png) no-repeat top left;">
                    <dt><a href="javascript:;">物流帮助</a></dt>
                    <dd><a href="">如何找车</a><a href="">常见问题</a><a href="">运送流程</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon04.png) no-repeat top left;">
                    <dt><a href="javascript:;">售后服务</a></dt>
                    <dd><a href="">售后服务总则</a><a href="">服务政策</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon05.png) no-repeat top left;">
                    <dt><a href="javascript:;">帮助中心</a></dt>
                    <dd><a href="">网点分布</a><a href="">加盟商区</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="copy">
        <div class="copy-nav">
            <a href="javascript:;">关于我们</a>
            <span>|</span>
            <a href="javascript:;">法律声明</a>
            <span>|</span>
            <a href="javascript:;">诚聘英才</a>
            <span>|</span>
            <a href="javascript:;">联系我们</a>
            <span>|</span>
            <a href="javascript:;">友情链接</a>
        </div>
        <p>Copyright <i class="fa fa-copyright"></i> 超鲜网 粤ICP备 13013915号-3  ICP证：粤B2-201401448</p>
    </div>
</footer>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script type="text/javascript" src="js/jquery.selectBox.js"></script>
<script type="text/javascript">
    jQuery("#bannerIndex").slide({mainCell:".bd ul",autoPlay:true});
    jQuery(".banner-quotes01").each(function(){
        $(this).slide({mainCell:".bd ul",autoPlay:false});
    });
     jQuery(".banner-quotes02").each(function(){
        $(this).slide({mainCell:".bd ul",autoPlay:false});
    });
    jQuery(".txtScroll-top").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:13});
</script>
<script type="text/javascript">
    $(function(){
      $('dl#my-accordion').accordion({open:true});
     });
</script>
</body>
</html>