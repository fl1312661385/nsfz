  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ImgUrl" value="http://ps95majwc.bkt.clouddn.com" scope="request"/>
   <div class="daohang">
        <div class="daohang11">
        <c:if test="${userName==null }">
	       <li class="menufl">
	        <a href="login_no"  id="fluser">登录</a>
            </li>
		   <a href="register_no" class="flbill">注册</a>
		    </c:if>
		    
		    
		    
		     <c:if test="${userName!=null }">
	       <li class="menufl"><a href="">${userName }</a>

            <ul id="c2">
             
              <li class="sc2" ><a href="userData">我的信息</a></li>
              <li class="sc2"><a href="orderlist">我的订单</a></li>
             <li class="sc2"><a href="mybill">账单查询</a></li>
            </ul>
            </li>
           <!--  <a href="mybill" class="flbill">账单查询</a> -->
		    </c:if>
		   <!--  <span style="color:#aaa;float:right;">联系客服：18882028888</span> -->
		</div>
         <c:if test="${userName!=null }">
        <div class="daohang12"><a href="shopcart" class="fla">购物车</a></div>
        <div class="daohang12"><a href="exit" class="fla">退出</a></div>
        </c:if>
      </div>