<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">s
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>ä¾åºåç®¡ç-éè´­ç®¡ç-æçè®¢å-ä¸ä¼ äº¤æå­è¯</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/page.css"/>
    <link rel="stylesheet" href="css/member.css"/>
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
<!--ç½ç«é¡¶é¨-->
<div class="top">
    <div class="container">
        <div class="top-left">
            <p>æ¬¢è¿æ¥å°è¶é²ç½</p>
            <a href="javascript:;">è¯·ç»å½</a>
            <span>|</span>
            <a href="javascript:;">åè´¹æ³¨å</a>
        </div>
        <div class="top-right">
            <ul>
                <li><a href="javascript:;">å¸®å©ä¸­å¿&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">æçå³æ³¨&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">èç³»å®¢æ&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">ç½ç«å¯¼èª&nbsp;&nbsp;|</a></li>
                <li><a href="javascript:;">å®¢æç­çº¿ï¼<span>400-888-8888</span>&nbsp;&nbsp;|</a></li>
            </ul>
            <div class="attention">
                <p>å³æ³¨æä»¬ï¼</p>
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
<!--ç½ç«å¤´é¨-->
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
                <a class="selected" href="javascript:;">Açº§çè</a>
                <span>|</span>
                <a href="javascript:;">è¿å£çªè</a>
                <span>|</span>
                <a href="javascript:;">Açº§æéª¨è</a>
                <span>|</span>
                <a href="javascript:;">Açº§çè</a>
                <span>|</span>
                <a href="javascript:;">è¿å£çªè</a>
                <span>|</span>
                <a class="selected" href="javascript:;">Açº§æéª¨è</a>
            </div>
        </div>
        <div class="cart">è´­ç©è½¦ä¸­<span>0</span>ä»¶</div>
    </div>
</header>
<!--ç½ç«å¯¼èª-->
<nav>
    <div class="container">
        <dl>
            <dt>
                <a class="pro-all" href="javascript:;">ååå¨é¨åç±»&nbsp;&nbsp;<i class="fa fa-sort-desc fa-caret-up"></i></a>
                <ul>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">æ°´äº§æµ·é²ç±»</a>
                            <div class="con">
                               <a href="">é±¼ç±»</a>
                               <a href="">è´ç±»</a>
                               <a href="">è¾è¹ç±»</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">é±¼ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a><span>|</span><a href="">å¤æ¥é±¼</a><span>|</span><a href="">é»è±é±¼</a><span>|</span><a href="">é¾å©é±¼</a><span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è´ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">åæè´</a><span>|</span><a href="">éå£è´</a><span>|</span><a href="">æè´</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è¾è¹ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">çº¢è¾</a><span>|</span><a href="">åºå´è¾</a><span>|</span><a href="">æ³¢å£«é¡¿é¾è¾</a><span>|</span><a href="">æµ·èè¾</a><span>|</span><a href="">å¤§é¸è¹</a><span>|</span><a href="">å¸çè¹</a><span>|</span><a href="">é¿ææ¯å è¹è</a><span>|</span><a href="">éªè¹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">ç¦½ç±»</a>
                            <div class="con">
                               <a href="">çª</a>
                               <a href="">ç</a>
                               <a href="">ç¾</a>
                               <a href="">é¸¡</a>
                               <a href="">é¸­</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">é±¼ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a><span>|</span><a href="">å¤æ¥é±¼</a><span>|</span><a href="">é»è±é±¼</a><span>|</span><a href="">é¾å©é±¼</a><span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è´ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">åæè´</a><span>|</span><a href="">éå£è´</a><span>|</span><a href="">æè´</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è¾è¹ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">çº¢è¾</a><span>|</span><a href="">åºå´è¾</a><span>|</span><a href="">æ³¢å£«é¡¿é¾è¾</a><span>|</span><a href="">æµ·èè¾</a><span>|</span><a href="">å¤§é¸è¹</a><span>|</span><a href="">å¸çè¹</a><span>|</span><a href="">é¿ææ¯å è¹è</a><span>|</span><a href="">éªè¹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">ç²®æ²¹å¯é£ç±»</a>
                            <div class="con">
                               <a href="">å¤§ç±³ç±»</a>
                               <a href="">é£ç¨æ²¹ç±»</a>
                               <a href="">æç²®ç±»</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">é±¼ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a><span>|</span><a href="">å¤æ¥é±¼</a><span>|</span><a href="">é»è±é±¼</a><span>|</span><a href="">é¾å©é±¼</a><span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è´ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">åæè´</a><span>|</span><a href="">éå£è´</a><span>|</span><a href="">æè´</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è¾è¹ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">çº¢è¾</a><span>|</span><a href="">åºå´è¾</a><span>|</span><a href="">æ³¢å£«é¡¿é¾è¾</a><span>|</span><a href="">æµ·èè¾</a><span>|</span><a href="">å¤§é¸è¹</a><span>|</span><a href="">å¸çè¹</a><span>|</span><a href="">é¿ææ¯å è¹è</a><span>|</span><a href="">éªè¹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">çé£è°çç±»</a>
                            <div class="con">
                               <a href="">èä¸¸ç±»</a>
                               <a href="">æ°´é¥ºç±»</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">é±¼ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a><span>|</span><a href="">å¤æ¥é±¼</a><span>|</span><a href="">é»è±é±¼</a><span>|</span><a href="">é¾å©é±¼</a><span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è´ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">åæè´</a><span>|</span><a href="">éå£è´</a><span>|</span><a href="">æè´</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è¾è¹ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">çº¢è¾</a><span>|</span><a href="">åºå´è¾</a><span>|</span><a href="">æ³¢å£«é¡¿é¾è¾</a><span>|</span><a href="">æµ·èè¾</a><span>|</span><a href="">å¤§é¸è¹</a><span>|</span><a href="">å¸çè¹</a><span>|</span><a href="">é¿ææ¯å è¹è</a><span>|</span><a href="">éªè¹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <i class="fa fa-angle-right"></i>
                            <a class="tit" href="">è°æç±»</a>
                            <div class="con">
                               <a href="">é±æç±»</a>
                            </div>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">é±¼ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a><span>|</span><a href="">å¤æ¥é±¼</a><span>|</span><a href="">é»è±é±¼</a><span>|</span><a href="">é¾å©é±¼</a><span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è´ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">åæè´</a><span>|</span><a href="">éå£è´</a><span>|</span><a href="">æè´</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è¾è¹ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">çº¢è¾</a><span>|</span><a href="">åºå´è¾</a><span>|</span><a href="">æ³¢å£«é¡¿é¾è¾</a><span>|</span><a href="">æµ·èè¾</a><span>|</span><a href="">å¤§é¸è¹</a><span>|</span><a href="">å¸çè¹</a><span>|</span><a href="">é¿ææ¯å è¹è</a><span>|</span><a href="">éªè¹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                    <li class="pro-sort">
                        <div class="sort-first">
                            <a class="tit" href="">å¶ä»</a>
                        </div>
                        <div class="sort-second">
                            <div class="second-list">
                                <a class="second-tit" href="">é±¼ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a><span>|</span><a href="">å¤æ¥é±¼</a><span>|</span><a href="">é»è±é±¼</a><span>|</span><a href="">é¾å©é±¼</a><span>|</span><a href="">ä¸æé±¼</a><span>|</span><a href="">é¶é³é±¼</a><span>|</span><a href="">é³é±¼</a><span>|</span><a href="">éæªé±¼</a><span>|</span><a href="">é²é±¼</a><span>|</span><a href="">å¸¦é±¼</a><span>|</span><a href="">ç§åé±¼</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è´ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">åæè´</a><span>|</span><a href="">éå£è´</a><span>|</span><a href="">æè´</a>
                                </div>
                            </div>
                            <div class="second-list">
                                <a class="second-tit" href="">è¾è¹ç±»<i class="fa fa-angle-right"></i></a>
                                <div class="second-con">
                                    <span>|</span><a href="">çº¢è¾</a><span>|</span><a href="">åºå´è¾</a><span>|</span><a href="">æ³¢å£«é¡¿é¾è¾</a><span>|</span><a href="">æµ·èè¾</a><span>|</span><a href="">å¤§é¸è¹</a><span>|</span><a href="">å¸çè¹</a><span>|</span><a href="">é¿ææ¯å è¹è</a><span>|</span><a href="">éªè¹</a>
                                </div>
                            </div>
                            <a class="second-add" href=""><img src="images/sort-add01.jpg" alt=""/></a>
                        </div>
                    </li>
                </ul>
            </dt>
            <dd><a class="selected" href="javascript:;">é¦é¡µ</a></dd>
            <dd><a href="javascript:;">èµæº</a></dd>
            <dd><a href="javascript:;">éè´­</a></dd>
            <dd><a href="javascript:;">æç´¢</a></dd>
            <dd><a href="javascript:;">ç©æµ</a></dd>
            <dd><a href="javascript:;">è¡æ</a></dd>
            <dd><a href="javascript:;">ç§¯ååå</a></dd>
            <dd><a href="javascript:;">ä¼åä¿±ä¹é¨</a></dd>
        </dl>
    </div>
</nav>
<!-- åå®¹ä¸»ä½åº -->
<div class="content-main">
    <div class="container">
        <!-- é¢åå±å¯¼èª -->
        <div class="bread-crumbs">
            <a href="javascript:;">é¦é¡µ</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;">ä¼åä¸­å¿</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;">éè´­ç®¡ç</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;">æçè®¢å</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;" class="selected">ä¸ä¼ äº¤æå­è¯</a>
        </div>
         <!-- ä¼åå·¦ä¾§ -->
         <div class="member-left">
            <dl>
                <dt>ä¼åä¸­å¿</dt>
                <dd><a href="javascript:;" class="menuPro-first">åºæ¬ä¿¡æ¯</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçæ¶è</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçå³æ³¨</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">è´¦æ·å®å¨</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçç§¯å</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçç«åä¿¡<span style="color:#b0e78e;">(8)</span></a></dd>
                <dd><a href="javascript:;" class="menuPro-first">åçº§ä¼å</a></dd>
                <dt>ä¾åºåç®¡ç</dt>
                <dd>
                    <a href="javascript:;" class="menuPro-first"><i class="fa fa-plus-square"></i>æçèµæºå</a>
                    <div class="menuPro-second">
                        <a href="javascript:;"><i class="fa fa-angle-right"></i>ä¸ä¼ èµæºå</a>
                        <a href="javascript:;"><i class="fa fa-angle-right"></i>èµæºé¢è§</a>
                        <a href="javascript:;"><i class="fa fa-angle-right"></i>ä¿®æ¹ä»·æ ¼åå¸</a>
                        <a href="javascript:;"><i class="fa fa-angle-right"></i>å¾å®¡æ ¸èµæºå</a>
                        <a href="javascript:;"><i class="fa fa-angle-right"></i>å·²å³é­èµæºå</a>
                    </div>
                </dd>
                <dd><a href="javascript:;" class="menuPro-first">æåä¸çç«æ </a></dd>
                <dd><a href="javascript:;" class="menuPro-first">ææ¶å°çè®¢å</a></dd>
                <dt>éè´­ç®¡ç</dt>
                <dd><a href="javascript:;" class="menuPro-first">æçéè´­å</a></dd>
                <dd><a href="javascript:;" class="menuPro-first selected">æçè®¢å</a></dd>
                <dt>æè¿ç®¡ç</dt>
                <dd><a href="javascript:;" class="menuPro-first">æè¦æ¾è½¦</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçæè¿ä¿¡æ¯</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçæè¿å</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">ä½¿ç¨è¿çæè¿å</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">å³æ³¨çæ¿è¿å</a></dd>
                <dt>æ¿è¿ç®¡ç</dt>
                <dd><a href="javascript:;" class="menuPro-first">æçè½¦è¾</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçè·¯çº¿</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æ¿è¿ç®ä»</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçç½ç¹</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æåä¸çç«ä»·</a></dd>
                <dd><a href="javascript:;" class="menuPro-first">æçæ¿è¿å</a></dd>
            </dl>
         </div>
        <!-- ä¼åå³ä¾§ -->
         <div class="member-right">
            <div class="member-tit"><p>ä¸ä¼ äº¤æå­è¯</p></div>
            <div class="member-con">
                <div class="controls">
                    <p><span>*</span>ç¹å»éæ©å¾çï¼</p>
                    <div class="upload-controls">
                        <div class="upload-img sfz-img"><img src="images/upload-img02.png" alt=""></div>
                        <input type="button" value="ç¹å»ä¸ä¼ " class="upload-btn w148">
                    </div>
                    <div class="tip">
                        <em>è¯´æï¼å¾çè¯·ä¸ä¼ jpgãpngãGIFæ ¼å¼ãå¾çå¤§å°ä¸è½è¶è¿3Må½¢</em>
                    </div>
                </div>
                <input type="submit" value="ä¿å­" class="btn01 submit w148">
            </div>
         </div>
    </div>
</div>
<!--ç½ç«åºé¨-->
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="footer-left">
                <div class="footer-logo"><img src="images/logo.png" alt=""/></div>
                <div class="footer-tel">
                    <h6>æå¡ç­çº¿ï¼</h6>
                    <p>400-888-8888</p>
                </div>
            </div>
            <div class="footer-nav">
                <dl style="background: url(images/footer-icon01.png) no-repeat top left;">
                    <dt><a href="javascript:;">è´­ç©æå</a></dt>
                    <dd><a href="">è´­ç©æµç¨</a><a href="">è®¢è´§æ¹å¼</a><a href="">èç³»å®¢æ</a><a href="">äº¤ææ¡æ¬¾</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon02.png) no-repeat top left;">
                    <dt><a href="javascript:;">æ¯ä»æ¹å¼</a></dt>
                    <dd><a href="">é¶è¡ä»æ¬¾</a><a href="">å¨çº¿æ¯ä»</a><a href="">ç»åæ¯ä»</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon03.png) no-repeat top left;">
                    <dt><a href="javascript:;">ç©æµå¸®å©</a></dt>
                    <dd><a href="">å¦ä½æ¾è½¦</a><a href="">å¸¸è§é®é¢</a><a href="">è¿éæµç¨</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon04.png) no-repeat top left;">
                    <dt><a href="javascript:;">å®åæå¡</a></dt>
                    <dd><a href="">å®åæå¡æ»å</a><a href="">æå¡æ¿ç­</a></dd>
                </dl>
                <dl style="background: url(images/footer-icon05.png) no-repeat top left;">
                    <dt><a href="javascript:;">å¸®å©ä¸­å¿</a></dt>
                    <dd><a href="">ç½ç¹åå¸</a><a href="">å çååº</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="copy">
        <div class="copy-nav">
            <a href="javascript:;">å³äºæä»¬</a>
            <span>|</span>
            <a href="javascript:;">æ³å¾å£°æ</a>
            <span>|</span>
            <a href="javascript:;">è¯èè±æ</a>
            <span>|</span>
            <a href="javascript:;">èç³»æä»¬</a>
            <span>|</span>
            <a href="javascript:;">åæé¾æ¥</a>
        </div>
        <p>Copyright <i class="fa fa-copyright"></i> è¶é²ç½ ç²¤ICPå¤ 13013915å·-3  ICPè¯ï¼ç²¤B2-201401448</p>
    </div>
</footer>
<!-- é¢è§å¤§å¾ -->
<div class="mask">
    <div class="bg-mask"></div>
    <div class="bigPic">
        <div class="tit"><p>æ¥çå¤§å¾</p><i class="fa fa-times-circle-o"></i></div>
        <div class="img">
            <img src="" alt="">
        </div>
    </div>
</div>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script type="text/javascript" src="js/select.js"></script>
</body>
</html>