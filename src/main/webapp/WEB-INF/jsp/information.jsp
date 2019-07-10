<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>母婴咨询界面</title>
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
         
          <div class="item">
            <div class="img">
              <img src="img/new1.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="loose">四个月的宝宝如何添加辅食?</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">一般来说，四个月的宝宝饮食仍应以母乳或配方奶粉为主，6个月之后再开始给宝宝添加辅食。</p>
            </div>
          </div>
          <div class="item">
            <div class="img">
              <img src="img/new2.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="fuxie">只需这2招，“秋季腹泻”不用怕！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">秋季是小儿腹泻发生率最高的季节，因此得名为“秋季腹泻”。腹泻将小孩折腾得痛苦不堪了，很多妈妈都束手无策。其实，对付它，只需这2招！</p>
            </div>
          </div>
          <div class="item">
            <div class="img">
              <img src="img/new1.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="tharm">宝宝肠绞痛，这些治疗方法宝妈一定要知道！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">有些婴儿会出现肠绞痛，肠绞痛素质有些小婴儿会出现突然性的大声哭叫，可持续几个小时，也可阵发性发作。那么怎么看新生儿是不是心绞痛呢？如何治疗呢？</p>
            </div>
          </div>
          <div class="item">
            <div class="img">
              <img src="img/new2.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="babyjump">宝宝升级学跳跃，早教游戏这样玩！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">跳跃是孩子成长过程中必不可少的一个重要环节，爸爸妈妈可以和宝宝做一些游戏帮助他学跳，少走弯路。</p>
            </div>
          </div>
        
          <div class="item">
            <div class="img">
              <img src="img/new1.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="loose">四个月的宝宝如何添加辅食?</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">一般来说，四个月的宝宝饮食仍应以母乳或配方奶粉为主，6个月之后再开始给宝宝添加辅食。</p>
            </div>
          </div>
          <div class="item">
            <div class="img">
              <img src="img/new2.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="fuxie">只需这2招，“秋季腹泻”不用怕！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">秋季是小儿腹泻发生率最高的季节，因此得名为“秋季腹泻”。腹泻将小孩折腾得痛苦不堪了，很多妈妈都束手无策。其实，对付它，只需这2招！</p>
            </div>
          </div>
          <div class="item">
            <div class="img">
              <img src="img/new1.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="tharm">宝宝肠绞痛，这些治疗方法宝妈一定要知道！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">有些婴儿会出现肠绞痛，肠绞痛素质有些小婴儿会出现突然性的大声哭叫，可持续几个小时，也可阵发性发作。那么怎么看新生儿是不是心绞痛呢？如何治疗呢？</p>
            </div>
          </div>
          <div class="item">
            <div class="img">
              <img src="img/new2.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="babyjump">宝宝升级学跳跃，早教游戏这样玩！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont">跳跃是孩子成长过程中必不可少的一个重要环节，爸爸妈妈可以和宝宝做一些游戏帮助他学跳，少走弯路。</p>
            </div>
          </div>
        
         
        
          </div>
        </div>
        <!-- <div id="demo0" style="text-align: center;"></div> -->
      </div>
    </div>
  </div>
  <!-- 模版引擎导入 -->
  <!-- <script type="text/html" id="demo">
    {{# layui.each(d.listCont,function(index,item){}}
    <div class="item">
      <div class="img">
        <img src="img/new1.jpg" alt="">
      </div>
      <div class="text">
        <h4>周岁内的宝宝消化不良拉肚子怎么办?</h4>
        <p class="data">2019-03-24 16:33:26</p>
        <p class="info-cont">宝宝在周岁之前体质相对较弱，特别是薄弱肠道，一不注意就会拉肚子;那么宝宝消化不良拉肚子</p>
      </div>
    </div>
    {{# })}}
  </script> -->
<script>
  layui.config({
    base: 'js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage'],function(){
      var
      mm = layui.mm,laypage = layui.laypage;
      laypage.render({
        elem: 'demo0'
        ,count: 100 //数据总数
      });
    // 模版引擎导入
     // var html = demo.innerHTML;
     // var listCont = document.getElementById('list-cont');
     //  mm.request({
     //    url: '../json/information.json',
     //    success : function(res){
     //      console.log(res)
     //      listCont.innerHTML = mm.renderHtml(html,res)
     //    },
     //    error: function(res){
     //      console.log(res);
     //    }
     //  })   
});

</script>


</body>
</html>