<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <title>首页</title>
	<script>
		function login(){
			var div = document.getElementById("cvs2_logon");
			div.style="display:block";
		}
		function close_win() {
            var div = document.getElementById("cvs2_logon");
            div.stylr="display:none";
        }
	
	</script>
</head>
<body>
    <!-- 登录弹出层 -->
    <div class="cvs" style="display:none" id="cvs2_logon">
        <div class="newModWin">
            <div class="title">登录爱下下账号</div>
            <div class="close" id="cvs2_close" onclick="close_win()">X</div>

            <div class="logWin">
                <form action="" method="post">
                    <input type="text" class="inp user" name="name" placeholder="请输入用户名" />
                    <input type="password" class="inp pass" name="password" placeholder="请输入密码" />
                    <a href="" class="find_pass">忘记密码，立即找回</a>
                    <input type="submit" class="su_btn" value="登录" />
                    <a href="register.jsp" class="reg">注册</a>
                </form>
            </div>
        </div>
    </div>

    <!-- 网站头信息-->
    <div id="nav">
        <div id="search">
            <input type="text" name="name" />
            <input type="button" value="搜索" />
        </div>

        <div id="logon">
            <div class="cons">
                欢迎光临爱下下！
            </div>
            <div class="opers">
                <input type="button" value="上传资料" />
            </div>
        </div>

        <div id="login">
            <a href="javascript:void(0)" onclick="login()">点击登录</a>
        </div>
    </div>

    <!-- 网站主体 -->
    <div id="main">
        <!-- 定义一个条目-->
        <div class="pro">
           <div class="img">
               <img src="./images/rar.svg" />
           </div>
            <div class="cs">
                <div class="up">
                    <a>简易java开源订销管理系统.zip</a>
                </div>
                <div class="down">
                    上传者：  上传时间：
                </div>
            </div>
            <div class="arr">
                积分：<span>2</span>
            </div>
        </div>

        <div class="pro">
            <div class="img">
                <img src="./images/pdf.svg" />
            </div>
            <div class="cs">
                <div class="up">
                    <a href="detai.html">简易java开源订销管理系统.zip</a>
                </div>
                <div class="down">
                    上传者：  上传时间：
                </div>
            </div>
            <div class="arr">
                积分：<span>2</span>
            </div>
        </div>

        <div class="pro">
            <div class="img">
                <img src="./images/zip.svg" />
            </div>
            <div class="cs">
                <div class="up">
                    <a>简易java开源订销管理系统.zip</a>
                </div>
                <div class="down">
                    上传者：  上传时间：
                </div>
            </div>
            <div class="arr">
                积分：<span>2</span>
            </div>
        </div>

        <div class="pro">
            <div class="img">
                <img src="./images/txt.svg" />
            </div>
            <div class="cs">
                <div class="up">
                    <a>简易java开源订销管理系统.zip</a>
                </div>
                <div class="down">
                    上传者：  上传时间：
                </div>
            </div>
            <div class="arr">
                积分：<span>2</span>
            </div>
        </div>

        <div class="pro">
            <div class="img">
                <img src="./images/txt.svg" />
            </div>
            <div class="cs">
                <div class="up">
                    <a>简易java开源订销管理系统.zip</a>
                </div>
                <div class="down">
                    上传者：  上传时间：
                </div>
            </div>
            <div class="arr">
                积分：<span>0</span>
            </div>
        </div>

        <div class="pro">
            <div class="img">
                <img src="./images/pdf.svg" />
            </div>
            <div class="cs">
                <div class="up">
                    <a>简易java开源订销管理系统.zip</a>
                </div>
                <div class="down">
                    上传者：  上传时间：
                </div>
            </div>
            <div class="arr">
                积分：<span>2</span>
            </div>
        </div>
    </div>

</body>

</html>