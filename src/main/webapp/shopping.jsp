<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>超鲜网-采购</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/page.css"/>
    <link rel="stylesheet" href="css/banner.css"/>
    <link rel="stylesheet" href="css/tab.css"/>
    <link rel="stylesheet" href="css/table.css"/>
    <link rel="stylesheet" href="css/select.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
    <!--[if lt IE 10]>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>
<!--网站顶部-->
<div class="top">
    <div class="container">
        <div class="top-left">
            <p>欢迎来到超鲜网</p>
            <a href="javascript:;">请登录</a>
            <span>|</span>
            <a href="javascript:;">免费注册</a>
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
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">水产海鲜类</a>
                            <div class="con">
                               <a href="">鱼类</a>
                               <a href="">贝类</a>
                               <a href="">虾蟹类</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">鱼类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a><span>|</span><a href="">多春鱼</a><span>|</span><a href="">黄花鱼</a><span>|</span><a href="">龙利鱼</a><span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">贝类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">北极贝</a><span>|</span><a href="">青口贝</a><span>|</span><a href="">扇贝</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">虾蟹类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">红虾</a><span>|</span><a href="">基围虾</a><span>|</span><a href="">波士顿龙虾</a><span>|</span><a href="">海虎虾</a><span>|</span><a href="">大闸蟹</a><span>|</span><a href="">帝王蟹</a><span>|</span><a href="">阿拉斯加蟹脚</a><span>|</span><a href="">雪蟹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">禽类</a>
                            <div class="con">
                               <a href="">猪</a>
                               <a href="">牛</a>
                               <a href="">羊</a>
                               <a href="">鸡</a>
                               <a href="">鸭</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">鱼类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a><span>|</span><a href="">多春鱼</a><span>|</span><a href="">黄花鱼</a><span>|</span><a href="">龙利鱼</a><span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">贝类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">北极贝</a><span>|</span><a href="">青口贝</a><span>|</span><a href="">扇贝</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">虾蟹类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">红虾</a><span>|</span><a href="">基围虾</a><span>|</span><a href="">波士顿龙虾</a><span>|</span><a href="">海虎虾</a><span>|</span><a href="">大闸蟹</a><span>|</span><a href="">帝王蟹</a><span>|</span><a href="">阿拉斯加蟹脚</a><span>|</span><a href="">雪蟹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">粮油副食类</a>
                            <div class="con">
                               <a href="">大米类</a>
                               <a href="">食用油类</a>
                               <a href="">杂粮类</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">鱼类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a><span>|</span><a href="">多春鱼</a><span>|</span><a href="">黄花鱼</a><span>|</span><a href="">龙利鱼</a><span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">贝类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">北极贝</a><span>|</span><a href="">青口贝</a><span>|</span><a href="">扇贝</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">虾蟹类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">红虾</a><span>|</span><a href="">基围虾</a><span>|</span><a href="">波士顿龙虾</a><span>|</span><a href="">海虎虾</a><span>|</span><a href="">大闸蟹</a><span>|</span><a href="">帝王蟹</a><span>|</span><a href="">阿拉斯加蟹脚</a><span>|</span><a href="">雪蟹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">熟食调理类</a>
                            <div class="con">
                               <a href="">肉丸类</a>
                               <a href="">水饺类</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">鱼类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a><span>|</span><a href="">多春鱼</a><span>|</span><a href="">黄花鱼</a><span>|</span><a href="">龙利鱼</a><span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">贝类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">北极贝</a><span>|</span><a href="">青口贝</a><span>|</span><a href="">扇贝</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">虾蟹类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">红虾</a><span>|</span><a href="">基围虾</a><span>|</span><a href="">波士顿龙虾</a><span>|</span><a href="">海虎虾</a><span>|</span><a href="">大闸蟹</a><span>|</span><a href="">帝王蟹</a><span>|</span><a href="">阿拉斯加蟹脚</a><span>|</span><a href="">雪蟹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">调料类</a>
                            <div class="con">
                               <a href="">酱料类</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">鱼类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a><span>|</span><a href="">多春鱼</a><span>|</span><a href="">黄花鱼</a><span>|</span><a href="">龙利鱼</a><span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">贝类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">北极贝</a><span>|</span><a href="">青口贝</a><span>|</span><a href="">扇贝</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">虾蟹类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">红虾</a><span>|</span><a href="">基围虾</a><span>|</span><a href="">波士顿龙虾</a><span>|</span><a href="">海虎虾</a><span>|</span><a href="">大闸蟹</a><span>|</span><a href="">帝王蟹</a><span>|</span><a href="">阿拉斯加蟹脚</a><span>|</span><a href="">雪蟹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <a class="tit" href="">其他</a>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">鱼类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a><span>|</span><a href="">多春鱼</a><span>|</span><a href="">黄花鱼</a><span>|</span><a href="">龙利鱼</a><span>|</span><a href="">三文鱼</a><span>|</span><a href="">银鳕鱼</a><span>|</span><a href="">鳗鱼</a><span>|</span><a href="">金枪鱼</a><span>|</span><a href="">鲍鱼</a><span>|</span><a href="">带鱼</a><span>|</span><a href="">秋刀鱼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">贝类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">北极贝</a><span>|</span><a href="">青口贝</a><span>|</span><a href="">扇贝</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">虾蟹类<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">红虾</a><span>|</span><a href="">基围虾</a><span>|</span><a href="">波士顿龙虾</a><span>|</span><a href="">海虎虾</a><span>|</span><a href="">大闸蟹</a><span>|</span><a href="">帝王蟹</a><span>|</span><a href="">阿拉斯加蟹脚</a><span>|</span><a href="">雪蟹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                </ul>
            </dt>
            <dd><a class="selected" href="javascript:;">首页</a></dd>
            <dd><a href="javascript:;">资源</a></dd>
            <dd><a href="javascript:;">采购</a></dd>
            <dd><a href="javascript:;">搜索</a></dd>
            <dd><a href="javascript:;">物流</a></dd>
            <dd><a href="javascript:;">行情</a></dd>
            <dd><a href="javascript:;">积分商城</a></dd>
            <dd><a href="javascript:;">会员俱乐部</a></dd>
        </dl>
    </div>
</nav>
<div class="content">
    <div class="container">
        <!-- 面包屑导航 -->
        <div class="bread-crumbs">
            <a href="javascript:;">首页</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;" class="selected">全部采购</a>
        </div>
        <!-- 内容主体区 -->
        <div class="content-main">
            <!-- 内页标题 -->
            <div class="page-tit">在线采购</div>
            <!-- 搜索表格 -->
            <div class="lib-tab4">
                <ul class="lib-menu">
                    <li class="hover">全部采购</li>
                    <li>正在进行采购</li>
                    <li>已结束采购</li>
                </ul>
                <div class="lib-content">
                    <div class="child-content" style="display: block;">
                        <dl class="search-quick">
                            <dt>快速检索</dt>
                            <dd>
                                <div class="search-form02">
                                    <div class="input"><input type="text"></div>
                                    <div class="button">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </dd>
                        </dl>
                        <!-- 采购左边 -->
                        <div class="purchase-left">
                            <dl>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="member-mybilldetail.jsp" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                             </dl>
                             <!-- page -->
                            <div class="list-page">
                                <ul>
                                    <li><a href="javascript:;" class="prev-listPage prev-disable">上一页</a></li>
                                    <li><a href="javascript:;" id="hover-listPage">1</a></li>
                                    <li><a href="javascript:;">2</a></li>
                                    <li><a href="javascript:;">3</a></li>
                                    <li><a href="javascript:;">4</a></li>
                                    <li><a href="javascript:;" class="omitted">...</a></li>
                                    <li><a href="javascript:;">100</a></li>
                                    <li><a href="javascript:;" class="next-listPage">下一页</a></li>
                                    <li><span>到第</span><input type="text"><span>页</span></li>
                                    <li><a href="javascript:;" class="jump-page">确定</a></li>
                                </ul>
                            </div>
                         </div>
                        <!-- 采购右边 -->
                        <div class="purchase-right">
                           <!-- 发布清单按钮 -->
                           <a href="javascript:;" class="btn05"><i class="fa fa-file-text-o"></i>我要发布采购清单</a>
                           <!-- 热门采购单 -->
                           <div class="inventory">
                               <div class="tit">热门采购清单</div>
                               <dl class="con">
                                   <dd class="txtScroll-top">
                                        <div class="bd">
                                            <ul>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                 <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                            </ul>
                                        </div>
                                   </dd>
                               </dl>
                            </div>
                            <!-- 资源广告 -->
                            <a href="javascript:;" class="purchase-add"><img src="images/purchase-add01.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="child-content" style="display: none;">
                         <dl class="search-quick">
                            <dt>快速检索</dt>
                            <dd>
                                <div class="search-form02">
                                    <div class="input"><input type="text"></div>
                                    <div class="button">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </dd>
                        </dl>
                        <!-- 采购左边 -->
                        <div class="purchase-left">
                            <dl>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                             </dl>
                             <!-- page -->
                            <div class="list-page">
                                <ul>
                                    <li><a href="javascript:;" class="prev-listPage prev-disable">上一页</a></li>
                                    <li><a href="javascript:;" id="hover-listPage">1</a></li>
                                    <li><a href="javascript:;">2</a></li>
                                    <li><a href="javascript:;">3</a></li>
                                    <li><a href="javascript:;">4</a></li>
                                    <li><a href="javascript:;" class="omitted">...</a></li>
                                    <li><a href="javascript:;">100</a></li>
                                    <li><a href="javascript:;" class="next-listPage">下一页</a></li>
                                    <li><span>到第</span><input type="text"><span>页</span></li>
                                    <li><a href="javascript:;" class="jump-page">确定</a></li>
                                </ul>
                            </div>
                         </div>
                        <!-- 采购右边 -->
                        <div class="purchase-right">
                           <!-- 发布清单按钮 -->
                           <a href="javascript:;" class="btn05"><i class="fa fa-file-text-o"></i>我要发布采购清单</a>
                           <!-- 热门采购单 -->
                           <div class="inventory">
                               <div class="tit">热门采购清单</div>
                               <dl class="con">
                                   <dd class="txtScroll-top">
                                        <div class="bd">
                                            <ul>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                 <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                            </ul>
                                        </div>
                                   </dd>
                               </dl>
                            </div>
                            <!-- 资源广告 -->
                            <a href="javascript:;" class="purchase-add"><img src="images/purchase-add01.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="child-content" style="display: none;">
                         <dl class="search-quick">
                            <dt>快速检索</dt>
                            <dd>
                                <div class="search-form02">
                                    <div class="input"><input type="text"></div>
                                    <div class="button">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </dd>
                        </dl>
                        <!-- 采购左边 -->
                        <div class="purchase-left">
                            <dl>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                                 <dd>
                                    <i class="fa fa-comment"></i>
                                    <div class="tit">
                                        <a href="javascript:;" class="otw">我想要采购1吨进口的鸡翅我想要采购1吨进口的鸡翅我想要采购1吨</a>
                                        <span class="goOn">【进行中】</span>
                                    </div>
                                    <div class="user">lrxl***&nbsp;&nbsp;&nbsp;于2015-5-4 16:38 发表</div>
                                    <div class="intro">简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明简要说明···</div>
                                 </dd>
                             </dl>
                             <!-- page -->
                            <div class="list-page">
                                <ul>
                                    <li><a href="javascript:;" class="prev-listPage prev-disable">上一页</a></li>
                                    <li><a href="javascript:;" id="hover-listPage">1</a></li>
                                    <li><a href="javascript:;">2</a></li>
                                    <li><a href="javascript:;">3</a></li>
                                    <li><a href="javascript:;">4</a></li>
                                    <li><a href="javascript:;" class="omitted">...</a></li>
                                    <li><a href="javascript:;">100</a></li>
                                    <li><a href="javascript:;" class="next-listPage">下一页</a></li>
                                    <li><span>到第</span><input type="text"><span>页</span></li>
                                    <li><a href="javascript:;" class="jump-page">确定</a></li>
                                </ul>
                            </div>
                         </div>
                        <!-- 采购右边 -->
                        <div class="purchase-right">
                           <!-- 发布清单按钮 -->
                           <a href="javascript:;" class="btn05"><i class="fa fa-file-text-o"></i>我要发布采购清单</a>
                           <!-- 热门采购单 -->
                           <div class="inventory">
                               <div class="tit">热门采购清单</div>
                               <dl class="con">
                                   <dd class="txtScroll-top">
                                        <div class="bd">
                                            <ul>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                 <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                                <li><a href="javascript:;">
                                                    <div class="name">我想要采购1吨进口的鸡翅...</div>
                                                    <div class="state"><span class="goOn">【进行中】</span></div>
                                                </a></li>
                                            </ul>
                                        </div>
                                   </dd>
                               </dl>
                            </div>
                            <!-- 资源广告 -->
                            <a href="javascript:;" class="purchase-add"><img src="images/purchase-add01.jpg" alt=""></a>
                        </div>
                        
                    </div>
                </div>
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
<script type="text/javascript" src="js/select.js"></script>
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