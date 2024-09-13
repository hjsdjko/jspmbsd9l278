
var projectName = '青少年信息学奥林匹克竞赛交流平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '考试记录',
	url: '../examrecord/list.jsp'
}, 
{
	name: '错题本',
	url: '../examrecord/wrong.jsp'
},
{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '竞赛信息',
	url: './pages/jingsaixinxi/list.jsp'
}, 
{
	name: '历年真题',
	url: './pages/linianzhenti/list.jsp'
}, 
{
	name: '学习小组',
	url: './pages/xuexixiaozu/list.jsp'
}, 
{
	name: '竞赛风采',
	url: './pages/jingsaifengcai/list.jsp'
}, 

{
	name: '赛友交流',
	url: './pages/forum/list.jsp'
}, 
{
	name: '模拟考试',
	url: './pages/exampaper/list.jsp'
}, 
{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmbsd9l278/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-cardboard","buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"学校","menuJump":"列表","tableName":"xuexiao"}],"menu":"学校管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"专业","menuJump":"列表","tableName":"zhuanye"}],"menu":"专业管理"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论","报名"],"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"竞赛信息","menuJump":"列表","tableName":"jingsaixinxi"}],"menu":"竞赛信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-album","buttons":["新增","查看","修改","删除"],"menu":"竞赛等级","menuJump":"列表","tableName":"jingsaidengji"}],"menu":"竞赛等级管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","发布"],"appFrontIcon":"cuIcon-brand","buttons":["查看","修改","删除","审核","发布"],"menu":"竞赛报名","menuJump":"列表","tableName":"jingsaibaoming"}],"menu":"竞赛报名管理"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"历年真题","menuJump":"列表","tableName":"linianzhenti"}],"menu":"历年真题管理"},{"child":[{"allButtons":["新增","查看","修改","删除","加入"],"appFrontIcon":"cuIcon-explore","buttons":["查看","修改","删除"],"menu":"学习小组","menuJump":"列表","tableName":"xuexixiaozu"}],"menu":"学习小组管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","修改","删除"],"menu":"加入小组","menuJump":"列表","tableName":"jiaruxiaozu"}],"menu":"加入小组管理"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改","删除","查看评论"],"menu":"竞赛风采","menuJump":"列表","tableName":"jingsaifengcai"}],"menu":"竞赛风采管理"},{"child":[{"allButtons":["新增","查看","修改","删除","组卷","调查统计"],"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除","组卷","调查统计"],"menu":"模拟考试管理","tableName":"exampaper"}],"menu":"模拟考试管理"},{"child":[{"allButtons":["新增","查看","修改","删除","导出","打印"],"appFrontIcon":"cuIcon-calendar","buttons":["新增","查看","修改","删除","导出","打印"],"menu":"题目管理","tableName":"examquestion"}],"menu":"题目管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-group","buttons":["新增","查看","修改","删除"],"menu":"赛友交流","tableName":"forum"}],"menu":"赛友交流"},{"child":[{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-paint","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-time","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"}],"menu":"系统管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-baby","buttons":["查看","删除"],"menu":"模拟考试列表","tableName":"exampaperlist"},{"allButtons":["新增","查看","修改","删除","导出","打印","批卷"],"appFrontIcon":"cuIcon-read","buttons":["查看","删除","导出","打印","批卷"],"menu":"考试记录","tableName":"examrecord"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-rank","buttons":["查看","删除"],"menu":"错题本","tableName":"examfailrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","查看评论","报名"],"appFrontIcon":"cuIcon-circle","buttons":["查看","报名"],"menu":"竞赛信息列表","menuJump":"列表","tableName":"jingsaixinxi"}],"menu":"竞赛信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"历年真题列表","menuJump":"列表","tableName":"linianzhenti"}],"menu":"历年真题模块"},{"child":[{"allButtons":["新增","查看","修改","删除","加入"],"appFrontIcon":"cuIcon-full","buttons":["查看","加入"],"menu":"学习小组列表","menuJump":"列表","tableName":"xuexixiaozu"}],"menu":"学习小组模块"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"竞赛风采列表","menuJump":"列表","tableName":"jingsaifengcai"}],"menu":"竞赛风采模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","发布"],"appFrontIcon":"cuIcon-brand","buttons":["查看","删除","发布"],"menu":"竞赛报名","menuJump":"列表","tableName":"jingsaibaoming"}],"menu":"竞赛报名管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","删除"],"menu":"加入小组","menuJump":"列表","tableName":"jiaruxiaozu"}],"menu":"加入小组管理"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"竞赛风采","menuJump":"列表","tableName":"jingsaifengcai"}],"menu":"竞赛风采管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","查看评论","报名"],"appFrontIcon":"cuIcon-circle","buttons":["查看","报名"],"menu":"竞赛信息列表","menuJump":"列表","tableName":"jingsaixinxi"}],"menu":"竞赛信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"历年真题列表","menuJump":"列表","tableName":"linianzhenti"}],"menu":"历年真题模块"},{"child":[{"allButtons":["新增","查看","修改","删除","加入"],"appFrontIcon":"cuIcon-full","buttons":["查看","加入"],"menu":"学习小组列表","menuJump":"列表","tableName":"xuexixiaozu"}],"menu":"学习小组模块"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"竞赛风采列表","menuJump":"列表","tableName":"jingsaifengcai"}],"menu":"竞赛风采模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","发布"],"appFrontIcon":"cuIcon-brand","buttons":["查看","删除"],"menu":"竞赛报名","menuJump":"列表","tableName":"jingsaibaoming"}],"menu":"竞赛报名管理"},{"child":[{"allButtons":["新增","查看","修改","删除","加入"],"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"学习小组","menuJump":"列表","tableName":"xuexixiaozu"}],"menu":"学习小组管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","删除"],"menu":"加入小组","menuJump":"列表","tableName":"jiaruxiaozu"}],"menu":"加入小组管理"},{"child":[{"allButtons":["新增","查看","修改","删除","组卷","调查统计"],"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除","组卷","调查统计"],"menu":"模拟考试管理","tableName":"exampaper"}],"menu":"模拟考试管理"},{"child":[{"allButtons":["新增","查看","修改","删除","导出","打印"],"appFrontIcon":"cuIcon-calendar","buttons":["新增","查看","修改","删除","导出","打印"],"menu":"题目管理","tableName":"examquestion"}],"menu":"题目管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"在线客服","tableName":"chat"}],"menu":"系统管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-baby","buttons":["查看","删除"],"menu":"模拟考试列表","tableName":"exampaperlist"},{"allButtons":["新增","查看","修改","删除","导出","打印","批卷"],"appFrontIcon":"cuIcon-read","buttons":["查看","删除","导出","打印","批卷"],"menu":"考试记录","tableName":"examrecord"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-rank","buttons":["查看","删除"],"menu":"错题本","tableName":"examfailrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","查看评论","报名"],"appFrontIcon":"cuIcon-circle","buttons":["查看","报名"],"menu":"竞赛信息列表","menuJump":"列表","tableName":"jingsaixinxi"}],"menu":"竞赛信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"历年真题列表","menuJump":"列表","tableName":"linianzhenti"}],"menu":"历年真题模块"},{"child":[{"allButtons":["新增","查看","修改","删除","加入"],"appFrontIcon":"cuIcon-full","buttons":["查看","加入"],"menu":"学习小组列表","menuJump":"列表","tableName":"xuexixiaozu"}],"menu":"学习小组模块"},{"child":[{"allButtons":["新增","查看","修改","删除","查看评论"],"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"竞赛风采列表","menuJump":"列表","tableName":"jingsaifengcai"}],"menu":"竞赛风采模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"教师","tableName":"jiaoshi"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
