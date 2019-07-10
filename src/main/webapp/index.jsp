<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>母婴网站首页</title>
   <link rel="stylesheet" type="text/css" href="css/fl.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
  <script type="text/javascript" src="layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<style>

</style>
<body id="list-cont">
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
          <!-- 宝贝世家 -->
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


  <div class="content">
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
    <div class="category-con">
      <div class="category-inner-con w1200">
        <div class="category-type">
          <h3>全部分类</h3>
        </div>
        <div class="category-tab-content">
          <div class="nav-con">
          <!--   <ul class="normal-nav layui-clear">
              <li class="nav-item">
                <div class="title">奶粉辅食</div>
                <p><a href="#">奶粉</a><a href="#">捕食</a><a href="#">营养品</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">纸尿裤</div>
                <p><a href="#">纸尿裤</a><a href="#">婴儿湿巾</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">洗护用品</div>
                <p><a href="#">母婴洗护用品</a><a href="#">孕婴童用品</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">儿童玩具</div>
                <p><a href="#">婴幼玩具</a><a href="#">遥控玩具</a><a href="#">积木拼插</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">车窗座椅</div>
                <p><a href="#">婴儿推车</a><a href="#">儿童安全座骑</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
              <li class="nav-item">
                <div class="title">儿童童鞋</div>
                <p><a href="#">童装</a><a href="#">童鞋</a><a href="#">婴童内衣及配饰</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
           
              <li class="nav-item nobor">
                <div class="title">孕妈专区</div>
                <p><a href="#">孕妇装</a><a href="#">背婴带</a><a href="#">母婴服务</a></p>
                <i class="layui-icon layui-icon-right"></i>
              </li>
            </ul> -->
          </div>
        </div>
      </div>
      <div class="category-banner">
        <div class="w1200">
        <div class="layui-carousel" id="test1" lay-filter="test1">
		  <div carousel-item="">
		    <div><a href="details?productId=35"><img src="img/banner1.jpg"></a></div>
		    <div><a href="details?productId=35"><img src="img/banner1.jpg"></a></div>
		    <div><a href="details?productId=35"><img src="img/banner1.jpg"></a></div>
		  </div>
		</div> 
         <!--  <img src="img/banner1.jpg"> -->
        </div>
      </div>
    </div>
   





    <div class="hot-recommend-con">
     
       <div class="hot-con1 w1200 layui-clear">
          <div class="item">
            <h4>热销推荐</h4>
            <div class="big-img">
              <a href="details?productId=8"><img src="img/hot1.jpg"></a>
            </div>
            <div class="small-img">
            <!--   <a href="javascript:;"><img src="img/hot2.png" alt=""></a> -->
            </div>
          </div>
          <div class="item">
            <div class="top-img">
              <a href="details?productId=2"><img src="img/hot5.jpg"></a>
            </div>
            <div class="bottom-img">
              <a href="details?productId=4"><img src="img/hot6.jpg"></a>
              <a class="baby-cream" href="details?productId=32"><img src="img/hot7.jpg"></a>
            </div>
          </div>
          <div class="item item1 margin0 padding0">
            <a href="details?productId=27"><img src="img/hot8.jpg"></a>
            <a href="details?productId=33"><img class="btm-img" src="img/hot10.jpg"></a>
          </div>
    
    
     </div>
     
     
     
     
    </div>
    


    <div class="product-cont w1200" id="product-cont">
      <div class="product-item product-item1 layui-clear">
        <div class="left-title">
          <h4><i>1F</i></h4>
          <img src="img/icon_gou.png">
          <h5>宝宝服饰</h5>
        </div>
        <div class="right-cont">
          <img src="img/img12.jpg" alt="">
          <div class="img-box">
            <a href="details?productId=1"><img src="img/s_img7.jpg"></a>
            <a href="details?productId=2"><img src="img/s_img8.jpg"></a>
            <a href="details?productId=3"><img src="img/s_img9.jpg"></a>
            <a href="details?productId=4"><img src="img/s_img10.jpg"></a>
            <a href="details?productId=5"><img src="img/s_img11.jpg"></a>
          </div>
        </div>
      </div>
      <div class="product-item product-item2 layui-clear">
        <div class="left-title">
          <h4><i>2F</i></h4>
          <img src="img/icon_gou.png">
          <h5>奶粉辅食</h5>
        </div>
        <div class="right-cont">
          <img src="img/img12.jpg" alt="">
          <div class="img-box">
            <a href="details?productId=1"><img src="img/s_img7.jpg"></a>
            <a href="details?productId=2"><img src="img/s_img8.jpg"></a>
            <a href="details?productId=3"><img src="img/s_img9.jpg"></a>
            <a href="details?productId=4"><img src="img/s_img10.jpg"></a>
            <a href="details?productId=5"><img src="img/s_img11.jpg"></a>
          </div>
        </div>
      </div>
      <div class="product-item product-item3 layui-clear">
        <div class="left-title">
          <h4><i>3F</i></h4>
          <img src="img/icon_gou.png">
          <h5>宝宝用品</h5>
        </div>
        <div class="right-cont">
          <img src="img/img12.jpg" alt="">
          <div class="img-box">
             <a href="details?productId=1"><img src="img/s_img7.jpg"></a>
            <a href="details?productId=2"><img src="img/s_img8.jpg"></a>
            <a href="details?productId=3"><img src="img/s_img9.jpg"></a>
            <a href="details?productId=4"><img src="img/s_img10.jpg"></a>
            <a href="details?productId=5"><img src="img/s_img11.jpg"></a>
          </div>
        </div>
      </div>
    </div>

   
  </div>

  <div class="footer">
    <div class="ng-promise-box">
      <div class="ng-promise w1200">
        <p class="text">
          <a class="icon1" href="javascript:;">7天无理由退换货</a>
          <a class="icon2" href="javascript:;">满99元全场免邮</a>
          <a class="icon3" style="margin-right: 0" href="javascript:;">100%品质保证</a>
        </p>
      </div>
    </div>
    <div class="mod_help w1200">                                     
      <p>
        <a href="javascript:;">关于我们</a>
        <span>|</span>
        <a href="javascript:;">帮助中心</a>
        <span>|</span>
        <a href="javascript:;">售后服务</a>
        <span>|</span>
        <a href="javascript:;">母婴资讯</a>
        <span>|</span>
        <a href="javascript:;">关于货源</a>
      </p>
      <p class="coty">母婴商城版权所有 &copy;</p>
    </div>
  </div>
  <script>
layui.use(['carousel', 'form'], function(){
  var carousel = layui.carousel
  ,form = layui.form;
  
  //常规轮播
  carousel.render({
    elem: '#test1'
    ,width: '1200px'
    ,height: '400px'
    ,arrow: 'always'
  });
  
 
});
</script>
  
  
  <script type="text/javascript">

layui.config({
    base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','carousel'],function(){
      var carousel = layui.carousel,
     mm = layui.mm;
     var option = {
        elem: '#test1'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always'
        ,height:'298' 
        ,indicator:'none'
      }
      carousel.render(option);
      // 模版引擎导入
     // var ins = carousel.render(option);
     // var html = demo.innerHTML;
     // var listCont = document.getElementById('list-cont');
     // // console.log(layui.router("#/about"))
     //  mm.request({
     //    url: '../json/index.json',
     //    success : function(res){
     //      console.log(res)
     //      listCont.innerHTML = mm.renderHtml(html,res)
     //      ins.reload(option);
     //    },
     //    error: function(res){
     //      console.log(res);
     //    }
     //  })
    

});
  </script>
</body>
</html>
