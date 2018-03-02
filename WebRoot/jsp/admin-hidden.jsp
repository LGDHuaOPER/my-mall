<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>隐藏页面</title>
  <base href="<%=basePath%>">
    <script src="js/jquery.js" ></script>
    <script src="js/jquery.validate-1.13.1.js"></script>
<script>
    var validator1;
    $(function () {
        validator1 = $("#Form").validate({
            rules: {
                delete_user: { remote:"jsp/delete_user.jsp"},
                delete_goods: { remote:"jsp/delete_goods.jsp"},    
                update_goods: { remote:"jsp/update_goods.jsp"},
                add_goods: { remote:"jsp/add_goods.jsp"},
                    },
                  }); 
    });
</script>
<style type="text/css">
#Form{position:fixed;right:0px;}
#delete_user,#delete_goods,#update_goods,#add_goods{width:0px;}
</style>
</head>
<body > 
<form id="Form" method="post" action="jsp/hidden-check.jsp">
<input type="text" name="delete_user" id="delete_user" value=""  />
<input type="text" name="delete_goods" id="delete_goods" value=""  />
<input type="text" name="update_goods" id="update_goods" value=""  />
<input type="text" name="add_goods" id="add_goods" value=""  />

</form>  
</body>
</html>
