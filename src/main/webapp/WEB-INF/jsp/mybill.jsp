<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>我的账单界面</title>
   <link rel="stylesheet" type="text/css" href="css/bill.css">
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
    <div class="bigbill">
   <div class="bill-content">
   		<div class="bill-search">
   			<span class="bill-st">账单查询</span>
   			
		    
   		</div>
   		<hr/>
   		<c:if test="${!empty result}">
   		<div class="bill-details">
   			
	    	<c:forEach items="${result}" var="a" begin="${(util.currentPage-1)*util.pageSize }" end="${util.pageSize * util.currentPage-1}" step="1">
	    		<li class="bill-list">
   				<div><label>母婴商城</label></div>
	   				<p><i>${a[0].creatTime }</i></p>
	   					<ul class="bill-title"><i style="margin-right:144px">商品名称</i><i style="margin-right:10px">数量</i><i>单价</i></ul>
	   				<hr/>
	   				<div style="width:100%;height:240px">
		    	<c:forEach items="${a}" var="b">
   		   		
	   			
	   				<div style="height:30px">
	   				<div><span class="bill-product"><i style="margin-right:150px">${b.productName }</i><i style="margin-right:10px">${b.quantity }个</i><i>${b.orderPrice }元</i></span></div>
	   				
	   				</div>
	   				
	   				
   				 <c:set var="money" target="int" value="${money+b.quantity*b.orderPrice}"/>
		    	</c:forEach>
		    	</div>
		    	<hr/>
		    	<div class="bill-title"><i style="margin-right:144px">合计：</i><i>${money }元</i></div>
		    	</li>
		    	<c:remove var="money"/>
	    	
	    	</c:forEach>
   		<div class="bill-foot">
   			<!--  分页 -->
           <c:if test="${util.currentPage>1}" >
  
			<a href="mybill?currentPage=${util.currentPage-1}" class="layui-btn layui-btn-warm">上一页</a>
        
  		 </c:if>
   
           
            <a href="" class="layui-btn layui-btn-disabled layui-btn-radius">第${util.currentPage }页</a> 
               <c:if test="${util.currentPage<util.lastPage}" >
  

           <a href="mybill?currentPage=${util.currentPage+1}" class="layui-btn layui-btn-warm" >下一页</a>
   			</c:if>
   		</div>
   			
   			
   			<!-- <li class="bill-list">
   				<label>母婴商城</label>
   				<p><i>2019-04-09 23:02:03</i></p>
   				<ul class="bill-title"><i style="margin-right:144px">商品名称</i><i style="margin-right:10px">数量</i><i>单价</i></ul>
   				<hr/>
   				<div style="height:220px">
   				<div><span class="bill-product"><i style="margin-right:150px">总汽车</i><i style="margin-right:10px">1个</i><i>20.00</i></span></div>
   				<div><span class="bill-product"><i style="margin-right:150px">大汽车</i><i style="margin-right:10px">2个</i><i>20.00</i></span></div>
   				</div>
   				<hr/>
   				<div class="bill-title"><i style="margin-right:144px">合计：</i><i>500.00</i></div>
   			</li>
   		 -->
   		</div>
   		</c:if>
   
   </div>
   </div>
   

      
		

     <script type="text/javascript" src="js/jquery.min.js"></script>
     <script>
     $(function(){
    	$.ajax({
    		url:"",
    		data:{},
    		type:"post",
    		dataType:"json",
    		success:function(data){
    			console.log(data);
    		}
    	})
    	 
    	 
    	 
     })
     
    
     
     
     </script>


</body>
</html>