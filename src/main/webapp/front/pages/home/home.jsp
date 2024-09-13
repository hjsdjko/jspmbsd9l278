<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(0px, -8px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						border-radius: 100%;
						left: 10px;
						background: none;
						width: 40px;
						right: auto;
						height: 40px;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: #249940;
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: #249940;
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"0px auto","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
			
				


            
				<!-- 系统简介 -->
				<div :style='{"padding":"20px 7% 60px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0px auto 0px","borderColor":"#98dd90","display":"flex","flexWrap":"wrap","background":"#39b457","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","height":"auto","order":"3"}'>
					<div :style='{"minHeight":"52px","margin":"0 auto 40px","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230108/be8ab030ca3b48cf846466a6aefc3df7.png) no-repeat center bottom","width":"100%","lineHeight":"72px","fontSize":"22px"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"margin":"0 0 20px","color":"#999","textAlign":"center","display":"none","width":"100%","lineHeight":"1.5","fontSize":"20px"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"width":"100%","padding":"0 0px","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"auto"}'>
						<img :style='{"padding":"0px","margin":"0 0px","borderColor":"#b4e8af","objectFit":"cover","borderRadius":"0","borderWidth":"0px","background":"none","display":"block","width":"48%","borderStyle":"outset","height":"360px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"208px 0px 0","borderColor":"#bdefb6","objectFit":"cover","borderWidth":"0px","background":"none","display":"block","width":"24%","borderStyle":"solid","height":"150px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"0px solid #bdefb6","padding":"0px","margin":"208px 0px 0","objectFit":"cover","display":"block","width":"24%","height":"150px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"border":"1px solid #bdefb6","padding":"10px","boxShadow":"inset 0px 0px 56px 0px #c5f1c0","margin":"0 0 10px 0","color":"rgb(102, 102, 102)","right":"7%","textIndent":"2em","overflow":"hidden","top":"132px","background":"#fff","width":"calc(43% - 0px)","lineHeight":"2","fontSize":"14px","position":"absolute","height":"188px"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"0px auto 0px","borderColor":"#98dd90","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230108/caf263fc0a304a7a907e11691deb7ae2.jpg) repeat-y","borderWidth":"0 0 0px","display":"flex","width":"100%","borderStyle":"dotted","order":"8"}'>
					<div v-if="false && 1 == 1" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"52px","padding":"0px 0","margin":"30px auto 50px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230108/7c8f15334365458b8ec1c7beedb0d8f4.png) no-repeat center bottom","flexDirection":"row-reverse","display":"flex","width":"100%","position":"relative","justifyContent":"center"}'>
						<span :style='{"fontSize":"14px","lineHeight":"24px","position":"absolute","color":"#249940","bottom":"-30px","display":"inline-block"}'>HOME NEWS</span>
						<span :style='{"margin":"0 4px 0 0","fontSize":"20px","lineHeight":"24px","color":"#249940","display":"inline-block"}'>公告信息</span>
					</div>
					
					<div v-if="false && 1 == 2" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"10px 7%","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-10">
						<div v-if="newsList.length>0" @click="jump('../news/detail.jsp?id='+newsList[0].id)" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","background":"none","height":"auto"}' class="new10-list-item animation-box">
							<img :style='{"width":"100%","objectFit":"cover","display":"block","height":"300px"}' :src="newsList[0].picture?baseurl+newsList[0].picture:''" alt="">
							<div :style='{"padding":"4px 20px","whiteSpace":"nowrap","overflow":"hidden","color":"#249940","background":"none","width":"calc(100% - 80px)","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"0 10px","overflow":"hidden","color":"#666","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{newsList[0].introduction}}</div>
							<div :style='{"fontSize":"12px","lineHeight":"24px","position":"absolute","right":"10px","color":"#fc932c","top":"306px"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
							<div :style='{"padding":"0 10px","margin":"0 10px 10px","color":"#999","background":"#fff","display":"none","fontSize":"12px","lineHeight":"24px"}' class="new9-list-item-identification">新闻动态</div>
						</div>
						<div v-if="newsList.length>1" :style='{"margin":"0 0px","background":"none","flexDirection":"column","display":"block","width":"48%","position":"relative","justifyContent":"space-between","height":"auto"}'>
							<div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"cursor":"pointer","width":"100%","position":"relative","background":"none","height":"auto"}' class="new10-list-item animation-box">
								<div :style='{"padding":"4px 20px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","background":"url(http://codegen.caihongy.cn/20230108/abf1800477a8444c8c27e9fe71949723.png) no-repeat 0px center","width":"calc(100% - 80px)","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"500"}' class="new9-list-item-title">{{ item.title }}</div>
								<div :style='{"padding":"0 0px","margin":"0 auto","overflow":"hidden","color":"#666","background":"none","display":"none","width":"calc(100% - 0px)","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","position":"absolute","right":"20px","color":"#fc932c","top":"4px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
								<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
							</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"20px auto 40px","borderColor":"#b5e8af","textAlign":"center","background":"#fff","borderWidth":"1px 4px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"30px 7% 80px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0px auto 0px","borderColor":"#98dd90","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"#39b457","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","height":"423px","order":"7"}'>
					<div :style='{"padding":"0 20px 24px","margin":"0 auto 10px","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230109/af5e1b2d47df46f18245086c74a2d414.png) no-repeat 8% top,url(http://codegen.caihongy.cn/20230108/be8ab030ca3b48cf846466a6aefc3df7.png) no-repeat center bottom","width":"auto","lineHeight":"80px","fontSize":"20px","minWidth":"180px","height":"68px"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"margin":"0 0 20px","color":"#fff","textAlign":"center","display":"block","width":"100%","lineHeight":"1","fontSize":"16px"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"padding":"0 0px","top":"0px","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230109/90e1369585fc46dfbbe31bba91b0c5c8.png) no-repeat left bottom","display":"flex","width":"800px","position":"absolute","right":"7%","height":"100%"}'>
						<img :style='{"padding":"30px","boxShadow":"0px 0px 0px #eee","margin":"0 0px","borderColor":"#249940","objectFit":"cover","display":"block","right":"0","borderRadius":"100%","top":"40px","borderWidth":"8px 0px 0px 2px","background":"#fff","width":"420px","position":"absolute","borderStyle":"outset","height":"420px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"20px","boxShadow":"inset 0px 0px 56px 0px #c5f1c0","margin":"0 0 0 0px","borderColor":"#b4e8af","color":"rgb(102, 102, 102)","textIndent":"2em","overflow":"hidden","top":"130px","left":"7%","background":"#fff","borderWidth":"0px","width":"32%","lineHeight":"24px","fontSize":"14px","position":"absolute","borderStyle":"inset","height":"236px"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"30px","left":"calc(0px)","background":"url() repeat-x center center","display":"none","width":"100%","position":"absolute","height":"72px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"padding":"0 7%","margin":"0px auto","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230108/caf263fc0a304a7a907e11691deb7ae2.jpg) repeat-y","borderWidth":"0 0 0px","display":"block","width":"100%","borderStyle":"dotted","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"52px","padding":"0px 0","margin":"30px auto 50px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230108/7c8f15334365458b8ec1c7beedb0d8f4.png) no-repeat center bottom","flexDirection":"row-reverse","display":"flex","width":"100%","position":"relative","justifyContent":"center"}'>
					  <span :style='{"padding":"0","color":"#249940","background":"none","bottom":"-30px","fontSize":"16px","lineHeight":"24px","position":"absolute"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 4px 0 20px","margin":"0 0px 0 0","fontSize":"20px","lineHeight":"52px","color":"#249940","background":"none"}'>竞赛信息展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="list list-5">
						<div :style='{"width":"100%","padding":"80px 10px","margin":"0","background":"none"}' id="lists-five-swiperjingsaixinxi" class="swiper-container lists-five-swiper">
							<div class="swiper-wrapper">
								<div :style='{"cursor":"pointer","borderRadius":"8px","background":"#fff","width":"320px","fontSize":"0","position":"relative","height":"240px"}' class="swiper-slide" v-for="(item,index) in jingsaixinxiList" :key="index" @click="jump('../jingsaixinxi/detail.jsp?id='+item.id)">
									<img :style='{"border":"1px solid #eee","width":"320px","borderRadius":"4px","objectFit":"contain","background":"#fff","height":"240px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
								</div>
							</div>
														<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
													</div>
					</div>
						
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"30px auto 40px","borderColor":"#b5e8af","textAlign":"center","background":"#fff","borderWidth":"1px 4px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../jingsaixinxi/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<div class="lists" :style='{"padding":"0 7%","margin":"0px auto","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230108/caf263fc0a304a7a907e11691deb7ae2.jpg) repeat-y","borderWidth":"0 0 0px","display":"block","width":"100%","borderStyle":"dotted","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"52px","padding":"0px 0","margin":"30px auto 50px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230108/7c8f15334365458b8ec1c7beedb0d8f4.png) no-repeat center bottom","flexDirection":"row-reverse","display":"flex","width":"100%","position":"relative","justifyContent":"center"}'>
					  <span :style='{"padding":"0","color":"#249940","background":"none","bottom":"-30px","fontSize":"16px","lineHeight":"24px","position":"absolute"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 4px 0 20px","margin":"0 0px 0 0","fontSize":"20px","lineHeight":"52px","color":"#249940","background":"none"}'>历年真题展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="list list-5">
						<div :style='{"width":"100%","padding":"80px 10px","margin":"0","background":"none"}' id="lists-five-swiperlinianzhenti" class="swiper-container lists-five-swiper">
							<div class="swiper-wrapper">
								<div :style='{"cursor":"pointer","borderRadius":"8px","background":"#fff","width":"320px","fontSize":"0","position":"relative","height":"240px"}' class="swiper-slide" v-for="(item,index) in linianzhentiList" :key="index" @click="jump('../linianzhenti/detail.jsp?id='+item.id)">
									<img :style='{"border":"1px solid #eee","width":"320px","borderRadius":"4px","objectFit":"contain","background":"#fff","height":"240px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
								</div>
							</div>
														<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
													</div>
					</div>
						
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"30px auto 40px","borderColor":"#b5e8af","textAlign":"center","background":"#fff","borderWidth":"1px 4px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../linianzhenti/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<div class="lists" :style='{"padding":"0 7%","margin":"0px auto","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230108/caf263fc0a304a7a907e11691deb7ae2.jpg) repeat-y","borderWidth":"0 0 0px","display":"block","width":"100%","borderStyle":"dotted","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"52px","padding":"0px 0","margin":"30px auto 50px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230108/7c8f15334365458b8ec1c7beedb0d8f4.png) no-repeat center bottom","flexDirection":"row-reverse","display":"flex","width":"100%","position":"relative","justifyContent":"center"}'>
					  <span :style='{"padding":"0","color":"#249940","background":"none","bottom":"-30px","fontSize":"16px","lineHeight":"24px","position":"absolute"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 4px 0 20px","margin":"0 0px 0 0","fontSize":"20px","lineHeight":"52px","color":"#249940","background":"none"}'>学习小组展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="list list-5">
						<div :style='{"width":"100%","padding":"80px 10px","margin":"0","background":"none"}' id="lists-five-swiperxuexixiaozu" class="swiper-container lists-five-swiper">
							<div class="swiper-wrapper">
								<div :style='{"cursor":"pointer","borderRadius":"8px","background":"#fff","width":"320px","fontSize":"0","position":"relative","height":"240px"}' class="swiper-slide" v-for="(item,index) in xuexixiaozuList" :key="index" @click="jump('../xuexixiaozu/detail.jsp?id='+item.id)">
									<img :style='{"border":"1px solid #eee","width":"320px","borderRadius":"4px","objectFit":"contain","background":"#fff","height":"240px"}' :src="item.fengmian?baseurl+item.fengmian.split(',')[0]:''" alt="" />
								</div>
							</div>
														<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
													</div>
					</div>
						
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"30px auto 40px","borderColor":"#b5e8af","textAlign":"center","background":"#fff","borderWidth":"1px 4px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../xuexixiaozu/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<div class="lists" :style='{"padding":"0 7%","margin":"0px auto","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230108/caf263fc0a304a7a907e11691deb7ae2.jpg) repeat-y","borderWidth":"0 0 0px","display":"block","width":"100%","borderStyle":"dotted","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"52px","padding":"0px 0","margin":"30px auto 50px","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230108/7c8f15334365458b8ec1c7beedb0d8f4.png) no-repeat center bottom","flexDirection":"row-reverse","display":"flex","width":"100%","position":"relative","justifyContent":"center"}'>
					  <span :style='{"padding":"0","color":"#249940","background":"none","bottom":"-30px","fontSize":"16px","lineHeight":"24px","position":"absolute"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 4px 0 20px","margin":"0 0px 0 0","fontSize":"20px","lineHeight":"52px","color":"#249940","background":"none"}'>竞赛风采展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="list list-5">
						<div :style='{"width":"100%","padding":"80px 10px","margin":"0","background":"none"}' id="lists-five-swiperjingsaifengcai" class="swiper-container lists-five-swiper">
							<div class="swiper-wrapper">
								<div :style='{"cursor":"pointer","borderRadius":"8px","background":"#fff","width":"320px","fontSize":"0","position":"relative","height":"240px"}' class="swiper-slide" v-for="(item,index) in jingsaifengcaiList" :key="index" @click="jump('../jingsaifengcai/detail.jsp?id='+item.id)">
									<img :style='{"border":"1px solid #eee","width":"320px","borderRadius":"4px","objectFit":"contain","background":"#fff","height":"240px"}' :src="item.jingsaizuopin?baseurl+item.jingsaizuopin.split(',')[0]:''" alt="" />
								</div>
							</div>
														<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
													</div>
					</div>
						
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"30px auto 40px","borderColor":"#b5e8af","textAlign":"center","background":"#fff","borderWidth":"1px 4px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../jingsaifengcai/list.jsp')">
						<span :style='{"color":"#333","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#333","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {





                    jingsaixinxiList: [],
                    linianzhentiList: [],
                    xuexixiaozuList: [],
                    jingsaifengcaiList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '480px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 11,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 10;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                


				

                http.request(`jingsaixinxi/list`, 'get', {
					page: 1,
					limit: 12,
				}, function(res) {
					vue.jingsaixinxiList = res.data.list
					
					let flag = 5;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsjingsaixinxi', options)
							new Swiper ('#listslinianzhenti', options)
							new Swiper ('#listsxuexixiaozu', options)
							new Swiper ('#listsjingsaifengcai', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperjingsaixinxi', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                http.request(`linianzhenti/list`, 'get', {
					page: 1,
					limit: 12,
				}, function(res) {
					vue.linianzhentiList = res.data.list
					
					let flag = 5;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsjingsaixinxi', options)
							new Swiper ('#listslinianzhenti', options)
							new Swiper ('#listsxuexixiaozu', options)
							new Swiper ('#listsjingsaifengcai', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperlinianzhenti', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                http.request(`xuexixiaozu/list`, 'get', {
					page: 1,
					limit: 12,
				}, function(res) {
					vue.xuexixiaozuList = res.data.list
					
					let flag = 5;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsjingsaixinxi', options)
							new Swiper ('#listslinianzhenti', options)
							new Swiper ('#listsxuexixiaozu', options)
							new Swiper ('#listsjingsaifengcai', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperxuexixiaozu', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                http.request(`jingsaifengcai/list`, 'get', {
					sort : 'huojiangmingci',
					order : 'asc',
					page: 1,
					limit: 12,
				}, function(res) {
					vue.jingsaifengcaiList = res.data.list
					
					let flag = 5;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsjingsaixinxi', options)
							new Swiper ('#listslinianzhenti', options)
							new Swiper ('#listsxuexixiaozu', options)
							new Swiper ('#listsjingsaifengcai', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperjingsaifengcai', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
