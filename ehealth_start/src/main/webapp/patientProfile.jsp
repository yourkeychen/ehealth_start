<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%> 
<%@ page contentType="text/html;charset=utf-8"%> 
<% 
 request.setCharacterEncoding("UTF-8"); 
 response.setCharacterEncoding("UTF-8"); 
 response.setContentType("text/html; charset=UTF-8"); 
%> 

<!DOCTYPE HTML>
<html>
<head>
<title>修改资料</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Petsy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery.min.js"> </script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="static/patientProfile.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

</head>
<body>
	<!--start-header-->
			<div id="home" class="header two">
					<div class="top-header">
						<div class="container">
							<div class="logo">
							  <a href="patientIndex.jsp"><h2>北京大学<span>第一医院</span></h2></a>
						    </div>
					     <div class="top-menu">
							<span class="menu"> </span>
								<ul class="cl-effect-16">
								<li><a href="patientIndex.jsp" data-hover="主页">主页</a></li>
								<li><a href="patientAbout.jsp" data-hover="关于">关于</a></li>
								<li><a href="patientInfo.jsp" data-hover="我的门诊">我的门诊</a></li>
								<li><a href="patientRecord.jsp" data-hover="我的病历">我的病历</a></li>
								<li><a href="patientAppoint.jsp" data-hover="我的预约">我的预约</a></li>
								<li style="color: white">|</li>
								<li><span class="glyphicon glyphicon-qrcode"  data-toggle="modal" data-target="#scanQRcode" data-backdrop="static" style="cursor: pointer;color: white"></span></li>
								<li class="dropdown" style="text-align: left;">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span></a>
									<ul class="dropdown-menu" role="menu" id="patient-contents">
										<li><a  class="active" href="patientProfile.jsp"><span class="glyphicon glyphicon-cog"></span> 修改资料</a></li>
										<li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> 退出</a></li>
									</ul>
			  					</li>		
								  <div class="clearfix"></div>
								</ul>
							</div>
							<!-- script-for-menu -->
								<script>
									$("span.menu").click(function(){
										$(".top-menu ul").slideToggle("slow" , function(){
										});
									});
								</script>
								<!-- script-for-menu -->
							<div class="clearfix"> </div>
					</div>
				</div>
	     </div>
     </div>
		<!--start-contact-->
	<div class="contact">
		<div class="container">
		    <h3 class="tittle" style="font-size: 1.9em">修改资料</h3>
				<div class="about-top">
					<div class="contact-grid about-top-right">
					<h4>修改密码</h4>
					<form>
						<div class="col-md-12">
						<p class="col-md-2 your-para" style="padding-top: 1%">请输入原密码</p>
						<div class="col-md-4">
						<input type="text" class="form-control" id="oldPass" placeholder="">
						</div>
						</div>

						<div class="col-md-12">
						<p class="col-md-2 your-para" style="padding-top: 1%">请输入新密码</p>
						<div class="col-md-4">
						<input type="text" class="form-control" id="newPass" placeholder="">
						</div>
						</div>

						<div class="col-md-12">
						<p class="col-md-2 your-para" style="padding-top: 1%">请再次输入新密码</p>
						<div class="col-md-4">
						<input type="text" class="form-control" id="newPassAgain" placeholder="">
						</div>
						</div>
					</form>
					&nbsp
					<h4>修改基本资料</h4>
					<form>
						<div class="col-md-4">
						<p class="col-md-4 your-para" style="padding-top: 3%">姓名</p>
						<div class="col-md-8">
						<input type="text" class="form-control" id="name" placeholder="">
						</div>
						</div>

						<div class="col-md-4">
						<p class="col-md-4 your-para" style="padding-top: 3%">性别</p>
						<div class="col-md-8" style="padding-top: 3%">
						<input type="radio" name="radio" id="r5" value="" checked>
                      <label style="color: #888;">男</label>
                      &nbsp
						<input type="radio" name="radio" id="r5" value="">
                      <label style="color: #888;">女</label>
						</div>
						</div>

						<div class="col-md-4">
						<p class="col-md-4 your-para" style="padding-top: 3%">年龄</p>
						<div class="col-md-8">
						<input type="text" class="form-control" id="age" placeholder="">
						</div>
						</div>

						<div class="col-md-4">
						<p class="col-md-4 your-para" style="padding-top: 3%">出生日期</p>
						<div class="col-md-8" style="padding-top: 4%">
							<select name="YYYY" onchange="YYYYDD(this.value)">
    							<option value="">年</option>
    							<option value="">1950</option>
    							<option value="">1951</option>
  							</select>
  							<select name="MM" onchange="MMDD(this.value)">
    							<option value="">月</option>
    							<option value="">1</option>
    							<option value="">2</option>
  							</select>
 							<select name="DD">
 								<option value="">日</option>
    							<option value="">10</option>
    							<option value="">11</option>
  							</select>
						</div>
						</div>

						<div class="col-md-4">
						<p class="col-md-4 your-para" style="padding-top: 3%">身份证号</p>
						<div class="col-md-8">
						<input type="text" class="form-control" id="identity" placeholder="">
						</div>
						</div>

						<div class="col-md-4">
						<p class="col-md-4 your-para" style="padding-top: 3%">医疗卡号</p>
						<div class="col-md-8">
						<input type="text" class="form-control" id="recordNumber" placeholder="">
						</div>
						</div>
						&nbsp
						<div class="col-md-12 send" style="margin-left: 1.5%">
							<input type="submit" value="保存" >
						</div>
					</form>
				</div>
				
				<div class="clearfix"> </div>
			   </div>

		   </div>
	  </div>

  <!--footer-->
			<div class="footer text-center" style="padding-bottom: 0; text-align: center;">
				<div class="container">
					<div class="copy">
		              <p style="color: black">Copyright &copy; 2016. School of Electronics Engineering and Computer Science, Peking University.</p>
		            </div>
				</div>
			</div>

				<!--start-smoth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {	
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		<div id="scanQRcode" class="modal fade" >
		<div class="modal-dialog" style="margin-top: 10%;width:400px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">E-Health</h4>
                </div>
                <div class="modal-body">
                	<p>我是一个二维码</p>
                	<p>扫描二维码，关注E-Health微信公众号。</p>
                </div>
                
                <div class="modal-footer">
                <!--
                    <button type="button" class="btn btn-success" onclick="deleteNSgroup()">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    -->
                </div>

             </div>
        </div>
    </div>

</body>
</html>