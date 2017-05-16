<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName();
%>
<style>
	.file {
		position: relative;
		display: inline-block;
		background: #D0EEFF;
		border: 1px solid #99D3F5;
		border-radius: 4px;
		padding: 4px 12px;
		overflow: hidden;
		color: #1E88C7;
		text-decoration: none;
		text-indent: 0;
		line-height: 20px;
	}
	.file input {
		position: absolute;
		font-size: 100px;
		right: 0;
		top: 0;
		opacity: 0;
	}
	.file:hover {
		background: #AADFFD;
		border-color: #78C3F3;
		color: #004974;
		text-decoration: none;
	}

</style>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<title>首页</title>
		<title>企巴巴-一站式商业服务平台</title>
		<jsp:include page="../common/css_c.jsp"></jsp:include>
		<link rel="stylesheet" type="text/css" href="/css/store.css" />
		<script type="text/javascript" src="../js/scrooll.js"></script>
		<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
	</head>
	<body>
		<!--头部-->
		<jsp:include page="../common/top_c2.jsp"></jsp:include>

		<!--content-->
		<div class="content">
			<div class="list">
				<ul>
					<li><p>店铺管理</p><p>Store&nbsp;managemengt</p></li>
					<li>
						<a href="#">店铺管理</a>
					</li>
					<li>
						<a href="#">产品管理</a>
					</li>
					<li>
						<a href="#">成功案例</a>
					</li>
					<li>
						<a href="#">关联企业</a>
					</li>
					<p class="p1">好业务，让企巴巴帮你推广</p>
				</ul>
			</div>
			<div class="user">
				<div class="user_left">
					<div class="img_box">
						<img src="images/touxiang1.jpg">
						<p><button>修改头像</button></p>
					</div>
					<div class="text">
						<p>账户：<span>赵军</span></p>
						<p></p>
						<p>账户余额：<span>0 <button>[ 充值 ]</button></span></p>
						<p>消费总额：<span>0 元</span></p>
					</div>
				</div>
				<div class="user_right">
					<p>显示姓名 : 【 <span>开启</span> 】<button>预览</button></p>
					<p>店铺状态  :  &nbsp;&nbsp;<span>审核通过</span><button>修改</button></p>
					<p>店铺店址 ： http//iz.sdai.com/guwen/23076 <button>查看</button></p>
					<p>个人介绍 ： <span>质押贷款2个点，办理工商，法律，金融各种业务等等等等等等等22222222222</span><button>修改简历</button></p>
				</div>
			</div>
			<!--user-->
			<div id="container">
				<div class="location">
					您当前位置：
					<a href="/index.html">企巴巴</a> &gt;&gt;
					<a href="javascript:void(0);" class="defaultCursor">个人中心</a> &gt;&gt;
					<a href="javascript:void(0);" class="defaultCursor">业务介绍</a>
				</div>
			</div>
			<!--container-->
			<div class="form">
				<form action="">
					<p><span>个人名称</span><input type="text" name="" id="" value="赵军"></p>
					<p><span>性别</span><input type="radio" name="sex" value="male">男<input type="radio" name="sex" value="female">女</p>
					<p><span>联系电话</span><input type="text" id="" value="" placeholder="138********"></p>
					<p><span>QQ</span><input type="text" id="" value=""></p>
					<p><span>常用邮箱</span><input type="text" name="" id="" value="" placeholder="zhaojun@163.com"></p>
					<p><span>区域</span><select>
						<option value="0">北京</option>
					</select>
						<select>
							<option value="0">北京市</option>
						</select>
						<select>
							<option value="0">海淀区</option>
						</select>
					</p>
					<p><span>地址</span><input type="text" id="" value=""></p>
					<p><span>顾问类型</span><select name="" id="">
						<option value="0">企业服务</option>
						<option value="0">企业服务</option>
						<option value="0">企业服务</option>
					</select>
					</p>
					<p><span>执业时间</span><select name="" id="">
						<option value="0">2017-05-05</option>
						<option value="0">2017-05-05</option>
						<option value="0">2017-05-05</option>
					</select>
					</p>
					<p><span>所属企业</span><input type="text" id="" value="" placeholder="中汛鉴财投资担保有限公司"><span class="span1">修改所属企业</span></p>

					<p><span>个人介绍</span>
						<textarea placeholder="请输入你的个人简介" lay-verify="required" name="description" class="layui-textarea"></textarea>
					</p>
					<p><input type="submit" id="" value="提交">
						<input type="reset" value="取消">
					</p>
				</form>
			</div>

			<!--members-->
			<div class="clear"></div>
		</div>

		<!--页脚-->
		<jsp:include page="../common/bottom.jsp"></jsp:include>
		<!--bottomCss-->
	</body>
	<script src="/plugins/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['laypage', 'layer'], function(){

        var laypage = layui.laypage
            ,layer = layui.layer;
        //以下将以jquery.ajax为例，演示一个异步分页
        var pageSize = 5;
        function paging(curr){
            $.ajax({
                type: "POST",
                url: "/member/need/memberNeedPage.html",
                data: {
                    currentPage :curr || 1,
                    pageSize : pageSize
                },
                success: function(data){
                    $("#dataMsg").html(data);
                    var totalPages = $("#totalPages").val();
                    //显示分页
                    laypage({
                        cont: 'pager', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
                        pages: totalPages, //通过后台拿到的总页数
                        curr: curr || 1, //当前页
                        groups: 5 ,//连续显示分页数
                        jump: function(obj, first){ //触发分页后的回调
                            if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                                paging(obj.curr);
                            }
                        }
                    });
                }
            });
        };
        //运行
        paging();
    });

</script>

</html>