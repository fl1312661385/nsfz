<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>宝宝腹泻</title>
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
              <img src="img/new2.jpg" alt="">
            </div>
            <div class="text">
              <h4><a href="fuxie">只需这2招，“秋季腹泻”不用怕！</a></h4>
              <p class="data">2019-03-24 16:33:26</p>
              <p class="info-cont" style="width:550px;">
         
           秋季是小儿腹泻发生率最高的季节，大多数患儿是感染了轮状病毒而导致腹泻。由于此病大多发生在秋季，因此得名为“秋季腹泻”。它起病急，初期通常伴有感冒的症状，随后就会出现呕吐、腹泻的症状，这就会把小孩折腾得痛苦不堪了。</p>
            <p class="info-cont" style="width:550px;">
         
          秋季腹泻的主要临床特征是：先吐后泻，并伴有发热，大便呈稀水样或蛋花样，病程有自限性，尚无特效药治疗。</p>
            <h4> 常规治疗</h4>

			<p class="info-cont">饮食注意供给足够的热量，母乳喂养的患儿暂停辅食，继续母乳喂养。人工喂养的患儿喂养适量乳制品。严重呕吐的患儿禁食4-6个小时，缓解后继续喂养。</p>
           <p class="info-cont">宝宝秋季腹泻时，首先采用的补液方法是口服补液盐，把1袋口服补液盐溶于500毫升温开水中，口服。但是因为有些腹泻的宝宝不愿意喝水，精神也很差，</p>
           <p class="info-cont">有明显的脱水症状，这种情况下就需要静脉输液。</p>
            <h4> 药物治疗</h4>

			<p class="info-cont">如果宝宝症状比较轻微，没有严重的脱水表现，家长可以在家里给宝宝补充一些口服补液盐。但如果宝宝秋季腹泻老是不好，就要到医院检查，化验</p>
           <p class="info-cont">一下是否合并细菌感染，或者有其他方面的疾病。 当宝宝腹泻严重时，妈妈们一定要及时带宝宝到医院检查医治。平时也可以适当的给宝宝喝一些有</p>
           <p class="info-cont">助于肠道健康的益生菌饮料益生菌，不仅可以促进肠道对食物消化和营养吸收外，还是可以增强宝宝免疫力。</p>
            
            
            
            
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