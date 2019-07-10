<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>用户信息界面</title>
    <link rel="stylesheet" type="text/css" href="css/fl.css">
    <link rel="stylesheet" type="text/css" href="css/order.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
  <script type="text/javascript" src="layui/layui.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
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
        <div class="mallSearch">
          <form action="searchproduct" class="layui-form" novalidate>
            <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" lay-submit lay-filter="formDemo">
                <i class="layui-icon layui-icon-search"></i>
            </button>
           
          </form>
        </div>
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
 	
      <div class="w1200" style="height:190px;">
	<form id="payment" action=""onsubmit="return false">

    <fieldset>
 			<legend>查看我的信息</legend>
        <ol>
        	<div class="florder">
            <li>
                <label for="name">会员名：</label>
                <input id="userName" name="userName" type="text" value="${user.userName }" placeholder="请输入用户名" required autofocus>
            </li>
			 <li>
                <label for="postcode">邮政编码：</label>
                <input id="postcode" name="postcode" type="text" value="${address.postcode}" placeholder="请输入邮政编码" required autofocus>
            </li>
           
            <li>
                <label for="email">地址：</label>
                <input id="email" name="address" value="${address.address }" placeholder="四川内江市" required>
            </li>
            <li>
                <label for="phone">手机号：</label>
                <input id="mobile" name="mobile" value="${user.mobile }" placeholder="17778605669" required>
            </li>
            </div>

        </ol>
      
			<button class="flbutton layui-btn layui-btn-radius layui-btn-primary" id="hdata" data-method="offset" data-type="auto" onclick="copyText()">保存信息</button>
    	
    </fieldset>

</form>
</div>


<script type="text/javascript">

	  function copyText(){
		
		  $.ajax({
	            //几个参数需要注意一下
	                type: "post",//方法类型
	                dataType: "json",//预期服务器返回的数据类型
	                url: "changeuserData" ,//url
	                data: $('#payment').serialize(),
	                beforeSend: function(){
	                	var postcode=$("#postcode").val();
	                	var mobile=$("#mobile").val();
	            		var reg = /^[1-9][0-9]{5}$/;
	            		var checkPhone = /^(13[0-9]|14[5-9]|15[012356789]|166|17[0-8]|18[0-9]|19[8-9])[0-9]{8}$/;
	            		if(!checkPhone.test(mobile)){
							alert("手机号格式不正确!");
							return false;
						}
	            		if(!reg.test(postcode)){
	            			alert("邮编格式不正确");
	            			return false;
	            		}
	                    // Handle the beforeSend event
	                   },
	                success: function (result) {
	                    console.log(result);//打印服务端返回的数据(调试用)
	                    layui.use('layer', function(){
	                    	  var layer = layui.layer;
	                    	  
	                    	  layer.msg('保存信息成功',{
	                    		  icon: 1,
	                    		  time: 1000 //1秒关闭（如果不配置，默认是3秒）
	                    		});
	                    	});  
	                   
	                    ;
	                }
	            });
		 
		
		  }
	 
	


</script>
</body>
</html>