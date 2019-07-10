<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>宝宝肠绞痛</title>
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


  <div class="content content-nav-base information-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="commodity">所有商品</a>
            <a href="buytoday">今日团购</a>
            <a href="information"  class="active">母婴资讯</a>
            <a href="about">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="info-list-box">
      <div class="info-list w1200">
        <div class="item-box layui-clear" id="list-cont">
        
         <div class="item" style="width:100%;height:auto">
            <div class="img">
              <img src="img/new1.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="tharm">宝宝肠绞痛，这些治疗方法宝妈一定要知道！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont" style="width:580px;">有些婴儿会出现肠绞痛，肠绞痛素质有些小婴儿会出现突然性的大声哭叫，可持续几个小时，也可阵发性发作。那么怎么看新生儿是不是心绞痛呢？一般肠绞痛的判断标准是：连续3个星期或以上，每星期超过3天，每天3小时以上的无法安慰的哭闹。</p>
           <p class="info-cont" style="width:580px;">现实生活中,如果一个健康的孩子无缘无故地哭闹、尖叫或者激动，而且比正常情况下持续的时间长得多，那就可以认定是新生儿肠绞痛。连续新生儿肠绞痛的特点为间歇性的哭闹，这种情形与肠套叠很类似。不同的是，肠绞痛的新生儿，不会呕吐也不会解出含有血丝的黏液便。</p>
           
           
           
<h4> 婴儿肠绞痛的治疗方法</h4>

<p class="info-cont" style="width: 890px;">当婴儿肠绞痛发作时，应将婴儿竖抱头伏于肩上，轻拍背部排出胃内过多的空气，并用手轻轻按摩婴儿腹部，亦可用布包着热水袋放置婴儿腹部使肠痉挛缓解，如婴儿腹胀厉害，则用小儿开塞露进行通便排气，并密切观察婴儿，如有发热、脸色苍白、反复呕吐、便血等则应立即到医院检查，不可耽搁诊治时间。</p>
           
  <p class="info-cont" style="width: 890px;">经过以上方法的介绍之后，相信各位妈妈对怎么看新生儿是不是肠绞痛和婴儿肠绞痛的治疗方法都已经有所了解了，在现实生活中，如果一个健康的孩子无缘无故地哭闹、尖叫，而且比正常情况下持续的时间长得多，那就可以认定是新生儿肠绞痛。</p>         
           
           
           
            </div>
          </div>
         
        
          </div>
        </div>
        <!-- <div id="demo0" style="text-align: center;"></div> -->
      </div>
    </div>
  </div>
 



</body>
</html>