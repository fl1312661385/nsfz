<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>注册界面</title>
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
  <script type="text/javascript" src="layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="logintofirst">首页</a>
      </p>
      <div class="sn-quick-menu">
       <div class="login"></div>
        <div class="sp-cart"></div>
      </div>
    </div>
  </div>



  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">
          <a href="#" title="母婴商城">
            <img src="img/logo.png">
          </a>
        </h1>
        <div class="mallSearch">
          <form action="" class="layui-form" novalidate>
            <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" lay-submit lay-filter="formDemo">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value="">
          </form>
        </div>
      </div>
    </div>
  </div>


  <div class="content content-nav-base  login-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="commodity" class="active">所有商品</a>
            <a href="buytoday">今日团购</a>
            <a href="information">母婴资讯</a>
            <a href="about">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="login-bg">
      <div class="login-cont w1200">
        <div class="form-box">
          <form class="layui-form" action="register" method="post">
          <legend>手机号注册</legend>
         
            <div class="layui-form-item">
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                  <i class="layui-icon layui-icon-cellphone iphone-icon"></i>
                  <input type="tel" name="mobile" id="phone" lay-verify="required|phone" placeholder="请输入手机号" autocomplete="off" class="layui-input mymobile">
                </div>
                <p id="phonemsg" style="color:red"></p>
              </div>
              
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                  <i class="layui-icon layui-icon-username iphone-icon"></i>
                  <input type="tel" name="userName" id="userName" lay-verify="required|phone" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
              </div>
              
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                  <i class="layui-icon layui-icon-password iphone-icon"></i>
                  <input  name="password" id="password" type="password" lay-verify="required|phone" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
              </div>
              
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                <i class="layui-icon layui-icon-password iphone-icon"></i>
                  <input name="repassword" id="password1" type="password" lay-verify="required" placeholder="请确认密码" autocomplete="off" class="layui-input">
                  
                </div>
              </div>
              <!--  <div class="layui-inline iphone">
                <div class="layui-input-inline">
                <i class="layui-icon layui-icon-password iphone-icon"></i>
                  <input name="address" id="address" type="tel" lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
                  
                </div>
              </div>
               <div class="layui-inline iphone">
                <div class="layui-input-inline">
                <i class="layui-icon layui-icon-password iphone-icon"></i>
                  <input name="postcode" id="postcode" type="tel" lay-verify="required" placeholder="请输入邮编" autocomplete="off" class="layui-input">
                  
                </div>
              </div> -->
              
              
            </div>
            <div class="layui-form-item login-btn">
              <div class="layui-input-block">
              <a class="layui-btn" href="login_no" lay-submit="" lay-filter="demo1">登录</a>
                <button class="layui-btn" lay-submit="" lay-filter="demo1" type="submit" id="register-submit">注册</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <div class="ng-promise-box">
      <div class="ng-promise w1200">
        <p class="text">
          <a class="icon1" href="javascript:;">7天无理由退换货</a>
          <a class="icon2" href="javascript:;">满99元全场免邮</a>
          <a class="icon3" style="margin-right: 0" href="javascript:;">100%品质保证</a>
        </p>
      </div>
    </div>
    <div class="mod_help w1200">                                     
      <p>
        <a href="javascript:;">关于我们</a>
        <span>|</span>
        <a href="javascript:;">帮助中心</a>
        <span>|</span>
        <a href="javascript:;">售后服务</a>
        <span>|</span>
        <a href="javascript:;">母婴资讯</a>
        <span>|</span>
        <a href="javascript:;">关于货源</a>
      </p>
      <p class="coty">母婴商城版权所有 &copy; 2012-2020</p>
    </div>
  </div>
   <script type="text/javascript" src="js/jquery.min.js"></script>
<script>

	/* var checkmymobile=false; */


			$(function(){
				$(".mymobile").mouseleave(function(){
	   				var mobile=$("#phone").val();
	   				$.ajax({
	   					url:"checkmyMobile",
	   					/* method:"post", */
	   					data:{mobile:mobile},
	   					dataType:"json",
	   					success:function(data){
	   						if(data==0){
	   							
	   							$("#phonemsg").html("该用户已注册！！！");
	   						}
	   						if(data==1){
	   							/* alert("jkljk"); */
	   							$("#phonemsg").html("");
	   						}
	   						/* console.log(data); */
	   					}
	   					
	   					
	   					
	   				})
	   			})
				$("#register-submit").click(function(){
			        var checkPhone = /^(13[0-9]|14[5-9]|15[012356789]|166|17[0-8]|18[0-9]|19[8-9])[0-9]{8}$/;
			        var a=$("#phone").val();
					var a1=a.length;
					var b=$("#userName").val();
					var b1=b.length;
					var c=$("#password").val();
					var c1=c.length;
					var d=$("#password1").val();
					var d1=d.length;
					/* var e=$("#address").val();
					var e1=d.length;
					var f=$("#postcode").val();
					var f1=d.length;
					 */
					if(a1==0){
						alert("手机号不能为空!");
						return false;
					}
					if(!checkPhone.test(a)){
						alert("手机号格式不正确!");
						return false;
					}
					if(b1==0){
						alert("用户名不能为空!");
						return false;
					}
					if(c1==0){
						alert("密码不能为空!");
						return false;
					}
					if(d1==0){
						alert("请再次输入密码!");
						return false;
					}
					if(c!=d){
						alert("两次输入的密码不一致!");
						return false;
					}
					/* if(e1==0){
						alert("请输入地址!");
						return false;
					}
					if(f1==0){
						alert("请输入邮箱!");
						return false;
					}
					if(!checkPost.test(f)){
						alert("请输入正确的邮编!");
						return false;
					} */
					/* return false; */
				})
				
			})
			
		</script>
  

</body>
</html>