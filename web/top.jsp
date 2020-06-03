<%--
  Created by IntelliJ IDEA.
  User: 宋亚东
  Date: 2020/6/3
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.devotion.TwibberDao" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
<form method="post" action="/devotion/Add">
    <div class="twibber_main" align="center">
        <div style="margin-top: 50px;width: 600px;background: cornsilk;height: 180px;opacity: 0.5;border-radius: 10px">
            <div align="left" style="margin-left: 10px" >
                分享新鲜事
            </div>
            <div style="margin-top: 5px">
          <textarea title="推博输入框" name="content" style="margin-bottom: 5px;border:solid 1px;resize: none;height: 100px;
          width: 580px;margin: 0px;overflow: hidden"></textarea>
            </div>
            <div align="right">
                <button type="submit"  style="background: #1E90FF;border-radius: 3px;border-width: 0px;cursor: pointer;outline: none;font-family: 'Microsoft YaHei';
                    color: white;font-size: 17px;height: 30px;margin-top: 5px;margin-right: 10px">发送</button>
            </div>
        </div>

    </div>
</form>
</body>
</html>
