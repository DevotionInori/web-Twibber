<%@ page import="com.devotion.Twibber" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/3
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.devotion.TwibberDao" %>
<%
    TwibberDao td = new TwibberDao();

    List<Twibber> lb=td.executeQueryForList("SELECT * from Twibber");
    String s = "";
    for (Twibber item :
            lb) {
        String minute;
        if(item.getMinute()>9)
            minute=""+item.getMinute();
        else
            minute="0"+item.getMinute();
        s+="<div class=\"border\" align=\"left\">" +
                "<div class=\"left\">" +
                "<img src=\"img/lappland.png\">" +
                "</div>" +
                "<div style=\"height:5px;width:80%\"></div>" +
                "<div class=\"time\">" +
                item.getHour()+":"+ minute +
                "</div>" +
                "<div class=\"content\">" +
                item.getContent()+
                "</div>" +
                "<div align=\"right\"><a  class =\"button\"  href=\"/devotion/Delete?id="+item.getId()+"\">删除</a></div>" +
                "</div>";
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .left {
        float: left;
    }
    .left img{
        border-radius: 24px;
        width: 48px;
        height: 48px;
    }
    .border{
        background:#ffffffff;
        margin-top:50px;
        border-radius: 10px;
        opacity: 0.5;
    }
    .time{
        font-size:10px;
        width: 70%;
        margin-top: 10px;
        margin-left: 20px;
    }
    .content{
        margin-left: 20px;
        margin-bottom: 20px;
        width: 70%;
    }

    .button { /* 按钮美化 */
        width: 300px; /* 宽度 */
        height: 50px; /* 高度 */
        border-width: 0px; /* 边框宽度 */
        border-radius: 3px; /* 边框半径 */
        margin-right: 10px;
        background: red; /* 背景颜色 */
        cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
        outline: none; /* 不显示轮廓线 */
        font-family: Microsoft YaHei; /* 设置字体 */
        color: white; /* 字体颜色 */
        font-size: 15px; /* 字体大小 */
    }
    .button:hover { /* 鼠标移入按钮范围时改变颜色 */
        background: gray;
    }
    body{

    }


</style>
<body>
    <div>
        <%=s%>>
    </div>
</body>
</html>
