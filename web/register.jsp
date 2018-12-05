<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <script type="text/javascript" src="js/user.js"></script>
    <title>用户注册</title>
</head>
<body>
<!-- 登录弹出层 -->
<div class="cvs" style="display:none" id="cvs2_logon">
    <div class="newModWin">
        <div class="title">登录爱下下账号</div>
        <div class="close" id="cvs2_close" onclick="close_win()">X</div>

        <div class="logWin">
            <form action="" method="post">
                <input type="text" class="inp user" name="name" placeholder="请输入用户名" required/>
                <input type="password" class="inp pass" name="password" placeholder="请输入密码" required/>
                <a href="" class="find_pass">忘记密码，立即找回</a>
                <input type="submit" class="su_btn" value="登录"/>
                <a href="" class="reg">注册</a>
            </form>
        </div>
    </div>
</div>

<!-- 网站头信息-->
<div id="nav">
    <div id="search">
        <input type="text" name="name"/>
        <input type="button" value="搜索"/>
    </div>

    <div id="logon">
        <div class="cons">
            欢迎光临爱下下！
        </div>
        <div class="opers">
            <input type="button" value="上传资料"/>
        </div>
    </div>

    <div id="login">
        <a href="javascript:void(0)" onclick="showWin()">点击登录</a>
    </div>
</div>

<!-- 网站主体 -->
<div id="main">
    <!-- 上传表单-->
    <div class="upload">
        <p>用户注册</p>
        <hr/>
        <form action="user" name="myform" method="post">
            <!--  <span>
                 <label>用户头像：</label>
                 <input class="upt" type="text" readonly="readonly"/>
                 <input class="upt" type="file" name="" value=""/>
                 <b>文件格式可以是jpg,gif,png等图片格式</b>
             </span> -->
            <span>
                    <label>用户名：</label>
                    <input id="name" class="upt" type="text" name="username" value=""/>
					<b id="nameb"></b>
                    <b>账号可以包含字母，数字，下划线，不允许出现其他符号</b>
                </span>
            <span>
                    <label>密码：</label>
                    <input id="password" class="upt" type="password" name="password" value=""/>
                    <b>密码长度为6-20位</b>
                </span>
            <span>
                    <label>确认密码：</label>
                    <input id="confirmPass" class="upt" type="password" name="confirmPassword" value=""/>
                    <b>两次输入的密码必须保持一致</b>
                </span>
            <span>
                    <label>联系方式：</label>
                    <input id="tel" class="upt" type="text" name="phone" value=""/>
                    <b>您丢失密码后找回密码的凭证</b>
                </span>
            <span>
                    <label>电子邮箱：</label>
                    <input id="email" class="upt" type="text" name="email" value=""/>
                    <b>您丢失密码后找回密码的凭证</b>
                </span>

            <span><label class="btn"><input type="button" onclick="reg()" value="注册"/></label></span>
        </form>
    </div>

</div>
</body>
</html>