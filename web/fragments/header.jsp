<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>物品管理系统</title>
    <link href="../style/style.css" rel="stylesheet" type="text/css"/>
    <script src="../js/jquery-1.3.2.js" type="text/javascript"></script>
</head>
<body>
<div class="head">
    <div class="logo">
        <a href="#">物品管理系统</a>
    </div>
    <div class="headright">
        <div>
            <a href="#"><span>
                <img src="../images/person.png" width="17" height="19"/>
            </span><span>您好<s:property value="#session.username"/>管理员</span> </a>
        </div>
        <div>
            <a href="#"><span>
                <img src="../images/password.png" width="15" height="21"/>
            </span><span>修改密码</span> </a>
        </div>
        <div>
            <a href="#<%--/Login!logout?username=#session.username--%>"><span>
                <img src="../images/colse.png" width="19" height="20"/>
            </span><span>注销</span> </a>
        </div>
    </div>
</div>
</body>
</html>
