<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>Insert title here</title>
</head>
<body>
	<form action="encode" method="post">
		姓名:<input type="text" name="name" value="lihong"><br>
		密码:<input type="password" name="pwd"><br>
		性别：<input type="radio" name="sex" value="0" checked="checked">男
			 <input type="radio" name="sex" value="1">女
			 <input type="radio" name="sex" value="2">保密<br>
		爱好：<input type="checkbox" checked name="hobby" value="coding">编程
			 <input type="checkbox" name="hobby" value="game">游戏
			 <input type="checkbox" name="hobby" value="shopping">逛街
			 <input type="checkbox" checked="checked" name="hobby" value="jianshen">健身<br>
		城市：<select name="city">
				<option value="1">郑州</option>
				<option value="2" selected>北京</option>
				<option value="3">上海</option>
				<option value="4">深圳</option>
			 </select>
			 <input type="submit" value="注册">
	</form>
</body>
</html>