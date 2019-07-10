<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>宝宝拉肚子</title>
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
        
        <div class="item" style="width:100%;height:auto;">
            <div class="img">
              <img src="img/new1.jpg" alt="">
            </div>
            <div class="text">
              <h4>四个月的宝宝如何添加辅食?</h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont"  style="width:550px;">一般来说，四个月的宝宝饮食仍应以母乳或配方奶粉为主，6个月之后再开始给宝宝添加辅食。给宝宝添加辅食要讲究方法，不然添加错了，宝宝消化布料。那么，宝宝如何添加辅食呢？</p>
            <p class="info-cont"  style="width:550px;">宝宝的第一口辅食，建议从婴儿营养米粉开始添加。米粉质地细腻，含有钙、铁、锌等多种营养素，宝宝食用米粉，既可以获得比较均衡的营养，胃肠负担也不会过重，同时也减少因食物引起宝宝过敏的可能性。</p>
            
            <h4>四个月的宝宝辅食添加原则</h4>

<p class="info-cont"  style="width: 890px;">由于母乳喂养至少进行6个月，所以4个月宝宝还不适合添加辅食，6个月之后再开始给宝宝添加辅食。给宝宝添加辅食时，妈妈要遵循哪些原则呢？不让宝宝对辅食产生抵抗心理是首要原则哦。宝宝初次接触辅食，难免会对新鲜的辅食产生抵触心理，这时，妈妈不要过于焦躁。宝宝只是不适应辅食的味道而已，慢慢适应了就会好的。</p>
             <h4>四个月的宝宝添加辅食注意事项</h4>

<p class="info-cont"  style="width: 890px;">对于四个月的宝宝来说，辅食还不是添加，因为宝宝肠胃娇弱，等到6个月，再给宝宝添加辅食。而宝宝在进食新的食物时，往往会出现不适应的情况。所以，妈妈在给宝宝添加辅食时，一定要注意以下事项哦。</p>
            <p class="info-cont"  style="width: 950px;">1、开始时应该逐样喂食，不应同时喂食多种食物；这样，如发生过敏症时就容易查出是由什么食物引起的。开始喂食新食物时，应该间隔1-2周。</p>
            <p class="info-cont"  style="width: 890px;">2、逐样喂食时每次要少量，如开始1茶匙，逐渐增加到2-3大汤匙或半碗。</p>
            <p class="info-cont"  style="width: 890px;">3、如果宝宝初次不愿吃辅食，例如用嘴抿、掉头逃避、闭口或喷出来表示拒绝，妈妈也不要强迫宝宝吃，可以暂停3-4天后再给宝宝试吃哦。</p>
            <p class="info-cont"  style="width: 890px;">4、给宝宝喂食辅食的时间可以选在母乳或奶粉喂养之后，也可以在母乳或奶粉喂养的间歇添加。</p>
            
            
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