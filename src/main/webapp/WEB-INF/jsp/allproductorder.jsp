<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>全部商品订单界面</title>
  <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/fl.css">
  <link rel="stylesheet" type="text/css" href="css/order.css">
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
    <div class="banner-bg w1200">
      <h3>夏季清仓</h3>
      <p>宝宝被子、宝宝衣服3折起</p>
    </div>
    
  <div class="w1200" style="height:190px;">
  
   
	<form id="payment" action="pay">

    <fieldset>
 			
        <ol>
        	<div class="florder">
            <li> <span id="shouAddress">收货地址</span>
                <span for="name" id="shoujianren">收件人：</span>
                <input id="name" class="flshoujianren" name="userName" type="text" value="${useraddress.userName }" placeholder="请输入用户名" required autofocus>
            </li>
			 <li>
                <label for="name">邮政编码：</label>
                <input id="name" name="postcode" type="text" value="${useraddress.postcode }" placeholder="请输入邮政编码" required autofocus>
            </li>
            </div>
            <div class="frorder">
            <li>
                <label for="email">地址：</label>
                <input id="email" name="address" value="${useraddress.address }" placeholder="四川内江市" required>
            </li>
            <li>
                <label for="phone">联系电话：</label>
                <input id="phone" name="mobile" value="${useraddress.mobile }" placeholder="17778605669" required>
            </li>
            </div>

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
       <c:forEach items="${cartInformation}" var="i" >
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
              
                <a href="javascript:;"><img src="${ImgUrl }/${i.productImg}" alt=""></a>
                <div class="text">
                  <div class="title">${i.productName }</div>
                 
<!--                   <p><span>粉色</span>  <span>130</span>cm</p> -->
                </div>
              </div>
            </li>
            <li class="th th-price">
              <span class="th-su">${i.tprice }</span>
            </li>
            <li class="th th-amount">
              <div class="box-btn layui-clear">
               
               <input style="margin-left:25px;" class="Quantity-input" type="" name="" value="${i.quantity}" disabled="disabled">
               
              </div>
            </li>
            <li class="th th-sum">
              <span class="sum">${i.tprice*i.quantity}</span>
            </li>
            
          </ul>
        
        <c:set var="b" target="int" value=" ${b+i.quantity*i.tprice}"/>
          
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

		</c:forEach>


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
          <button class="layui-btn" type="submit"><i style="color:white">提交订单</i></button>
            </form>
        </div>
        <div class="th total">
          <p>应付：<span class="pieces-total">${b }</span></p>
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">
  layui.config({
    base: 'js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
    
    // 模版导入数据
    // var html = demo.innerHTML,
    // listCont = document.getElementById('list-cont');
    // mm.request({
    //   url: '../json/shopcart.json',
    //   success : function(res){
    //     listCont.innerHTML = mm.renderHtml(html,res)
    //     element.render();
    //     car.init()
    //   },
    //   error: function(res){
    //     console.log(res);
    //   }
    // })
    // 
    car.init()


});
</script>

</body>
</html>