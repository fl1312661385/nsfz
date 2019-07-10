<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>用户订单界面</title>
    <link rel="stylesheet" type="text/css" href="css/florder.css">
    <link rel="stylesheet" type="text/css" href="css/fl.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
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
    <div class="banner-bg w1200">
      <h3>夏季清仓</h3>
      <p>宝宝被子、宝宝衣服3折起</p>
    </div>
    
  
    <div class="cart w1200">
      <div class="cart-table-th" >
<!--         <div class="th th-chk"> -->
<!--           <div class="thitem"> -->
           
<!--           <label>订单信息</label> -->
<!--           </div> -->
<!--         </div> -->
        <div class="thitem">
          <div class="thinner">
            订单编号
          </div>
        </div>
        <div class="thitem">
          <div class="thinner">
            商品
          </div>
        </div>
        <div class="thitem">
          <div class="thinner">
            总价
          </div>
        </div>
        <div class="thitem">
          <div class="thinner">
            数量
          </div>
        </div>
         <div class="thitem">
          <div class="thinner">
           	地址
          </div>
        </div>
        <div class="thitem">
          <div class="thinner">
           状态
          </div>
        </div>
        <div class="thitem">
          <div class="thinner">
            操作
          </div>
        </div>
        
      </div>
      
      <div class="w1200" >
         <c:if test="${!empty list }">
       <c:forEach items="${list}" var="i" begin="${(util.currentPage-1)*util.pageSize }" end="${util.pageSize * util.currentPage-1}" step="1">
       <div class="thitemChildren">
          <div class="thinner">
          ${i.orderCode}
          </div>
        </div>
        <div class="thitemChildren">
          <div class="thinner">
          
          
            <img src="${ImgUrl }/${i.productImg}" style="width:99px;heigh:90px">
          </div>
        </div>
        <div class="thitemChildren">
          <div class="thinner">
            ${i.orderPrice*i.quantity}
          </div>
        </div>
        <div class="thitemChildren">
          <div class="thinner">
            ${i.quantity}
          </div>
        </div>
        <div class="thitemChildren">
          <div class="thinner">
            ${i.address}
          </div>
        </div>
        <div class="thitemChildren">
          <div class="thinner">
         
        <c:if test="${i.orderType==0}">
   			未付款
		</c:if>
		<c:if test="${i.orderType==1}">
   			已下单
		</c:if>
		<c:if test="${i.orderType==2}">
   			已发货
		</c:if>
		<c:if test="${i.orderType==3}">
   			交易成功
		</c:if>
          </div>
        </div>
       
       <div class="thitemChildren">
          <div class="thinner">
          <c:if test="${i.orderType==0}">
   			<a href="cancelorder?orderId=${i.orderId }" class="fla">取消</a>  
         <a href="" class="fla">付款</a>
		</c:if>
           <c:if test="${i.orderType==1}">
   			
          	 <a href="javavoid:(0)" class="fla">正在派送</a>
		</c:if>
		<c:if test="${i.orderType==2}">
   			<a href="ordergoods?orderId=${i.orderId }" class="fla">确认收货</a>
          
		</c:if>
		<c:if test="${i.orderType==3}">
   			申请售后
          
		</c:if>
          </div>
        </div>
        <hr>
       </c:forEach>
       
      </div>
      <div style="text-align:center;">
      <i style="font-size:120%;">共${util.count }条记录</i>
          
           <c:if test="${util.currentPage>1}" >
  
			<a href="orderlist?currentPage=${util.currentPage-1}" class="layui-btn layui-btn-warm">上一页</a>
        
  		 </c:if>
   
           
            <a href="" class="layui-btn layui-btn-disabled layui-btn-radius">第${util.currentPage }页</a> 
               <c:if test="${util.currentPage<util.lastPage}" >
  

           <a href="orderlist?currentPage=${util.currentPage+1}" class="layui-btn layui-btn-warm" >下一页</a>
   			</c:if>
		</div>
	</c:if>
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