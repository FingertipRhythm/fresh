<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <title>超鲜网-注册页</title>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/page.css"/>
    <link rel="stylesheet" href="css/member.css"/>
    <link rel="stylesheet" href="css/banner.css"/>
    <link rel="stylesheet" href="css/tab.css"/>
    <link rel="stylesheet" href="css/table.css"/>
    <link rel="stylesheet" href="css/select.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
   
  
    <style type="text/css">
        .controls .pact-radio input{
            float: none;
            display: inline-block;
            vertical-align: middle;
        }
        .controls .pact-radio .pact{
            float: none;
            display: inline-block;
            vertical-align: middle;
            line-height: 20px;
        }
        .thickdiv {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 10000001;
            width: 100%;
            height: 100%;
            background: #000;
            border: 0;
            filter: alpha(opacity = 15);
            opacity: .15;
        }
        .thickbox {
            display: none;
            position:fixed;
            top:50%;
            left:50%;
            z-index: 100000000000002;
            overflow: hidden;
            margin: -240px 0 0 -460px;
            padding: 0;
            border: 4px solid rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
        }

        .thicktitle {
            height: 27px;
            padding: 0 10px;
            border: solid #C4C4C4;
            border-width: 1px 1px 0;
            background: #F3F3F3;
            line-height: 27px;
            font-family: arial, "\5b8b\4f53";
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }
        .thickclose:link, .thickclose:visited {
            display: block;
            position: absolute;
            z-index: 100000;
            top: 7px;
            right: 12px;
            overflow: hidden;
            width: 15px;
            height: 15px;
            background: url(http://misc.360buyimg.com/201007/skin/df/i/bg_thickbox.gif) no-repeat 0 -18px;
            font-size: 0;
            line-height: 100px;
        }

        .thickcon {
            overflow: auto;
            background: #fff;
            border: solid #C4C4C4;
            border-width: 1px;
            padding: 10px;
        }

        #protocol-con{height:356px;overflow:auto;padding:10px 20px 0 10px;}
        #protocol-con h4{
            line-height: 30px;
            color: #000;
            font-size: 16px;
        }
        #protocol-con h5{line-height:30px; color: #333;}
        #protocol-con p{line-height:24px; color: #666;}
        #protocol-con p strong{font-weight:normal;}
        .thicktitle{padding:0;text-align:center;}
        .btnt{
            width: 300px;
            margin: 20px 0 0 310px;
        }
    </style>
    
  <script type="text/javascript">
    	$(function(){
    		
    		
    		var nameflag =false;
    		
    		$("#username").blur(function() {
    			
    			//1.得到用户名文本框中的值
    			var username = $(this).val();
    			//只能由字母、数字、点、减号或下划线组成,长度4-16位且以字母开头
    			var reg = /^[a-zA-Z][a-zA-Z0-9]{3,16}$/;
    			var flag = reg.test(username);
    			
    			if(flag==false){
    				$(this).next().css({
    					"color" : "red"
    				}).html("只能由字母、数字、点、减号或下划线组成,长度4-16位且以字母开头");
    				nameflag =false;
    			
    			}else{
    				$(this).next().hide().html("");
    				nameflag =true ;
    			}
    		}); 
    		
    		
    		
    		var pwdflag = false;
    		//密码验证
    		$("#pwd").blur(function() {
    			
    			//1.得到密码框的文本
    			var pwd = $(this).val();
    			var reg = /^.{6,18}$/;
    			var flag = reg.test(pwd);
    			if (flag == false) {
    			
    					$(this).next().css({
        					"color" : "red"
        				}).html("密码至少6位 ");
        				
    					pwdflag = false;
    				
    			}else {
    				$(this).next().hide().html("");
    				pwdflag = true;
    			}
    		});
    		
    		
    		
    		var repwdflag=false;
    		//确认密码验证
    		$("#repwd").blur(function(){
    			var pwd=$("#pwd").val();
    			var repwd=$(this).val();
    			if(pwd!=repwd){
    				$(this).next().css({
    					"display" : "inline-block"
    				}, {
    					"color" : "red"
    				}).html("两次输入密码不一致");
    				repwdflag = false;
    			}else{
    				$(this).next().hide().html("");
    				repwdflag = true;
    			}
    		});
    		
    		
    		
    		var phflag = false;
    		//电话号码验证
    		$("#phone").blur(function() {
    			//1.得到密码框的文本
    			var phone = $(this).val();
    			var reg = /^1(3|5|8)\d{9}$/;//以13,15,18开头的11位数字
    			var flag = reg.test(phone);
    			if (flag == false) {
    				$(this).next().css({
    					"display" : "inline-block"
    				}, {
    					"color" : "red"
    				}).html("必须是以13,5,8开头的11位数字");
    				phflag = false;
    			} else {
    				$(this).next().hide().html("");
    				phflag = true;
    			}
    		});
    		
    		
    		$("#regForm").submit(function() {
    			if (phflag == true && repwdflag == true && nameflag==true && pwdflag==true ) {
    				return true;
    			} else {
    				return false;
    			}
    		});
    		
    		
    	})
    
    
    
    </script>
    
    
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
<!-- 内容主体区 -->
<div class="content">
    <div class="container">
        <!-- 面包屑导航 -->
        <div class="bread-crumbs">
            <a href="javascript:;">首页</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;">注册</a>
            <span><i class="fa fa-angle-double-right"></i></span>
            <a href="javascript:;" class="selected">填写信息</a>
        </div>
        <div class="content-reg">
            <!-- 内页标题 -->
            <div class="reg-tit">
                <p>用户注册</p>
                 <!-- 注册进度 -->
                <div class="reg-progress">
                    <span class="selected">填写信息</span>
                    <i class="fa fa-angle-double-right"></i>
                    <span>注册成功</span>
                </div>
            </div>
            <!-- 注册表单  用户名不能重复，密码需要有英文和数字-->
            <div class="reg-form">
            
            
                <form id="regForm" action="user/reg" method="post">
                    <div class="controls">
                        <p>用户名：</p>
                        <input type="text" class="input03 w450" id="username" name="username"  />
                        <span></span>
                    </div>
                    <div class="controls">
                        <p>密码：</p>
                        <input type="password"  placeholder="密码至少6位数" class="input03 w450" id="pwd" name="pwd"  >
                  		<span></span>
                   
                   
                    </div>
                    <div class="controls">
                        <p>确认密码：</p>
                        <input type="password" placeholder="密码至少6位数" class="input03 w450"  id="repwd"  name="repwd">
                        <span></span>
                    </div>
                     <div class="controls">
                        <p>手机号：</p>
                        <input type="text" class="input03 w450" id="phone" name="phone">
                          <span></span>
                    </div>
                    <div class="controls">
                     
                        <div class="pact-radio" style="margin-left:180px;">
                            <input type="checkbox"/>
                            <a href="javascript:;" class="pact">《超鲜网用户协议》</a>
                        </div>

                    </div>
                    <div class="controls">
                        <input type="submit" value="同意协议并注册" class="btn07 w450">
                    </div>
                </form>
                
                
                
                
                
                
                
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
<!--协议弹窗-->
<div class="thickdiv"></div>
<div class="thickbox">
    <div class="thicktitle" id=""><span>百鲜用户注册协议</span></div>
    <div class="thickcon" id="" style="width: 922px; height: 450px; padding-left: 0px; padding-right: 0px; border-left-width: 1px; border-right-width: 1px;">
        <div class=" regist-2013">
            <div class="regist-bor">
                <div class="mc">
                    <div id="protocol-con"><h4>百鲜用户注册协议</h4>

                        <p>
                            本协议是您与京东网站（简称"本站"，网址：www.jd.com）所有者（以下简称为"京东"）之间就京东网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击"同意并继续"按钮后，本协议即构成对双方有约束力的法律文件。</p>
                        <h5> 第1条 本站服务条款的确认和接纳</h5>

                        <p><strong>1.1</strong>本站的各项电子服务的所有权和运作权归京东所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。
                        </p>

                        <p><strong>1.2</strong>用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。</p>

                        <p><strong>1.3</strong>如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。</p>

                        <p><strong>1.4</strong>京东保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容或取消订单的权利。</p>    <h5>
                            第2条 本站服务</h5>

                        <p><strong>2.1</strong>京东通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。</p>

                        <p><strong>2.2</strong>用户必须自行准备如下设备和承担如下开支：（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。
                        </p>    <h5> 第3条 用户信息</h5>

                        <p><strong>3.1</strong>用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且京东保留终止用户使用京东各项服务的权利。
                        </p>

                        <p><strong>3.2</strong>用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。
                        </p>

                        <p><strong>3.3</strong>用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。
                        </p>

                        <p>
                            <strong>3.4</strong><strong>用户同意，京东拥有通过邮件、短信电话等形式，向在本站注册、购物用户、收货人发送订单信息、促销活动等告知信息的权利。</strong>
                        </p>

                        <p><strong>3.5</strong><strong>用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。</strong>
                        </p>

                        <p>
                            <strong>3.6</strong><strong>用户同意，京东有权使用用户的注册信息、用户名、密码等信息，登录进入用户的注册账户，进行证据保全，包括但不限于公证、见证等。</strong>
                        </p>    <h5> 第4条 用户依法言行义务</h5>

                        <p> 本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：</p>

                        <p><strong>（1）</strong>不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；
                        </p>

                        <p><strong>（2）</strong>从中国大陆向境外传输资料信息时必须符合中国有关法规；</p>

                        <p><strong>（3）</strong>不得利用本站从事洗钱、窃取商业秘密、窃取个人信息等违法犯罪活动； </p>

                        <p><strong>（4）</strong>不得干扰本站的正常运转，不得侵入本站及国家计算机信息系统；</p>

                        <p><strong>（5）</strong>不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽的、不文明的等信息资料；</p>

                        <p><strong>（6）</strong>不得传输或发表损害国家社会公共利益和涉及国家安全的信息资料或言论；</p>

                        <p><strong>（7）</strong>不得教唆他人从事本条所禁止的行为；</p>

                        <p><strong>（8）</strong>不得利用在本站注册的账户进行牟利性经营活动；</p>

                        <p><strong>（9）</strong>不得发布任何侵犯他人著作权、商标权等知识产权或合法权利的内容；</p>

                        <p> 用户应不时关注并遵守本站不时公布或修改的各类合法规则规定。</p>

                        <p><strong>本站保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。</strong></p>

                        <p><strong>若用户未遵守以上规定的，本站有权作出独立判断并采取暂停或关闭用户帐号等措施。</strong>用户须对自己在网上的言论和行为承担法律责任。</p>    <h5> 第5条
                            商品信息</h5>

                        <p>
                            本站上的商品价格、数量、是否有货等商品信息随时都有可能发生变动，本站不作特别通知。由于网站上商品信息的数量极其庞大，虽然本站会尽最大努力保证您所浏览商品信息的准确性，但由于众所周知的互联网技术因素等客观原因存在，本站网页显示的信息可能会有一定的滞后性或差错，对此情形您知悉并理解；京东欢迎纠错，并会视情况给予纠错者一定的奖励。</p>

                        <p> 为表述便利，商品和服务简称为"商品"或"货物"。</p>    <h5> 第6条 订单</h5>

                        <p><strong>6.1</strong>在您下订单时，请您仔细确认所购商品的名称、价格、数量、型号、规格、尺寸、联系地址、电话、收货人等信息。<span>收货人与用户本人不一致的，收货人的行为和意思表示视为用户的行为和意思表示，用户应对收货人的行为及意思表示的法律后果承担连带责任。</span>
                        </p>

                        <p><strong>6.2</strong><strong>除法律另有强制性规定外，双方约定如下：本站上销售方展示的商品和价格等信息仅仅是交易信息的发布，您下单时须填写您希望购买的商品数量、价款及支付方式、收货人、联系方式、收货地址等内容；系统生成的订单信息是计算机信息系统根据您填写的内容自动生成的数据，仅是您向销售方发出的交易诉求；销售方收到您的订单信息后，只有在销售方将您在订单中订购的商品从仓库实际直接向您发出时（
                            以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了交易关系；如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了交易关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品才成立交易关系。您可以随时登录您在本站注册的账户，查询您的订单状态。</strong>
                        </p>

                        <p><strong>6.3</strong><strong>由于市场变化及各种以合理商业努力难以控制的因素的影响，本站无法保证您提交的订单信息中希望购买的商品都会有货；如您拟购买的商品，发生缺货，您有权取消订单。</strong>
                        </p>    <h5> 第7条 配送</h5>

                        <p><strong>7.1</strong>销售方将会把商品（货物）送到您所指定的收货地址，所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。
                        </p>

                        <p><strong>7.2</strong>因如下情况造成订单延迟或无法配送等，销售方不承担延迟配送的责任：</p>

                        <p><strong>（1）</strong>用户提供的信息错误、地址不详细等原因导致的； </p>

                        <p><strong>（2）</strong>货物送达后无人签收，导致无法配送或延迟配送的；</p>

                        <p><strong>（3）</strong>情势变更因素导致的；</p>

                        <p><strong>（4）</strong>不可抗力因素导致的，例如：自然灾害、交通戒严、突发战争等。</p>    <h5> 第8条 所有权及知识产权条款</h5>

                        <p><strong>8.1</strong><strong>用户一旦接受本协议，即表明该用户主动将其在任何时间段在本站发表的任何形式的信息内容（包括但不限于客户评价、客户咨询、各类话题文章等信息内容）的财产性权利等任何可转让的权利，如著作权财产权（包括并不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利），全部独家且不可撤销地转让给京东所有，用户同意京东有权就任何主体侵权而单独提起诉讼。</strong>
                        </p>

                        <p><strong>8.2</strong><strong>本协议已经构成《中华人民共和国著作权法》第二十五条（条文序号依照2011年版著作权法确定）及相关法律规定的著作财产权等权利转让书面协议，其效力及于用户在京东网站上发布的任何受著作权法保护的作品内容，无论该等内容形成于本协议订立前还是本协议订立后。</strong>
                        </p>

                        <p><strong>8.3</strong><strong>用户同意并已充分了解本协议的条款，承诺不将已发表于本站的信息，以任何形式发布或授权其它主体以任何方式使用（包括但不限于在各类网站、媒体上使用）。</strong>
                        </p>

                        <p><strong>8.4</strong><strong>京东是本站的制作者,拥有此网站内容及资源的著作权等合法权利,受国家法律保护,有权不时地对本协议及本站的内容进行修改，并在本站张贴，无须另行通知用户。在法律允许的最大限度范围内，京东对本协议及本站内容拥有解释权。</strong>
                        </p>

                        <p><strong>8.5</strong><strong>除法律另有强制性规定外，未经京东明确的特别书面许可,任何单位或个人不得以任何方式非法地全部或部分复制、转载、引用、链接、抓取或以其他方式使用本站的信息内容，否则，京东有权追究其法律责任。</strong>
                        </p>

                        <p><strong>8.6</strong>本站所刊登的资料信息（诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件），均是京东或其内容提供者的财产，受中国和国际版权法的保护。本站上所有内容的汇编是京东的排他财产，受中国和国际版权法的保护。本站上所有软件都是京东或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。
                        </p>    <h5> 第9条 责任限制及不承诺担保</h5>

                        <p>
                            <strong>除非另有明确的书面说明,本站及其所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务，均是在"按现状"和"按现有"的基础上提供的。</strong>
                        </p>

                        <p><strong>除非另有明确的书面说明,京东不对本站的运营及其包含在本网站上的信息、内容、材料、产品（包括软件）或服务作任何形式的、明示或默示的声明或担保（根据中华人民共和国法律另有规定的以外）。</strong>
                        </p>

                        <p>
                            <strong>京东不担保本站所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务、其服务器或从本站发出的电子信件、信息没有病毒或其他有害成分。</strong>
                        </p>

                        <p><strong>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，京东会合理地尽力协助处理善后事宜。</strong>
                        </p>    <h5> 第10条 协议更新及用户关注义务</h5>
                        根据国家法律法规变化及网站运营需要，京东有权对本协议条款不时地进行修改，修改后的协议一旦被张贴在本站上即生效，并代替原来的协议。用户可随时登录查阅最新协议；<strong><em>用户有义务不时关注并阅读最新版的协议及网站公告。如用户不同意更新后的协议，可以且应立即停止接受京东网站依据本协议提供的服务；如用户继续使用本网站提供的服务的，即视为同意更新后的协议。京东建议您在使用本站之前阅读本协议及本站的公告。</em></strong>
                        如果本协议中任何一条被视为废止、无效或因任何理由不可执行，该条应视为可分的且并不影响任何其余条款的有效性和可执行性。 <h5> 第11条 法律管辖和适用</h5>
                        本协议的订立、执行和解释及争议的解决均应适用在中华人民共和国大陆地区适用之有效法律（但不包括其冲突法规则）。
                        如发生本协议与适用之法律相抵触时，则这些条款将完全按法律规定重新解释，而其它有效条款继续有效。
                        如缔约方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。 <h5> 第12条 其他 </h5>

                        <p><strong>12.1</strong>京东网站所有者是指在政府部门依法许可或备案的京东网站经营主体。</p>

                        <p><strong>12.2</strong>京东尊重用户和消费者的合法权利，本协议及本网站上发布的各类规则、声明等其他内容，均是为了更好的、更加便利的为用户和消费者提供服务。本站欢迎用户和社会各界提出意见和建议，京东将虚心接受并适时修改本协议及本站上的各类规则。
                        </p>

                        <p><strong>12.3</strong><span>本协议内容中以黑体、加粗、下划线、斜体等方式显著标识的条款，请用户着重阅读。</span></p>

                        <p><strong>12.4</strong><span>您点击本协议下方的"同意并继续"按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。</span>
                        </p></div>
                    <div class="btnt btn07">
                        同意并继续
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="#" id="closeBox" class="thickclose">×</a></div>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script type="text/javascript" src="js/select.js"></script>
<script>
    $(function(){
       $('.pact').click(function(){
          $('.thickdiv').show();
           $('.thickbox').show();
       });
        $('#closeBox').click(function(){
            $('.thickdiv').hide();
            $('.thickbox').hide();
        });
        $('.btnt').click(function(){
            $('.thickdiv').hide();
            $('.thickbox').hide();
        });
    });
</script>
</body>
</html>