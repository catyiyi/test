<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="baidu-site-verification" content="0eTe78gHGj" />
<title>河南灵犀网络技术有限公司</title>
<link rel="shortcut icon" href="favicon.ico"/>
<meta name="keywords" content="河南灵犀网络技术有限公司" />
<meta name="description" content="我们是网络营销服务的专家，品效合一、精准营销,是我们的承诺。但我们拒绝过度营销。始终坚持以客户的需求实现为出发点，只做对客户有帮助、有意义和有价值的事情." />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/Common.js"></script>
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
</head>

<body>
	<%List<News> newslist1=new ArrayList<News>();
	  List<News> newslist2=new ArrayList<News>();
	  List<News> newslist3=new ArrayList<News>();
	  ChatUsersDaoImpl cudi=new ChatUsersDaoImpl();
	  for (int j = 1; j < 4; j++) {
	    List list=cudi.newslistBytype(j);
	  	for (int i = 0; i < list.size(); i++) {
				News n=(News)list.get(i);
				if(j==1){
					newslist1.add(i,n);
				}
				if(j==2){
					newslist2.add(i,n);
				}
				if(j==3){
					newslist3.add(i,n);
				}
				
		}
	  }
	  
	 %>
   <div id="top">
    <div class="top">
	  <div class="logo"><a href="index.jsp"><img src="image/logo.jpg" /></a></div><!-- .logo -->
      <div class="nav" style="margin-right: 100px;">
	     <ul>
		    <li><a href="index.jsp" class="on">首　页</a></li>
		    <li><a href="lingxi.html">灵犀网络</a></li>
		    <li><a href="hezuo.html">开户合作</a></li>
		    <li><a href="women.html">联系我们</a></li>
		 </ul>
	  </div><!-- .nav -->
	</div><!-- .top -->
   </div><!-- #top -->
   <div id="banner">
	  <div class="b_b"><img src="image/b_b.jpg"></div>
   </div><!-- #banner -->
   <div id="main">
      <div class="m">	     <div class="m1">
		    <div id="js">
			   <h4>灵犀网络</h4>
			   <p>　　灵犀网络是网络营销服务的专家，品效合一、精准营销,是我们的承诺。但我们拒绝过度营销。始终坚持以客户的需求实现为出发点，只做对客户有帮助、有意义和有价值的事情。</p>
			   <a href="lingxi.html"><img src="image/more.jpg" /></a>
			</div><!-- .js -->
			<div class="x1 x">
			   <h4><a>精准营销</a></h4>
			   <ul>
			   		<%for (int i = 0; i < newslist1.size(); i++) { 
			   		%>
			   			<li><a href="new.jsp?newid=<%=newslist1.get(i).getNewid()%>" target="_blank"><%=newslist1.get(i).getNtitle()%></a></li>
			   		<%
			   		}
			   		%>
			   </ul>
			</div><!-- .x1 -->
			<div class="x2 x">
			   <h4><a>品效合一</a></h4>
			   <ul>
			      	<%for (int i = 0; i < newslist2.size(); i++) { 
			   		%>
			   			<li><a href="new.jsp?newid=<%=newslist2.get(i).getNewid()%>" target="_blank"><%=newslist2.get(i).getNtitle()%></a></li>
			   		<%
			   		}
			   		%>
			   </ul>
			</div><!-- .x2 -->
			<div class="x3 x">
			   <h4><a>用户至上</a></h4>
			   <ul>
			      	<%for (int i = 0; i < newslist3.size(); i++) { 
			   		%>
			   			<li><a href="new.jsp?newid=<%=newslist3.get(i).getNewid()%>" target="_blank"><%=newslist3.get(i).getNtitle()%></a></li>
			   		<%
			   		}
			   		%>
			   </ul>
			</div><!-- .x3 -->
		 </div><!-- .m1 -->
		 <div class="clear"></div>
		 <div class="m2">
			<div id="mh1"></div>

			<div class="rollBox">
     <div class="Cont" id="ISL_Cont">
      <div class="ScrCont">
       <div id="List1">
       
        <!-- 图片列表 begin -->
 <div class="pic">
          <a href="tencent.html" target="_blank"><img src="image/t1.jpg" width="215" height="150" 

/></a>
          
         </div>       
         <div class="pic">
          <a href="tencentnew.html" target="_blank"><img src="image/t2.jpg" width="215" height="150" 

/></a>
          
         </div>
         <div class="pic">
          <a href="tencentshipin.html" target="_blank"><img src="image/t3.jpg" width="215" height="150" 

/></a>
          
         </div>
         <div class="pic">
          <a href="tencentweibo.html" target="_blank"><img src="image/t4.jpg" width="215" height="150" 

/></a>
          
         </div>
         <div class="pic">
          <a href="tencentwexin.html" target="_blank"><img src="image/t5.jpg" width="215" height="150" 

/></a>
          
         </div>
        <!-- 图片列表 end -->
        
       </div>
       <div id="List2"></div>
      </div>
    </div>
   <div class="RightBotton" onmousedown="ISL_GoDown()" onmouseup="ISL_StopDown()" onmouseout="ISL_StopDown()"></div>
	   <div class="LeftBotton" onmousedown="ISL_GoUp()" onmouseup="ISL_StopUp()" onmouseout="ISL_StopUp()"></div>
   </div>
			<div class="clear"></div>
			<div id="mh2"></div>
		 </div><!-- .m2 -->
	  <div class="clear"></div>
	  <div class="mbg">
	     <div class="mbgt"></div>
	     <div class="m3">
		    <div class="f1">
			   <h4>开户费用</h4>
			   <p>最低开户费用10000元广告预存</p>
			   <p><div class="bdsharebuttonbox"><A class=bds_more href="http://share.baidu.com/code#" data-cmd="more"></A><A class=bds_qzone title=分享到QQ空间 href="http://share.baidu.com/code#" data-cmd="qzone"></A><A class=bds_tsina title=分享到新浪微博 href="http://share.baidu.com/code#" data-cmd="tsina"></A><A class=bds_weixin title=分享到微信 href="http://share.baidu.com/code#" data-cmd="weixin"></A></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{},"image":{"viewList":["qzone","tsina","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=86835285.js?cdnversion='+~(-new Date()/36e5)];</script></p>
			</div><!-- .f1 -->
			<div class="f2">
			   <h4>合作准备</h4>
			   <p><a href="#">营业执照、法人身份证正反扫描件、备案网站/合法网店</a></p>
			   <p><a href="#">我们服务于企业、学校、医院、天猫店、淘宝店、京东店等各类商家</a></p>
			   <a href="hezuo.html" id="more"><img src="image/more2.jpg" /></a>
			</div><!-- .f2 -->
			<div class="f3">
			   <h4><a>合作平台<em> </em></a></h4>
			   <ul>
<li>
<a href="#" target="_blank"><img src="image/2015091804405712449372665.jpg" border="0" alt="婚纱摄影" title="婚纱摄影" /> </a>
</li>
<li>
<a href="#" target="_blank"><img src="image/2015091804185420818074966.jpg" border="0" alt="APP" title="APP" /> </a>
</li>
<li>
<a href="#" target="_blank"><img src="image/2015091804225314781988503.jpg" border="0" alt="教育培训" title="教育培训" /> </a>
</li>
<li>
<a href="#" target="_blank"><img src="image/2015091804585113469433320.jpg" border="0" alt="装饰家居" title="装饰家居" /> </a>
</li>
			   </ul>
			   
			</div><!-- .f3 -->
			<div class="f4">
			   <h4>联系方式</h4>
			   <p>河南灵犀网络技术有限公司<br /> 电话：0371-63338880<br />地址:郑州市郑东新区商务外环路25号王鼎国际大厦7层<br />在线咨询：
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3137054406&site=qq&menu=yes"><img src="http://wpa.qq.com/pa?p=1:3137054406:41" border="0" alt="点击咨询" title="点击咨询"></a>
</p>
			</div><!-- .f4 -->
		 </div><!-- .m1 -->
	  </div><!-- .mbg -->
      </div><!-- .m -->
   </div><!-- #main -->
   <div class="clear"></div>
   <div id="foot">
      <div class="foot">
		 <div class="f_b">版权所有　<a href="#" target="_blank">灵犀网络</a>　www.lingxinetwork.com 
<!--  <script language="javascript" type="text/javascript" src="http://js.users.51.la/17594777.js"></script>
<noscript><a href="http://www.51.la/?17594777" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/17594777.asp" style="border:none" /></a></noscript>　<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1254629031'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/stat.php%3Fid%3D1254629031%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>-->
</div>
	  </div><!-- .foot -->
   </div><!-- #foot -->
   <p align="center" style="margin-bottom:10px; margin-top:10px;"><a href="#top"><img src="image/backtop.jpg" /></a></p>

<!-- 代码 开始 --
<div class="clear"></div>
<div class="main-im">
	<div id="open_im" class="open-im">&nbsp;</div>  
	<div class="im_main" id="im_main">
		<div id="close_im" class="close-im"><a href="javascript:void(0);" title="点击关闭">&nbsp;</a></div>
		<a href="http://wpa.qq.com/msgrd?v=3&uin=3137054406&site=qq&menu=yes" target="_blank" class="im-qq qq-a" title="在线QQ客服">
			<div class="qq-container"></div>
			<div class="qq-hover-c"><img class="img-qq" src="image/qq.png"></div>
			<span> QQ在线咨询</span>
		</a>
		<div class="im-tel">
			<div>开户热线：</div>
			<div class="tel-num">400 750 1688</div>
			<div>咨询手机：</div>
			<div class="tel-num">18007312455</div>
		</div>
		<div class="im-footer" style="position:relative">
			<div class="weixing-container">
				<div class="weixing-show">
					<div class="weixing-txt">微信扫一扫<br>关注航加科技</div>
					<img class="weixing-ma" src="image/weixing-ma.jpg">
					<div class="weixing-sanjiao"></div>
					<div class="weixing-sanjiao-big"></div>
				</div>
			</div>
			<div class="go-top"><a href="javascript:;" title="返回顶部"></a> </div>
			<div style="clear:both"></div>
		</div>
	</div>
</div>

</html>
