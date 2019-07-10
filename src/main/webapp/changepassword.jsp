<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>修改密码界面</title>
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
    	margin-top:3%;
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
   
    width:110px;
    
    }
    .confirmm{
    margin-left:50%;
    }
    </style>
    		
    	<div>
  	 		<li class="forget-phone" >
                <label class="forget-name" style="margin-left:40%;">新密码：</label>
                <input id="password" class="forget-input" name="phone" type="password" placeholder="请输入新密码" required autofocus>
           		
            </li>
			 <li class="forget-phone">
                <label class="forget-name confirmm" style="margin-left:39%;">确认密码：</label>
                <input id="newpassword" class="forget-input" name="checkcode" type="password" placeholder="请确认密码" required autofocus>
           		
            </li>
             <li class="forget-phone" style="text-align:center;" >
               
           		<button id="forget-confirm" class="layui-btn layui-btn-normal">提交</button>
            </li>
    </div>

      
		

     <script type="text/javascript" src="js/jquery.min.js"></script>
     <script>
    
     $(function(){
    	 $("#forget-confirm").click(function(){
    		 var phone=sessionStorage.getItem("phone");
    		 var x=$("#password").val();
    		 var y=$("#newpassword").val();
    		 console.log(phone);
    		 if(x==y){
    			 $.ajax({
    				url:'changePassword',
    				method:'post',
    				data:{
    					phone:phone,
    					password:x
    					},
    				dataType:'json',
    				success:function(data){
    					if(data==1){
    						alert("修改成功！点击跳转登录界面！");
    						window.location.href="login.jsp";
    					}else{
    						alert("修改失败！！！")
    					}
    				}
    				
    				
    				
    			 })
    		 }else{
    			 alert("两次输入的密码不同！！！");
    		 }
    		 
    		 
    		 
    	 })
    	 
    	 
    	
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