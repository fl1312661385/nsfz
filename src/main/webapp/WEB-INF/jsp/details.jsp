<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>商品详情页面</title>
    <link rel="stylesheet" type="text/css" href="css/fl.css">
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


  <div class="content content-nav-base datails-content">
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
    <div class="data-cont-wrap w1200">
      <div class="crumb">
        <a href="javascript:;">首页</a>
        <span>></span>
        <a href="javascript:;">所有商品</a>
        <span>></span>
        <a href="javascript:;">产品详情</a>
      </div>
      <div class="product-intro layui-clear">
        <div class="preview-wrap">
      
         
<%--          <a href="javascript:;"><img src="img/hot${hotproduct.productId }.jpg"></a> --%>
     <a href="javascript:;"><img src="${ImgUrl }/${productInformation.productImg }"></a>
        
        
         
<!--           <a href="javascript:;"><img src="img/details_img1.jpg"></a> -->
        </div>
        <div class="itemInfo-wrap">
          <div class="itemInfo">
            <div class="title">
              <h4>${productInformation.description } </h4>
             
            </div>
            <div class="summary">
              <p class="reference"><span>参考价</span> <del>￥${productInformation.fprice }</del></p>
              <p class="activity"><span>活动价</span><strong class="price"><i>￥</i>${productInformation.tprice }</strong></p>
              <p class="address-box"><span>库&nbsp;&nbsp;&nbsp;&nbsp;存</span><strong class="address">${productInformation.stock }件</strong></p>
            </div>
            <div class="choose-attrs">
              <div class="color layui-clear"><span class="title">&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
              <div class="number layui-clear"><span class="title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span><div class="number-cont"><span class="cut btn">-</span><input onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" maxlength="4" type="" name="" value="1" id="inputId"><span class="add btn">+</span></div></div>
            </div>
            <div class="choose-btns">
              <a class="layui-btn layui-btn-primary purchase-btn" id="aId" href="">立刻购买</a>
              <a class="layui-btn  layui-btn-danger car-btn" id="aidcart" href=""><i class="layui-icon layui-icon-cart-simple"></i>加入购物车</a>  
            </div>
          </div>
        </div>
      </div>
      <div class="layui-clear">
        <div class="aside">
          <h4>热销推荐</h4>
          <div class="item-list">
            
           
            <div class="item">
             <a href="details?productId=34"><img src="img/details_img2.jpg"></a> 
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
          </div>
        </div>
        <div class="detail" style="float:left;">
        
    <div class="layui-tab">
  <ul class="layui-tab-title">
   <!--  <li class="layui-this"><h4>详情</h4></li> -->
    <li  class="layui-this"><h4>评价</h4></li>
    <li></li>
    <li></li>
    <li></li>
     <li></li>
      <li></li>
     
  </ul>
  <div class="layui-tab-content" >
    <!-- <div class="layui-tab-item " >
      1. 高度默认自适应，也可以随意固宽。
      <br>2. Tab进行了响应式处理，所以无需担心数量多少。
    </div> -->
    <div class="layui-tab-item layui-show">
<!--     	评价回复 -->
    	<form action="comment" onsubmit="return checkInput();">
    	
    	<textarea rows="5" cols="100" name="content" id="customerMessage"></textarea><br>
    	<input id="productId" name="productId" value="${productInformation.productId }" type="hidden">
    	<button type="submit" class="layui-btn layui-btn-warm" id="pinglun">评论</button>
    	</form>
    	<hr>
<!--     	显示评论list -->
		<input id="a" name="a" type="hidden" value="">
		<input id="name1" name="b" type="hidden" value="">
		
<br>
<br>

	    	<c:forEach items="${result}" var="a">
	    		<c:set var="x" value="0"></c:set>
		    	<c:forEach items="${a}" var="b">
			    	<c:if test="${x==0 }">	    	
			    	<div id="fl_comment_reply">
			    	  	
				    	<input value="${b.commentId }" name="commentId" id="commentId" type="hidden">
				    	<h3>${b.replyName }
					    	<c:if test="${b.commentName!=null }">
					    	@${b.commentName }</c:if>：${b.content}</h3><br>
				    	<p id="">${b.commentDate } ${b.commentTime } <a class="reply_btn" onclick="flreply(${b.commentId })">回复</a>  </p>    	
			
				    </div>
				 
				    </c:if>
				    <c:if test="${x!=0 }">	    	
			    	<div id="fl_comment_reply1" >
			    	  	
				    	<input value="${b.commentId }" name="commentId" id="commentId" type="hidden">
				    	${b.replyName }
					    	<c:if test="${b.commentName!=null }">
					    	@${b.commentName }</c:if>：${b.content}</h3><br>
				    	<p id="">${b.commentDate } ${b.commentTime } <a class="reply_btn" onclick="flreply(${b.commentId })">回复</a>  </p>    	
			
				    </div>
				    </c:if>
				    <c:set var="x" value="1"></c:set>
				   
		    	</c:forEach>
		    	<br>
		    
	    	<hr style="background-color:red;"/>
	    	</c:forEach>
	    	
    	<script>
			$(function(){
				$("#pinglun").click(function(){
					var c=$("#customerMessage").val();
					var b=c.length;
					if(b==0){
						alert("评论不能为空！！！");
						return false;
					}
				})
				
			})
			
		</script>
    	
    	<script type="text/javascript">
    	var str;
        $(function(){           
             $(".reply_btn").click(function(){        	
                $(".reply_textarea").remove();     
                str = document.getElementById("commentId").value;
              
                $(this).parent().parent().after("<div class='reply_textarea' style='width:800px;height:40px;'><textarea name='replyContent' id='replyContent' cols='60' rows='1' style='margin-left:120px;padding: 2px 0px 2px 5px;'></textarea><input class='layui-btn layui-btn-xs' value='取消' onclick='quxiao()' style='width:40px;margin-top:-16px;padding: 2px 0px 2px 5px;' /><input value='发表'class='layui-btn layui-btn-xs' style='width:40px;margin-top:-16px;padding: 2px 0px 2px 5px;' onclick='reply()'/></div>");
            }); 
        });
    </script>
   		
    	
    	
    </div>
   
  </div>



        </div>
      </div>
    </div>
  </div>
 <script type="text/javascript">
 function flreply(a){
	   document.getElementById('name1').value=a;
  }
 
 function quxiao(){
	 $(".reply_textarea").remove(); 
 }
 </script>
<script type="text/javascript">
  layui.config({
    base: 'js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery'],function(){
      var mm = layui.mm,$ = layui.$;
      var cur = $('.number-cont input').val();
      $('.number-cont .btn').on('click',function(){
        if($(this).hasClass('add')){
          cur++;
         
        }else{
          if(cur > 1){
            cur--;
          }  
        }
        $('.number-cont input').val(cur)
      })
      
  });
</script>
 <script type="text/javascript">
    $(document).ready(function(){
       //点击链接的时候调用
      $("#aId").click(function(){
 
          //得到input的值
          var inputId = $("#inputId").val();
          //设置aId的href的值
          $("#aId").attr("href","oneproduct?productId=${productInformation.productId }&productcount="+inputId);
      });
    });
    $(document).ready(function(){
        //点击链接的时候调用
       $("#aidcart").click(function(){
  
           //得到input的值
           var inputId = $("#inputId").val();
           //设置aId的href的值
           $("#aidcart").attr("href","joincart?productId=${productInformation.productId }&productcount="+inputId);
       });
     });
</script>
<script type="text/javascript">
function reply(){
		var content =$("#replyContent").val();
		var x=content.length;
		if(x==0){
			alert("评论不能为空！！！");
			return false;
		}
		var commentId=document.getElementById('name1').value;
		/* console.log(commentId); */
		var productId = $("#productId").val();
		var flag = "${empty userName}"; 
		//登录flag为假  不登录为真
	 /* 	console.log(content+"========"+${userId}+"===="+${userName}); */
		/* console.log(flag);	 */
	 if(flag=="true"){
			alert("请登录后再评论！！！");
			return false;
		} 
		
		$.ajax({
            url: "replyComment",
            type: "post",
            data:{"commentId":commentId,"productId":productId,"content":content},
            dataType: "json",
            success: function(data){
            	console.log(data);
            	if(data==1){
            		window.location.href="details?productId="+productId;  
            	}
            	/* layer.msg("删除成功", {icon: 6}); */
            	
             
            }

        });
		/* window.location.reload(); */
}
</script>
<script type="text/javascript">
var commentId
function creatReply(key){
	 $(".reply_textarea").remove();
    commentId=key;
    $(this).parent().append("<div class='reply_textarea' style='float:left;width:700px;height:80px;'> ${userName }<textarea name='' cols='60' rows='2' style=''></textarea><br/><input class='layui-btn layui-btn-xs' value='取消' style='width:40px;margin-left:350px;' /><input value='发表'class='layui-btn layui-btn-xs' style='width:40px;' onclick='reply(commentId)'/></div>");

	} 
</script>



</body>
</html>