<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>忘记密码界面</title>
    <link rel="stylesheet" type="text/css" href="css/fl.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
   <link rel="stylesheet" type="text/css" href="css/pay.css">
  <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
  <script type="text/javascript" src="layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <div class="flnav">
    
  
     
        <a href="logintofirst">&nbsp&nbsp&nbsp首页</a>
  		<%@include file="/common.jsp"%> 
 
   
      
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
       
      </div>
    </div>
  </div>


  <div class="content content-nav-base shopcart-content">
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
    <style>
    
    .forget-phone{
    	margin-top:5%;
    }
    .forget-input{
    	height: 36px;
		border-radius: 3%;
		border: 1px solid #9aa0a7;
		line-height: 36px;
		text-indent: 10px;
		font-size: 14px;
		background-color: #fff;
		-webkit-transition: border-color .2s,box-shadow .2s;
		transition: border-color .2s,box-shadow .2s;
    }
    .forget-name{
    font-size:18px;
    font-family: "Microsoft Yahei","微软雅黑",Tahoma,Arial,Helvetica,STHeiti;
    }
    .layui-btn-normal{
    margin-top: -5px;
    width:106px;
    
    }
    
    </style>
    		
    	<div style="text-align:center;">
  	 		<li class="forget-phone">
                <label class="forget-name">手机号：</label>
                <input id="phone" class="forget-input" name="phone" type="text" placeholder="请输入手机号" required autofocus>
           		<button id="forget-getcode" class="layui-btn layui-btn-normal">获取验证码</button>
            </li>
			 <li class="forget-phone">
                <label class="forget-name">验证码：</label>
                <input id="checkcode" class="forget-input" name="checkcode" type="text" placeholder="请输入验证码" required autofocus>
           		<button id="forget-submit" class="layui-btn layui-btn-normal">提交</button>
            </li>
    </div>

      
		

     <script type="text/javascript" src="js/jquery.min.js"></script>
     <script>
     var isphone=function(tel) {
    	    var reg =/^0?1[3|4|5|6|7|8][0-9]\d{8}$/;
    	    return reg.test(tel);
    	}
     $(function(){
    	 var tolerantcode="";
    	 var phone;
    	$("#forget-getcode").click(function(){
    		phone=$("#phone").val();
    		var flag=isphone(phone);
    		if(flag){
    			tolerantcode=Math.floor((Math.random()*1000000));
    			alert("默认的验证码为"+tolerantcode+"！！！")
    		}else{
    			alert("请输入正确的手机号码！！！");
    		}
    		
    		
    	});
    	$("#forget-submit").click(function(){
    		var checkcode=$("#checkcode").val();
    		console.log(checkcode);
    		if(checkcode!=null&&checkcode!=""){
    			if(checkcode==tolerantcode){
    				sessionStorage.setItem("phone", phone);
    				window.location.href="changepassword.jsp";
        		}else{
        			alert("验证码不正确!!!");
        		} 
    		}else{
    			alert("请输入验证码！！！");
    		}
    		
    	});
    	
     })
    	 
 
  
     </script>

<script type="text/javascript">
  layui.config({
    base: 'js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
   
    car.init()


});
</script>
</body>
</html>