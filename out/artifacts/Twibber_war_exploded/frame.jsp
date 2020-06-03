<%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/3
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .frame{
        background:url("img/1569424034506.png");
        background-repeat: no-repeat;
        background-size: 100%;
        background-attachment: fixed;
    }
</style>
<frameset cols="10%,90%" class="frame">
    <frame src="left.jsp"/>
    <frameset rows="20%,80%">
        <frame src="top.jsp"/>
        <frame src="right.jsp"/>
    </frameset>
</frameset>
</html>
