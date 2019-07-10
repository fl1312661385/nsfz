<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>一个商品订单界面</title>
    <link rel="stylesheet" type="text/css" href="css/fl.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="css/order.css">
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
  
   
	<form id="payment" action="Onepay" method="post">

    <fieldset>
 			
        <ol>
       
        	<div class="florder">
        	
       
       
            <li> <span id="shouAddress">收货地址</span>
                <span for="name" id="shoujianren">收件人：</span>
                <input id="buyer" class="flshoujianren" name="userName" type="text" value="${useraddress.userName }" placeholder="请输入用户名" required autofocus>
            </li>
			 <li>
                <label for="name">邮政编码：</label>
                <input id="postcode" name="postcode" type="text" value="${useraddress.postcode }" placeholder="请输入邮政编码" required autofocus>
            </li>
            </div>
            <div class="frorder">
            <li>
                <label for="email">地址：</label>
                <input id="address" name="address" value="${useraddress.address }" placeholder="四川内江市" required>
            </li>
            <li>
                <label for="phone">联系电话：</label>
                <input id="phone" name="mobile" value="${useraddress.mobile }" placeholder="17778605669" required>
            </li>
            </div>
			<input id="quantity" name="quantity" value="${productcount}" required type="hidden">
        </ol>

    </fieldset>

   

   
  </div>
  
    <div class="cart w1200">
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
             
            </div>
          <label>订单信息</label>
          </div>
        </div>
        <div class="th th-item">
          <div class="th-inner">
            商品
          </div>
        </div>
        <div class="th th-price">
          <div class="th-inner">
            单价
          </div>
        </div>
        <div class="th th-amount">
          <div class="th-inner">
            数量
          </div>
        </div>
        <div class="th th-sum">
          <div class="th-inner">
            小计
          </div>
        </div>
        
      </div>
      
      <div class="OrderList">
        <div class="order-content" id="list-cont">
        
        
          <ul class="item-content layui-clear">
            <li class="th th-chk">
              <div class="select-all">
                <div class="cart-checkbox">
                  
                </div>
              </div>
            </li>
            <li class="th th-item">
              <div class="item-cont">
              
                <a href="javascript:;"><img src="${ImgUrl }/${oneproduct.productImg}" alt=""></a>
                <div class="text">
                  <div class="title">${oneproduct.productName }</div>
                 
<!--                   <p><span>粉色</span>  <span>130</span>cm</p> -->
                </div>
              </div>
            </li>
            <li class="th th-price">
              <span class="th-su">${oneproduct.tprice }</span>
            </li>
            <li class="th th-amount">
              <div class="box-btn layui-clear">
               
               <input style="margin-left:25px;" class="Quantity-input" type="" name="quantity" value="${productcount}" disabled="disabled">
               
              </div>
            </li>
            <li class="th th-sum">
              <span class="sum">${oneproduct.tprice*productcount}</span>
            </li>
            
          </ul>
        
        
          
        </div>
      </div>


      <!-- 模版导入数据 -->
      <!-- <script type="text/html" id="demo">
        {{# layui.each(d.infoList,function(index,item){}}
          <ul class="item-content layui-clear">
            <li class="th th-chk">
              <div class="select-all">
                <div class="cart-checkbox">
                  <input class="CheckBoxShop check" id="" type="checkbox" num="all" name="select-all" value="true">
                </div>
              </div>
            </li>
            <li class="th th-item">
              <div class="item-cont">
                <a href="javascript:;"><img src="img/paging_img1.jpg" alt=""></a>
                <div class="text">
                  <div class="title">宝宝T恤棉质小衫</div>
                  <p><span>粉色</span>  <span>130</span>cm</p>
                </div>
              </div>
            </li>
            <li class="th th-price">
              <span class="th-su">189.00</span>
            </li>
            <li class="th th-amount">
              <div class="box-btn layui-clear">
                <div class="less layui-btn">-</div>
                <input class="Quantity-input" type="" name="" value="1" disabled="disabled">
                <div class="add layui-btn">+</div>
              </div>
            </li>
            <li class="th th-sum">
              <span class="sum">189.00</span>
            </li>
            <li class="th th-op">
              <span class="dele-btn">删除</span>
            </li>
          </ul>
        {{# });}}
      </script> -->


      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              
            </div>
            
          </div>
        </div>
        <div class="th batch-deletion">
        
        </div>
        <div class="th Settlement">
          <button class="layui-btn" type="submit"><i style="color:white" id="order-submit">提交订单</i></button>
        </div>
          </form>
        <div class="th total">
          <p>应付：<span class="pieces-total">${oneproduct.tprice*productcount}</span></p>
        </div>
      </div>
    </div>
  </div>
 
<script type="text/javascript">
  layui.config({
    base: 'js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
    
  
    car.init()


});
</script>
<script type="text/javascript">


$(function(){

	$("#order-submit").click(function(){
		alert("1");
        var checkPhone = /^(13[0-9]|14[5-9]|15[012356789]|166|17[0-8]|18[0-9]|19[8-9])[0-9]{8}$/;
        var a=$("#buyer").val();
		var a1=a.length;
		var b=$("#postcode").val();
		var b1=b.length;
		var c=$("#address").val();
		var c1=c.length;
		var d=$("#phone").val();
		var d1=d.length;
		/* var e=$("#address").val();
		var e1=d.length;
		var f=$("#postcode").val();
		var f1=d.length;
		 */
		if(a1==0){
			alert("收货人不能为空!");
			return false;
		}
		
		if(b1==0){
			alert("邮政编码不能为空!");
			return false;
		}
		if(c1==0){
			alert("地址不能为空!");
			return false;
		}
		if(d1==0){
			alert("联系电话不能为空!");
			return false;
		}
		
		if(!checkPhone.test(d)){
			alert("手机号格式不正确!");
			return false;
		}
		var reg = /^[1-9][0-9]{5}$/;
		if(!reg.test(b)){
			alert("邮编格式不正确");
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

</script>
</body>
</html>