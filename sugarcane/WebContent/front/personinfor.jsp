<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>个人信息</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/frontcss/personinfor.css">
    <script src='${ctx }/static/frontjs/jquery-1.9.0.min.js'></script>
    <script src="${ctx }/static/frontjs/html5shiv.min.js"></script>
    <script src="${ctx }/static/frontjs/home.js"></script>
</head>
<body>
<div class="overall">
<!--header-->
    <div class="header">
		<div class="banner">
		<!--logo-->
			<div class="logo">
				<img src="${ctx }/static/frontimages/b3.png">
			</div>
		<!--首页选项卡-->
			<div class="home">
				<a href="home.jsp">首页</a>
			</div>
		<!--全部课程选项卡-->
			<div class="allclass">
				<a href="allclass.html">全部课程</a>
			</div>
		<!--搜索框-->
			<div class="sousuo">
				<form> 
                    <input type="text" placeholder="搜索">
                    <div class="s_img">
                        <a href="#"><img src="${ctx }/static/frontimages/sousuo.png"></a> 
                    </div>
                </form>
			</div>
		<!--用户注册登录-->
			<div class="login_regist">
				<a href="javascript:void(0)" onClick="showBox()">登录</a>
				<a href="javascript:void(0)" onClick="registBox()">注册</a>
			</div>
			<div class="event" id="login_box" style="display: none;">
				<div class="login">
					<div class="title">
					    <span class="t_txt">登录</span>
					    <span class="del" onClick="deleteLogin()">X</span>
				    </div>
				    <form action="" method="post">
					    <input type="text" name="email" id="email" value="" placeholder="请输入邮箱" class="email-a" onblur="check_box1()" />
					    <div class="bcde" align="center"></div>
					    <input type="password" name="" id="pwd_login" value="" placeholder="请输入密码" onblur="check_box2()"/>
					    <div class="error_pwd" align="center"></div>
					    <input type="submit" name="" id="" value="登录" class="btn" />
					    <input type="button" name="" id="forgetPwd" value="忘记密码?" class="">
					    <input type="button" name="" id="noAccount" value="没有账号?去注册" class="" onClick="regist()">
				    </form>
				</div>
			</div>
			<div class="event" id="regist_box" style="display: none;">
				<div class="regist">
					<div class="title">
						<span class="t_txt">注册</span>
						<span class="del" onClick="deleteRegist()">X</span>
					</div>
					<form action="" method="post">
						<input type="text" name="" id="email_regist" value="" placeholder="请输入邮箱" class="email-b" onblur="check_box()" />
						<div class="bcd" align="center"></div>
						<input type="password" name="" id="pwd_regist" value="" placeholder="密码为6-16位包含数字、字母、下划线" onblur="check()" />
						<div id="spinfo2" align="center"></div>
						<input type="password" name="" id="pwd_pwd" value="" placeholder="再次输入密码" onblur="check_again()">
						<div id="spinfo3" align="center"></div>
						<input type="text" name="" id="petname" value="" placeholder="昵称"/>
						<input type="text" name="" id="phone" value="" placeholder="手机" onblur="Mous()" />
						<div id="spinfo1" align="center"></div>
						<input type="submit" name="" id="regist_1" value="注册" class="btn">
					</form>	
				</div>
			</div>
			<div class="bg_color" onClick="deleteLogin()" id="bg_filter" style="display: none;"></div>
		<!--培训机构登录-->
			<div class="org_login">
				<a href="orgLogin.html">培训机构登录</a>
			</div>
		</div>
	</div>
<!--body-->
    <div class="body">
        <div class="left">
            <div class="personimg"><img src="${ctx }/static/frontimages/timg0.jpg"></div>
            <div class="nickname"><p>我的昵称</p></div>
            <div class="reinfor"><a href="#">修改个人信息</a></div>
            <div class="collect"><a href="#">我的收藏</a></div>
        </div>
        <div class="line"></div>
        <div class="right">
            <div class="infor"><p>个人信息</p></div>
             <div class="inforline"></div>
             <div class="information">
                <form>
                <table>
                    <tr><td>昵称</td><td><input type="text" name="name"></td></tr>
                    <tr><td>邮箱</td><td><input type="text" name="mail"></td></tr>
                    <tr><td>性别</td><td><input type="radio" name="sex" value="男">男<input type="radio" name="sex" value="女">女</td></tr>
                    <tr><td>年龄</td><td><select name="year">
                            <option value="year">1990</option>
                            <option value="year">1995</option>
                            <option value="year">1997</option>
                            <option value="year">1998</option>
                            </select><select name="month">
                            <option value="month">5月</option>
                            <option value="month">6月</option>
                            <option value="month">7月</option>
                            <option value="month">8月</option>
                            </select><select name="day">
                            <option value="day">10日</option>
                            <option value="day">11日</option>
                            <option value="day">12日</option>
                            <option value="day">13日</option>
                            </select></td></tr>
                    <tr><td>学历</td><td><select name="education">
                            <option value="本科">本科</option>
                            <option value="硕士">硕士</option>
                            <option value="博士">博士</option>
                            <option value="小学">小学</option>
                            </select></td></tr>
                      <tr><td>职业</td><td><select name="vocation">
                            <option value="医生">医生</option>
                            <option value="教师">教师</option>
                            <option value="司机">司机</option>
                            <option value="白领">白领</option>
                            </select></td></tr>
                    <tr><td>地址</td><td><input type="text" name="address"></td></tr>
                    <tr><td>手机号</td><td><input type="text" name="phone"></td></tr>


                </table>
            </form>
            </div>   
            <div class="inforline2"></div> 
                <div class="infor2"><p>兴趣爱好</p></div>
                <div class="inforline3"></div>
                <div class="fuxuankuang">
                    <form>
                        <table>
                                <tr><td>1<input type="checkbox" name=""></td><td>2<input type="checkbox" name=""></td><td>3<input type="checkbox" name=""></td></tr>
                                 <tr><td>4<input type="checkbox" name=""></td><td>5<input type="checkbox" name=""></td><td>6<input type="checkbox" name=""></td></tr>
                                <tr><td>7<input type="checkbox" name=""></td><td>8<input type="checkbox" name=""></td><td>9<input type="checkbox" name=""></td></tr>
                        </table>
                    </form></div>
                    <div class="tijiao">
                            <input type="submit" name="提交" value="保存">
                    </div>


            </div>
        
    </div>
     <div id="backgroundImg"></div>
<!--footer-->
    <div class="footer">
        <div class="footer_text">Copyright©2018-2019&nbsp;&nbsp;&nbsp;sugarcane&nbsp;&nbsp;&nbsp;联系我们</div>
    </div>
</body>
</html>