<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>宝宝升级学跳跃</title>
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
        
          <div class="item" style="width: 100%;height:auto">
            <div class="img">
              <img src="img/new2.jpg" alt="">
            </div>
            <div class="text">
              <h4>宝宝升级学跳跃，早教游戏这样玩！</h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">跳跃是孩子成长过程中必不可少的一个重要环节，爸爸妈妈可以和宝宝做一些游戏帮助他学跳，少走弯路。</p>
            
              <p class="info-cont">宝宝已经开始走路了，但是你可能会慢慢发现，他已经不能满足原来的慢慢走路，而是逐渐加快脚步，并且伴</p>
            
              <p class="info-cont">随着身体平衡能力的日趋成熟后，开始跳跃了。跳跃是孩子成长过程中必不可少的一个重要环节，爸爸妈妈可以</p>
            
              <p class="info-cont">和宝宝做一些游戏帮助他学跳，少走弯路。</p>
           <h4> 跳圈圈</h4>

<p class="info-cont">方法：爸爸妈妈用彩色粉笔在地上画出各种颜色的圈子，让宝宝按爸爸妈妈的指令跳进红色或绿色圈子里。</p>


<h4> 摘果子</h4>

<p class="info-cont">方法：可将颜色鲜艳的彩球挂在位置稍高的地方，鼓励宝宝向上跳去抓彩球，并加以表扬。</p>
<h4> 袋鼠跳</h4>


<p class="info-cont">1. 在地垫上，爸爸妈妈双手扶住宝宝腋下，让宝宝光脚着地用力蹬。</p>

<p class="info-cont">2. 爸爸妈妈可以有节奏地顺着宝宝蹬脚动作向前推进。</p>

<p class="info-cont">3. 爸爸妈妈在一边推进的时候要一边说：“宝宝学袋鼠跳，跳跳跳。”这个游戏可以使宝宝下肢肌肉接受触觉刺激。</p>

<p class="info-cont">这个游戏可以刺激宝宝的下肢肌肉，宝宝一次蹬地可以蹦起很高，他会觉得很兴奋，而且爸爸妈妈在一旁的鼓励，对</p>

<p class="info-cont">他而言，更是分外有力，于是他会很热衷于蹦跳。但是爸爸妈妈要小心，因为这个游戏大人最累，所以当你没有力气时，要跟宝宝商量，休息一下。</p>
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