# 写在头部
## 配置要求
* 系统要求 
	* Apache Tomcat 8.0以上  
	* JDK 1.8以上
	* MySQL 5.5以上
	* Windows7 以上
* 浏览器要求  谷歌 火狐 360 IE9+
* 数据库  mysql 
* 数据库结构
	* 数据库名  user_info_db
	* 其下的表有
		* admin_tb
		* goods_tb
		* users_tb
		* demo
		* orders_tb
## 注意事项
```
将项目部署到myeclipes或者eclipse后要修改tomcat的配置文件server.xml
将其中的所有 <Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443" />
中加上 URIEncoding="UTF-8" 以解决jsp页面间传输中文乱码的问题,修改后为
<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443"  URIEncoding="UTF-8"/>
```
## 使用问题
* 管理员admin ， 密码admin
* 测试用户1137202sch ， 密码1137202sch
* 测试用户1137102zz ， 密码1137102zz
## 具备功能
* 登录功能
* 用户注册功能
* 购物车功能
	* 查看订单
	* 修改订单
	* 订单结算
* 商品信息查看功能
* 后台管理功能
## 预览
可在根目录下的preview文件夹查看
