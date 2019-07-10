<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>搜索商品界面</title>
    <link rel="stylesheet" type="text/css" href="css/fl.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
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


  <div class="content content-nav-base commodity-content">
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
    <div class="commod-cont-wrap">
      <div class="commod-cont w1200 layui-clear">
        <div class="left-nav">
          <div class="title">所有分类</div>
          <div class="list-box">
            <dl>
             <dt>奶粉辅食</dt>
             <dd><a href="specific?type=1">进口奶粉</a></dd>
             <dd><a href="specific?type=2">营养品</a></dd>
            </dl>
            <dl>
             <dt>儿童用品</dt>
           
             <dd><a href="specific?type=3">婴儿湿巾</a></dd>
             <dd><a href="specific?type=4">婴儿车</a></dd>
             <dd><a href="specific?type=5">婴儿床</a></dd>
            
            </dl>
            <dl>
             <dt>儿童早教</dt>
             <dd><a href="specific?type=6">儿童玩具</a></dd>
             <dd><a href="specific?type=7">早教书籍</a></dd>
            </dl>
            <dl>
             <dt>儿童服饰</dt>
             <dd><a href="specific?type=8">童装</a></dd>
             <dd><a href="specific?type=9">童鞋</a></dd>
           
            </dl>
            
          </div>
        </div>
        <div class="right-cont-wrap">
          <div class="right-cont">
            <div class="sort layui-clear">
              <a class="active" href="javascript:;" event = 'volume'>销量</a>
              <a href="javascript:;" event = 'price'>价格</a>
              <a href="javascript:;" event = 'newprod'>新品</a>
              <a href="javascript:;" event = 'collection'>收藏</a>
            </div>
            <div class="prod-number">
              <span>共${util.count }条记录</span>
            </div>
            <div class="cont-list layui-clear" id="list-cont">
         
             <c:forEach items="${serchproduct}" var="i" begin="${(util.currentPage-1)*util.pageSize }" end="${util.pageSize * util.currentPage-1}" step="1">
           
		            <div class="item">
		                <div class="img">
		                  <a href="details?productId=${i.productId}"><img src=" ${ImgUrl }/${i.productImg}"></a>
		                </div>
		                <div class="text">
		                  <p class="title"> ${i.description}</p>
		                  <p class="price">
		                    <span class="pri">￥ ${i.tprice}</span>
		                    <span class="nub">1266付款</span>
		                  </p>
		                </div>
		              </div>
					
			</c:forEach>
              
              
              
              
            </div>
            <!-- 模版引擎导入 -->
            <!-- <script type="text/html" id="demo">
              {{# layui.each(d.menu.milk.content,function(index,item){}}    
                <div class="item">
                  <div class="img">
                    <a href="javascript:;"><img src="{{item.img}}"></a>
                  </div>
                  <div class="text">
                    <p class="title"></p>
                    <p class="price">
                      <span class="pri">{{item.pri}}</span>
                      <span class="nub">{{item.nub}}</span>
                    </p>
                  </div>
                </div>
              {{# }); }}
            </script> -->
            <div id="d" style="text-align: center;">
           
             <a href="" class="layui-btn layui-btn-disabled layui-btn-radius" color="red">共${util.count }条记录</a>
    <c:if test="${util.currentPage>1}" >
   <a href="searchproduct?title=${title }&currentPage=${util.currentPage-1}" class="layui-btn layui-btn-warm">上一页</a>
          </c:if>
            <a href="" class="layui-btn layui-btn-disabled layui-btn-radius">第${util.currentPage }页</a> 
     <c:if test="${util.currentPage<util.lastPage}" >
           <a href="searchproduct?title=${title }&currentPage=${util.currentPage+1}" class="layui-btn layui-btn-warm" >下一页</a>
            </c:if>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



</body>
</html>