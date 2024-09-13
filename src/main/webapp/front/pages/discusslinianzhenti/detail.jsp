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
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #5bb450;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #5bb450;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 15px;
						margin: 6px 10px 0 0;
						color: #fff;
						font-size: 14px;
						border-color: #83c1e6;
						line-height: 40px;
						background: #6dc363;
						width: auto;
						border-width: 0;
						border-style: dotted;
						text-align: center;
						min-width: 100px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 15px;
						margin: 6px 10px 0 0;
						color: #fff;
						background: #45a239;
						width: auto;
						font-size: 14px;
						border-color: #ddf2fe;
						line-height: 40px;
						text-align: center;
						min-width: 100px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 15px;
						margin: 6px 10px 0 0;
						color: #fff;
						font-size: 14px;
						border-color: #ddf2fe;
						line-height: 40px;
						background: #45a239;
						width: auto;
						border-width: 0;
						border-style: dotted;
						text-align: center;
						min-width: 100px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"width":"100%","padding":"10px 7% 20px","margin":"0px auto 0","position":"relative","background":"none"}'>
				<div :style='{"padding":"10px 0 0px 0px","boxShadow":"0px 0px 4px #eee","borderColor":"#ddd","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"rgba(255,255,255,1)","borderWidth":"1px","display":"flex","position":"relative","borderStyle":"solid","justifyContent":"space-between"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"1px solid #bdefb6","boxShadow":"inset 0px 0px 56px 0px #c5f1c0","padding":"20px","margin":"10px auto 0","borderRadius":"20px","background":"none","width":"100%","order":"2","height":"400px"}'>
						<div carousel-item>
							<div :style='{"width":"100%","borderRadius":"0","background":"none","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"width":"100%","objectFit":"contain","borderRadius":"0","background":"none","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>




					<div :style='{"minHeight":"500px","width":"48%","padding":"10px 10px 10px 20px","margin":"0","background":"none","order":"1"}'>
						<div :style='{"padding":"10px 20px","boxShadow":"inset 0px 0px 0px 0px #93c8e7","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderRadius":"20px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"4px","display":"flex","borderStyle":"solid","justifyContent":"space-between"}'>
							<div :style='{"color":"#333","fontSize":"16px"}'>{{title}}</div>
						</div>



						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#c6ecc6","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"solid","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>关联表id：</div>
							<div  :style='{"minHeight":"40px","padding":"2px 10px 0","color":"#555","background":"linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"100%","fontSize":"14px","lineHeight":"24px"}' class="desc">
								{{detail.refid}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#c6ecc6","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"solid","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>用户名：</div>
							<div  :style='{"minHeight":"40px","padding":"2px 10px 0","color":"#555","background":"linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"100%","fontSize":"14px","lineHeight":"24px"}' class="desc">
								{{detail.nickname}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#c6ecc6","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"solid","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>评论内容：</div>
							<div  :style='{"minHeight":"40px","padding":"2px 10px 0","color":"#555","background":"linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"100%","fontSize":"14px","lineHeight":"24px"}' class="desc">
								{{detail.content}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#c6ecc6","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"solid","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#666","textAlign":"right","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>回复内容：</div>
							<div  :style='{"minHeight":"40px","padding":"2px 10px 0","color":"#555","background":"linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(230,245,229,1) 100%),#e6f5e5","width":"100%","fontSize":"14px","lineHeight":"24px"}' class="desc">
								{{detail.reply}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 0","flexWrap":"wrap","background":"none","display":"flex"}'>

						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"border":"0","boxShadow":"0 0px 0px rgb(0 0 0 / 30%)","padding":"10px","margin":"20px 0 0","borderColor":"#c7eec2","clear":"both","overflow":"hidden","borderRadius":"2px","background":"rgba(255,255,255,1)","borderWidth":"4px","width":"100%","borderStyle":"solid","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"0 10px","fontSize":"0","background":"none","height":"40px"}'>




						<li>评论</li>







					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">





						<div class="layui-tab-item" layui-show>
							<form class="layui-form message-form" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","margin":"0 0 20px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"dotted"}'>
								<div :style='{"width":"100%","display":"flex","height":"auto"}' class="layui-form-item layui-form-text">
									<label :style='{"width":"80px","padding":"0 10px 0 0","lineHeight":"40px","fontSize":"14px","color":"#666","textAlign":"right"}' class="layui-form-label">评论</label>
									<textarea :style='{"border":"0","padding":"15px","boxShadow":"inset 0px 0px 56px 0px #c5f1c0","borderColor":"#bdefb6","color":"#333","minHeight":"150px","outline":"none","borderRadius":"0px","borderWidth":"1px","width":"1058px","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' name="content" required lay-verify="required" placeholder="请输入内容" class="layui-textarea"></textarea>
								</div>
								<div :style='{"width":"100%","padding":"0 0 0 80px","margin":"30px 0 0","textAlign":"center","height":"auto"}' class="layui-form-item">
									<button :style='{"cursor":"pointer","padding":"0","margin":"0 20px 0 0","borderColor":"#59B450","color":"#333","outline":"none","borderRadius":"0px","background":"#c6ecc6","borderWidth":"4px 0","width":"110px","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"48px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">立即提交</button>
									<button :style='{"cursor":"pointer","padding":"0","margin":"0 20px 0 0","borderColor":"#999","color":"#333","outline":"none","borderRadius":"0px","background":"#ddd","borderWidth":"4px 0","width":"110px","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</form>
							
							<div class="message-list" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"groove"}'>
								<div :style='{"padding":"10px","boxShadow":"inset 0px 0px 56px 0px #c5f1c0","margin":"0 0 20px","borderColor":"#c7eec2","alignItems":"center","borderWidth":"1px","width":"100%","borderStyle":"solid","height":"auto"}' class="message-item" v-for="(item,index) in dataList" v-bind:key="index">
									<div :style='{"width":"100%","alignItems":"center","display":"flex","height":"auto"}' class="username-container">
										<img :style='{"width":"40px","margin":"0 10px 0 0","borderRadius":"100%","objectFit":"cover","height":"40px"}' class="avator" :src="baseurl + item.avatarurl">
										<div :style='{"color":"#333","fontSize":"16px"}' class="username">{{item.nickname}}</div>
									</div>
									<div :style='{"padding":"8px","boxShadow":"rgb(75 223 201 / 30%) 0px 0px 0px","margin":"10px 0px 0px","borderColor":"#c7eec2","color":"#333","borderRadius":"0px","background":"none","borderWidth":"0px","lineHeight":"30px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}'>
										{{item.content}}
									</div>
									<div :style='{"padding":"8px","boxShadow":"rgb(75 223 201 / 30%) 0px 0px 0px","margin":"10px 0px 0px","borderColor":"#c7eec2","color":"#333","borderRadius":"0px","background":"none","borderWidth":"0px","lineHeight":"30px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}' v-if="item.reply" class="content">
										回复:{{item.reply}}
									</div>
								</div>
							</div>
							<div class="pager" id="pager"></div>
						</div>







					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
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
					// 轮播图
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'discusslinianzhenti',
					baseurl: '',
					// 评论列表
					dataList: [],
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`discusslinianzhenti`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},




					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList2 = swiperList;

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
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '48%',
							height: '400px',
							anim: 'fade',
							autoplay: 'true',
							interval: '5000',
							arrow: 'none',
							indicator: 'inside'
						});
					})


				});





				// 获取评论
				http.request(`discuss${vue.detailTable}/list`, 'get', {
					page: 1,
					limit: limit,
					refid: vue.detail.id,
					//userid: localStorage.getItem('userid')
				}, function(res) {
					vue.dataList = res.data.list
					// 分页
					laypage.render({
						elem: 'pager',
						count: res.data.total,
						limit: limit,
						groups: 5,
						layout: ["count","prev","page","next","limit","refresh","skip"],
						prev: '上一页',
						next: '下一页',
						jump: function(obj, first) {
							//首次不执行
							if (!first) {
								http.request(`discuss${vue.detailTable}/list`, 'get', {
									page: obj.curr,
									limit: obj.limit,
									userid: localStorage.getItem('userid')
								}, function(res) {
									vue.dataList = res.data.list
								})
							}
						}
					});
				})
				// 提交评论
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid')
					data.nickname = localStorage.getItem('adminName')
					data.refid = vue.detail.id
                    data.avatarurl = localStorage.getItem('headportrait')?localStorage.getItem('headportrait'):'';
                    var sensitiveWords = "";
                    var sensitiveWordsArr = [];
                    if(sensitiveWords) {
                        sensitiveWordsArr = sensitiveWords.split(",");
                    }
                    for(var i=0; i<sensitiveWordsArr.length; i++){
                        //全局替换
                        var reg = new RegExp(sensitiveWordsArr[i],"g");
                        //判断内容中是否包括敏感词      
                        if (data.content.indexOf(sensitiveWordsArr[i]) > -1) {
                            // 将敏感词替换为 **
                            data.content = data.content.replace(reg,"**");
                        }
                    }
					http.requestJson(`discuss${vue.detailTable}/save`, 'post', data, function(res) {
						layer.msg('评论成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
						return false
					});
					return false
				});
			});
		</script>
	</body>
</html>
