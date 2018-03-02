<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>注册</title>
  <base href="<%=basePath%>">
  <link rel='stylesheet' href='css/reset.css' />
    <link rel='stylesheet' href='css/register.css' />
    <script src="js/jquery.js" ></script>
    <script src="js/jquery.validate-1.13.1.js"></script>
<script>
  $(function(){
  $("input").focus(function(){
  $(this).css("border-color","#79B7DC");
  $(".wrong").css("display","none");
});  
    
  $("input").blur(function(){
  $(this).css("border-color","#ccc");
});
    });
    var validator1;
    $(document).ready(function () {
        validator1 = $("#Form").validate({
            rules: {
                username: {
                    required: true,
                    rangelength:[6,10],
                    remote:"jsp/register-check.jsp",
                    user:true,
                },
                pass: {
                    required: true,
                   rangelength:[6,10],
                    user:true
                },
                "confirm-pass": {
                    equalTo: "#pass"
                }, 
                email: {
                    required: true,
                    email:true,
                },
                address: {
                    required: true, 
                },
                contact: {
                    required: true, 
                    contact:true
                },
                 
                
            },
            messages: {
                username: {
                    required: '请输入用户名',
                    rangelength: '6-10个字母或数字',
                    remote: "该用户名已被注册",
                    
                },
                pass: {
                    required: '请输入密码',
                    rangelength: '6-10个字母或数字',
                },
                "confirm-pass": {
                    equalTo: "两次密码不一致"
                },
                 email: {
                    required: '请输入邮箱', 
                    email:'邮箱格式不正确'
                },
                address: {
                    required: '请输入收货地址', 
                },
                contact: {
                    required: '请输入联系方式', 
                },
            },   
        });
        
        $.validator.addMethod("user",function(value,element,params){ 
         var user = new RegExp("^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,10}$");  
        return this.optional(element)||(user.test(value));
        },"含其他字符或字符单一");
        
         $.validator.addMethod("contact",function(value,element,params){ 
         var contact = new RegExp("^[0-9]{11}$");  
        return this.optional(element)||(contact.test(value));
        },"联系方式格式不正确");
    });
</script>
</head>
<body >
<div class="top">
  <div class="top-center"><img src="images/logo.jpg">
  欢迎注册</div>
</div>
<div class="register-part">
  <div class="register-part-center">
    <form id="Form" action="jsp/add-user.jsp" method="post" >
      <label for="username" class="label"><span>*</span>用户名:</label>
      <input type="text" name="username" id="username" placeholder="6-10个字母和数字  例：1137104wpf" /><br>
      <label for="pass" class="label"><span>*</span>密码:</label>
      <input type="password"  name="pass" id="pass" placeholder="6-10个字母和数字，区分大小写" /><br> 
      <label for="confirm-pass" class="label"><span>*</span>确认密码:</label>
      <input type="password"  name="confirm-pass" id="confirm-pass" placeholder="6-10个字母和数字，区分大小写" /><br> 
       <label for="email" class="label"><span>*</span>邮箱:</label>
      <input type="text"  name="email" id="email" placeholder="例：123456789@qq.com" /><br> 
      <label for="address" class="label"><span>*</span>收货地址:</label>
      <input type="text"  name="address" id="address" placeholder="例：河北秦皇岛海港区泰山路143号" /><br>
      <label for="contact" class="label"><span>*</span>联系方式:</label>
      <input type="text"  name="contact" id="contact" placeholder="请填写常用手机号" /><br> 
      <div class="agree-div"> 
      <input  type="checkbox" value="1"  name="checkbox" id="agree" checked="checked" />
      <span>我已阅读并同意<a href="">《用户注册协议》</a></span>  
     </div>
      <button name="register-btn" id="register-btn" >提 交</button>
</form>  


  </div>
</div>
</body>
</html>
