<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>无商品界面</title>
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
        <div class="right-cont-wrap" >
          <h1 id="flnoproduct">抱歉！没找到该商品！！！</h1>
           
          </div>
        </div>
      </div>
    </div>
  </div>



</body>
</html>