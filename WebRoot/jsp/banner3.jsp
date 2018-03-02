
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>banner3</title>
    <base href="<%=basePath%>">
    <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/banner2.css' />
    <script src="js/jquery.js" ></script>
    <script src="js/banner2.js" ></script>
</head>
<body>
<!--第一部分   导航区   开始 -->
    <div class="navigation-area">
 		<div class="common">
 			<div class="categories left">全部商品分类<span class="imooc-icon"  style="color:white;font-size:18px;font-weight:bold;">&#xea52;</span></div>
 			<ul class="navigation right">
 			   <li><a href="index.jsp">首 页</a></li>
 			   <li><a href="jsp/a0.jsp">数码城</a></li>
 			   <li><a href="jsp/a1.jsp">天黑黑</a></li>
			   <li><a href="jsp/a2.jsp">团 购</a></li>
			   <li><a href="jsp/a3.jsp">发 现</a></li>
			   <li><a href="jsp/a4.jsp">二手特卖</a></li>
			   <li><a href="jsp/a5.jsp">名品会</a></li>
 			</ul>
 		</div>
 	</div>
<!--第一部分   导航区   结束 -->



<!--第二部分 商品详细列表 -->

<div class="secondPart common">

<!--第二部分左侧 商品详细列表 -->

	<div class="second-list left">
		<ul>
			<li><a href="jsp/li0.jsp"><s class="s-icon" style="background-position: -0px -280px;"></s> 食品、酒类、冲饮<span>&#xea51;</span></a>
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">进口食品<span>&#xea51;</span></span><span><a href="">牛奶</a></span>|<span><a href="">饼干/蛋糕</a></span>|<span><a href="">糖果/巧克力</a></span>|<span><a href="">冲调饮品</a></span>|<span><a href="">休闲零食</a></span></div>
            	         <div><span class="lihover-left-head">休闲食品<span>&#xea51;</span></span><span><a href="">休闲零食</a></span>|<span><a href="">坚果炒货</a></span>|<span><a href="">肉干肉脯</a></span>|<span><a href="">蜜饯果干</a></span>|<span><a href="">无糖食品</a></span></div>
            	         <div><span class="lihover-left-head">中外名酒<span>&#xea51;</span></span><span><a href="">葡萄酒</a></span>|<span><a href="">白酒</a></span>|<span><a href="">啤酒</a></span>|<span><a href="">洋酒</a></span>|<span><a href="">黄酒/养生酒</a></span></div>
            	         <div><span class="lihover-left-head">国内茗茶<span>&#xea51;</span></span><span><a href="">铁观音</a></span>|<span><a href="">普洱</a></span>|<span><a href="">龙井</a></span>|<span><a href="">红茶</a></span>|<span><a href="">其他茶类</a></span></div>
            	         <div><span class="lihover-left-head">饮料冲调<span>&#xea51;</span></span><span><a href="">牛奶乳品</a></span>|<span><a href="">饮料</a></span>|<span><a href="">咖啡/奶茶</a></span>|<span><a href="">蜂蜜/柚子茶</a></span>|<span><a href="">冲饮谷物</a></span></div>
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li1.jsp"><s class="s-icon" style="background-position: -0px -123px;"></s> 手机、数码<span>&#xea51;</span></a>
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">手机通讯<span>&#xea51;</span></span><span><a href="">手机</a></span>|<span><a href="">对讲机</a></span>|<span><a href="">以旧换新</a></span>|<span><a href="">手机维修</a></span>|<span><a href=""></a></span></div>
            	         <div><span class="lihover-left-head">手机配件<span>&#xea51;</span></span><span><a href="">手机电池</a></span>|<span><a href="">移动电源</a></span>|<span><a href="">手机耳机</a></span>|<span><a href="">充电器/数据线</a></span>|<span><a href="">手机支架</a></span></div>
            	         <div><span class="lihover-left-head">摄影摄像<span>&#xea51;</span></span><span><a href="">单反相机</a></span>|<span><a href="">运动相机</a></span>|<span><a href="">户外器材</a></span>|<span><a href="">影棚器材</a></span>|<span><a href="">冲印服务</a></span></div>
            	         <div><span class="lihover-left-head">数码配件<span>&#xea51;</span></span><span><a href="">存储卡/读卡器</a></span>|<span><a href="">闪光灯/手柄</a></span>|<span><a href="">三脚架/云台</a></span>|<span><a href="">机身附件</a></span>|<span><a href="">充电器</a></span></div>
            	         <div><span class="lihover-left-head">影音娱乐<span>&#xea51;</span></span><span><a href="">耳机/耳麦</a></span>|<span><a href="">音箱/音响</a></span>|<span><a href="">收音机</a></span>|<span><a href="">麦克风</a></span>|<span><a href="">MP3/MP4</a></span></div>
            	         <div><span class="lihover-left-head">智能设备<span>&#xea51;</span></span><span><a href="">智能手环</a></span>|<span><a href="">智能手表</a></span>|<span><a href="">智能眼镜</a></span>|<span><a href="">智能机器人</a></span>|<span><a href="">其他智能设备</a></span></div>
            	    
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li2.jsp"><s class="s-icon" style="background-position: -0px -82px;"></s> 鞋靴、箱包、奢侈品<span>&#xea51;</span></a>
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">时尚女鞋<span>&#xea51;</span></span><span><a href="">休闲鞋</a></span>|<span><a href="">帆布鞋</a></span>|<span><a href="">高跟鞋</a></span>|<span><a href="">马丁靴</a></span>|<span><a href="">雪地靴</a></span></div>
            	         <div><span class="lihover-left-head">流行男鞋<span>&#xea51;</span></span><span><a href="">休闲鞋</a></span>|<span><a href="">帆布鞋</a></span>|<span><a href="">正装鞋</a></span>|<span><a href="">拖鞋/人字拖</a></span>|<span><a href="">凉鞋/沙滩鞋</a></span></div>
            	         <div><span class="lihover-left-head">潮流女包<span>&#xea51;</span></span><span><a href="">单肩包</a></span>|<span><a href="">手提包</a></span>|<span><a href="">斜挎包</a></span>|<span><a href="">双肩包</a></span>|<span><a href="">卡包/零钱包</a></span></div>
            	         <div><span class="lihover-left-head">精品男包<span>&#xea51;</span></span><span><a href="">商务公文包</a></span>|<span><a href="">单肩/斜挎包</a></span>|<span><a href="">男士手包</a></span>|<span><a href="">双肩包</a></span>|<span><a href="">男士钱包</a></span></div>
            	         <div><span class="lihover-left-head">功能箱包<span>&#xea51;</span></span><span><a href="">拉杆箱</a></span>|<span><a href="">拉杆包</a></span>|<span><a href="">旅行包</a></span>|<span><a href="">电脑包</a></span>|<span><a href="">休闲运动包</a></span></div>
            	         <div><span class="lihover-left-head">奢侈品<span>&#xea51;</span></span><span><a href="">珠宝首饰</a></span>|<span><a href="">时尚饰品</a></span>|<span><a href="">翡翠玉石</a></span>|<span><a href="">水晶玛瑙</a></span>|<span><a href="">钻石/银饰</a></span></div>            	    
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li3.jsp"><s class="s-icon" style="background-position: -0px -162px;"></s> 家居、家具、厨具<span>&#xea51;</span></a> 
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">家装建材<span>&#xea51;</span></span><span><a href="">灯饰照明</a></span>|<span><a href="">厨房卫浴</a></span>|<span><a href="">五金工具</a></span>|<span><a href="">电工电料</a></span>|<span><a href="">装饰材料</a></span></div>
            	         <div><span class="lihover-left-head">家装装饰<span>&#xea51;</span></span><span><a href="">桌布/罩件</a></span>|<span><a href="">地毯地垫</a></span>|<span><a href="">装饰字画</a></span>|<span><a href="">装饰摆件</a></span>|<span><a href="">创意家居</a></span></div>
            	         <div><span class="lihover-left-head">生活日用<span>&#xea51;</span></span><span><a href="">收纳用品</a></span>|<span><a href="">雨伞雨具</a></span>|<span><a href="">净化除味</a></span>|<span><a href="">浴室用品</a></span>|<span><a href="">清洁工具</a></span></div>
            	         <div><span class="lihover-left-head">家具<span>&#xea51;</span></span><span><a href="">卧室家具</a></span>|<span><a href="">客厅家具</a></span>|<span><a href="">餐厅家具</a></span>|<span><a href="">书房家具</a></span>|<span><a href="">儿童家具</a></span></div>
            	         <div><span class="lihover-left-head">厨具<span>&#xea51;</span></span><span><a href="">烹饪锅具</a></span>|<span><a href="">刀剪菜板</a></span>|<span><a href="">厨房配件</a></span>|<span><a href="">水具酒具</a></span>|<span><a href="">餐具</a></span></div>
            	         <div><span class="lihover-left-head">家纺<span>&#xea51;</span></span><span><a href="">床品套件</a></span>|<span><a href="">毛巾浴巾</a></span>|<span><a href="">床单被罩</a></span>|<span><a href="">床垫床褥</a></span>|<span><a href="">窗帘窗纱</a></span></div>
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li4.jsp"><s class="s-icon" style="background-position: -2px -43px;"></s> 个护化妆、清洁用品<span>&#xea51;</span></a> 
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">面部护肤<span>&#xea51;</span></span><span><a href="">卸妆洁面</a></span>|<span><a href="">眼霜面膜</a></span>|<span><a href="">爽肤水</a></span>|<span><a href="">乳液面霜</a></span>|<span><a href="">防晒</a></span></div>
            	         <div><span class="lihover-left-head">洗发护发<span>&#xea51;</span></span><span><a href="">洗发</a></span>|<span><a href="">护发</a></span>|<span><a href="">染发</a></span>|<span><a href="">造型</a></span>|<span><a href="">假发</a></span></div>
            	         <div><span class="lihover-left-head">身体护肤<span>&#xea51;</span></span><span><a href="">沐浴</a></span>|<span><a href="">润肤</a></span>|<span><a href="">颈部</a></span>|<span><a href="">手足</a></span>|<span><a href="">套装</a></span></div>
            	         <div><span class="lihover-left-head">香水彩妆<span>&#xea51;</span></span><span><a href="">女士香水</a></span>|<span><a href="">男士香水</a></span>|<span><a href="">眉笔</a></span>|<span><a href="">眼线/眼影</a></span>|<span><a href="">睫毛膏</a></span></div>
            	         <div><span class="lihover-left-head">清洁用品<span>&#xea51;</span></span><span><a href="">纸品湿巾</a></span>|<span><a href="">衣物清洁</a></span>|<span><a href="">清洁工具</a></span>|<span><a href="">驱虫用品</a></span>|<span><a href="">皮具护理</a></span></div>
            	    
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li5.jsp"><s class="s-icon"></s> 运动户外<span>&#xea51;</span></a> 
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">运动鞋包<span>&#xea51;</span></span><span><a href="">跑步鞋</a></span>|<span><a href="">休闲鞋</a></span>|<span><a href="">篮球鞋</a></span>|<span><a href="">帆布鞋</a></span>|<span><a href="">板鞋</a></span></div>
            	         <div><span class="lihover-left-head">运动服饰<span>&#xea51;</span></span><span><a href="">运动裤</a></span>|<span><a href="">健身服</a></span>|<span><a href="">运动套装</a></span>|<span><a href="">运动背心</a></span>|<span><a href="">运动配饰</a></span></div>
            	         <div><span class="lihover-left-head">骑行运动<span>&#xea51;</span></span><span><a href="">山地车</a></span>|<span><a href="">折叠车</a></span>|<span><a href="">电动车</a></span>|<span><a href="">公路车</a></span>|<span><a href="">骑行装备</a></span></div>
            	         <div><span class="lihover-left-head">户外鞋服<span>&#xea51;</span></span><span><a href="">户外风衣</a></span>|<span><a href="">冲锋衣裤</a></span>|<span><a href="">越野跑鞋</a></span>|<span><a href="">休闲衣裤</a></span>|<span><a href="">军迷服饰</a></span></div>
            	         <div><span class="lihover-left-head">户外装备<span>&#xea51;</span></span><span><a href="">帐篷垫子</a></span>|<span><a href="">望远镜</a></span>|<span><a href="">睡袋吊床</a></span>|<span><a href="">户外照明</a></span>|<span><a href="">户外仪表</a></span></div>      	    
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li6.jsp"><s class="s-icon" style="background-position: 0px -403px;"></s> 汽车、汽车用品<span>&#xea51;</span></a> 
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">汽车车型<span>&#xea51;</span></span><span><a href="">微型车</a></span>|<span><a href="">小型车</a></span>|<span><a href="">中型车</a></span>|<span><a href="">大型车</a></span>|<span><a href="">豪华车</a></span></div>
            	         <div><span class="lihover-left-head">汽车品牌<span>&#xea51;</span></span><span><a href="">宝马</a></span>|<span><a href="">东风标致</a></span>|<span><a href="">一汽丰田</a></span>|<span><a href="">上汽大众</a></span>|<span><a href="">红旗</a></span></div>
            	         <div><span class="lihover-left-head">维修保养<span>&#xea51;</span></span><span><a href="">雨刷</a></span>|<span><a href="">车灯</a></span>|<span><a href="">减震器</a></span>|<span><a href="">轮胎</a></span>|<span><a href="">刹车片</a></span></div>
            	         <div><span class="lihover-left-head">车载电器<span>&#xea51;</span></span><span><a href="">行车记录仪</a></span>|<span><a href="">导航仪</a></span>|<span><a href="">电器配件</a></span>|<span><a href="">车载影音</a></span>|<span><a href="">智能驾驶</a></span></div>
            	         <div><span class="lihover-left-head">汽车装饰<span>&#xea51;</span></span><span><a href="">脚垫座垫</a></span>|<span><a href="">方向盘套</a></span>|<span><a href="">头枕腰靠</a></span>|<span><a href="">空气净化</a></span>|<span><a href="">挂件摆件</a></span></div>
            	         <div><span class="lihover-left-head">汽车服务<span>&#xea51;</span></span><span><a href="">清洗美容</a></span>|<span><a href="">功能升级</a></span>|<span><a href="">保养维修</a></span>|<span><a href="">驾驶培训</a></span>|<span><a href="">油卡充值</a></span></div>
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
			
			<li><a href="jsp/li7.jsp"><s class="s-icon" style="background-position: -0px -201px;"></s> 母婴、玩具、乐器<span>&#xea51;</span></a>
                <div class="lihover">
            	    <div class="lihover-left left">
            	         <div><span class="lihover-left-head">营养辅食<span>&#xea51;</span></span><span><a href="">有机奶粉</a></span>|<span><a href="">益生菌/初乳</a></span>|<span><a href="">果泥果汁</a></span>|<span><a href="">米粉菜粉</a></span>|<span><a href="">宝宝零食</a></span></div>
            	         <div><span class="lihover-left-head">喂养用品<span>&#xea51;</span></span><span><a href="">奶瓶奶嘴</a></span>|<span><a href="">儿童餐具</a></span>|<span><a href="">水壶水杯</a></span>|<span><a href="">吸奶器</a></span>|<span><a href="">围兜/防溅衣</a></span></div>
            	         <div><span class="lihover-left-head">洗护用品<span>&#xea51;</span></span><span><a href="">宝宝护肤</a></span>|<span><a href="">日常护理</a></span>|<span><a href="">洗发沐浴</a></span>|<span><a href="">洗澡用具</a></span>|<span><a href="">驱蚊防晒</a></span></div>
            	         <div><span class="lihover-left-head">妈妈专区<span>&#xea51;</span></span><span><a href="">防辐射服</a></span>|<span><a href="">孕妈装</a></span>|<span><a href="">孕妇护肤</a></span>|<span><a href="">孕期营养</a></span>|<span><a href="">待产护理</a></span></div>
            	         <div><span class="lihover-left-head">童车童床<span>&#xea51;</span></span><span><a href="">安全座椅</a></span>|<span><a href="">婴儿推车</a></span>|<span><a href="">婴儿床</a></span>|<span><a href="">婴儿床垫</a></span>|<span><a href="">学步车</a></span></div>
            	         <div><span class="lihover-left-head">玩具<span>&#xea51;</span></span><span><a href="">遥控电动</a></span>|<span><a href="">益智玩具</a></span>|<span><a href="">积木拼插</a></span>|<span><a href="">动漫玩具</a></span>|<span><a href="">模型玩具</a></span></div>
            	         <div><span class="lihover-left-head">乐器<span>&#xea51;</span></span><span><a href="">钢琴</a></span>|<span><a href="">电子琴/电钢琴</a></span>|<span><a href="">打击乐器</a></span>|<span><a href="">西洋管弦</a></span>|<span><a href="">民族乐器</a></span></div>       	    
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>

			<li><a href="jsp/li8.jsp"><s class="s-icon" style="background-position: -0px -239px;"></s> 图书、音像、电子书<span>&#xea51;</span></a>
                <div class="lihover">
            	    <div class="lihover-left left">
            	        <div><span class="lihover-left-head">音像<span>&#xea51;</span></span><span><a href="">音乐</a></span>|<span><a href="">影视</a></span>|<span><a href="">教育音像</a></span>|<span><a href="">游戏</a></span>|<span><a href="">影视、动漫周边</a></span></div>
            	        <div><span class="lihover-left-head">少儿<span>&#xea51;</span></span><span><a href="">儿童文学</a></span>|<span><a href="">绘本</a></span>|<span><a href="">科普</a></span>|<span><a href="">幼儿启蒙</a></span>|<span><a href="">智力开发</a></span></div>
            	        <div><span class="lihover-left-head">教育<span>&#xea51;</span></span><span><a href="">教材</a></span>|<span><a href="">中小学教辅</a></span>|<span><a href="">考试</a></span>|<span><a href="">外语学习</a></span>|<span><a href="">字典词典</a></span></div>
            	        <div><span class="lihover-left-head">文艺<span>&#xea51;</span></span><span><a href="">小说</a></span>|<span><a href="">文学</a></span>|<span><a href="">青春文学</a></span>|<span><a href="">传记</a></span>|<span><a href="">艺术</a></span></div>
            	        <div><span class="lihover-left-head">人文社科<span>&#xea51;</span></span><span><a href="">历史/文化</a></span>|<span><a href="">政治/军事</a></span>|<span><a href="">国学/古籍</a></span>|<span><a href="">哲学/宗教</a></span>|<span><a href="">社会科学</a></span></div>
            	        <div><span class="lihover-left-head">电子书<span>&#xea51;</span></span><span><a href="">畅读VIP</a></span>|<span><a href="">小说</a></span>|<span><a href="">经济金融</a></span>|<span><a href="">文学社科</a></span>|<span><a href="">免费</a></span></div>
            	    </div>
                    <div class="lihover-right right">
                        <img class="right-pic right" src="images/lihover-right1.jpg">
                        <img class="right-pic right" src="images/lihover-right2.jpg">
            	    </div>
                </div>
			</li>
		</ul>
	</div>
	<!--第二部分左侧结束 -->


</div>
<!--第二部分结束 -->
</body>
</html>