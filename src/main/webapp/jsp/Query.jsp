<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>通话日单查询</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<nav class="navbar navbar-default"  style="background-color: #000000 ; color: #FFFFFF; height: 120px;">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="font-size: 30px ;color: #FFFFFF ;margin-left: 70px;padding-top: 40px">中国电信查询系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-right: 100px">


            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" style="padding-top: 40px;font-size: 20px;">${requestScope.name}</a></li>
                <li>
                    <span class="glyphicon glyphicon-log-in" aria-hidden="true" style="padding-top: 40px;font-size: 20px;"></span>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding-top: 40px;font-size: 20px">退出</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
    <!--  <div  style="height: 30px; margin-top: 0px;">
      <b style="margin-left: 5px; margin-top: 5px; font-size: 30px; padding-top: 5px;" >添加视频信息</b>
      </div> AFD9EE  -->

    <div class="bs-docs-header" id="content" tabindex="-1" style="background: #CCCC99;margin-top: 40px; height: 200px;">
        <div class="container" style="height: 200px; padding-top: 50px">
            <h1>起步</h1>
            <p>做中国最好的电信公司,掌握你的最新动态</p>
        </div>


    </div>

</nav>

<br />
<br />


<div class="container-fluid" style="width: 700px; height: 500px; margin-top: 200px; margin-left: 60px; float: left;" >
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- 轮播图的中的小点 -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <!-- 轮播图的轮播图片 -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/1.jpg">
                <div class="carousel-caption">
                    <!-- 轮播图上的文字 -->
                </div>
            </div>
            <div class="item">
                <img src="images/2.jpg">
                <div class="carousel-caption">
                    <!-- 轮播图上的文字 -->
                </div>
            </div>
            <div class="item">
                <img src="images/3.jpg">
                <div class="carousel-caption">
                    <!-- 轮播图上的文字 -->
                </div>
            </div>
        </div>

        <!-- 上一张 下一张按钮 -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


</div>


<div style="float: left; margin-right: 50px;">

    <div style="margin-top: 140px; width: 100px;margin-left: 280px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>


    <div style="margin-top: 0px; width: 100px;margin-left: 280px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: 280px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: 280px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: -400px; width: 100px;margin-left: 50px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: 50px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: 50px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>
    <div style="margin-top: 0px; width: 100px;margin-left: 50px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>





    <div style="margin-top: -400px; width: 100px;margin-left: -180px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: -180px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: -180px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>

    <div style="margin-top: 0px; width: 100px;margin-left: -180px;">
        <form action="/queryCallLogList" method="get">
            <button type="submit" class="btn btn-default" style="border:4px #9999FF dashed;background:lightblue;height:50px;width:130px;margin-top: 50px; margin-left: 400px;">查询</button>
        </form>
    </div>


</div>




<%--<div style="float: left; margin-right: 50px;">
    <form action="/queryCallLogList" method="get">
        <div class="input-group input-group-lg" style="margin-top: 200px; width: 300px;margin-left: 300px;">
            <span class="input-group-addon" id="sizing-addon1">手机号</span>
            <input type="text" class="form-control" name="telephone"  value=${requestScope.telephone} placeholder="手机号" aria-describedby="sizing-addon1">
        </div>
        <div class="input-group input-group-lg" style="margin-top: 50px; width: 300px;margin-left: 300px;">
            <span class="input-group-addon" id="sizing-addon2">年份</span>
            <input type="text" class="form-control" name="year" placeholder="如 2018" aria-describedby="sizing-addon1">
        </div>
        <div class="input-group input-group-lg" style="margin-top: 50px; width: 300px;margin-left: 300px;">
            <span class="input-group-addon" id="sizing-addon3">月份</span>
            <input type="text" class="form-control" name="month" placeholder="如 2" aria-describedby="sizing-addon1">
        </div>

        <div class="input-group input-group-lg" style="margin-top: 50px; width: 300px;margin-left: 300px;">
            <span class="input-group-addon" id="sizing-addon4">天</span>
            <input type="text" class="form-control" name="day" value="-1" placeholder="如 2" aria-describedby="sizing-addon1">
        </div>

        <button type="submit" class="btn btn-default" style="height:50px;width:80px;margin-top: 50px; margin-left: 400px;">查询</button>

    </form>
</div>--%>





<div class="container-fluid center-block" style="clear:both ; margin-top: 50px ; ">
    <div style="margin-top:50px; text-align: center; margin-left: 300px;" class="center-block ">
        <%--<img src="images/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />--%>
        <table>
            <tr>
                <td>
                    <img src="../images/1.png"  height="78" alt="我们的优势" title="我们的优势"/>
                </td>
                <td width="100px" style="font-size: 20px">中国电信

                    官方认证</td>
                <td>
                    <img src="../images/2.png"  height="78" alt="我们的优势" title="我们的优势"/>
                </td>
                <td width="100px" style="font-size: 20px">正品保障

                    正规发票</td>
                <td>
                    <img src="../images/3.png"  height="78" alt="我们的优势" title="我们的优势"/>
                </td>
                <td width="100px" style="font-size: 20px">品牌厂家

                    优势品牌</td>
                <td>
                    <img src="../images/4.png"  height="78" alt="我们的优势" title="我们的优势"/>
                </td>
                <td width="100px" style="font-size: 20px">新品上市

                    同步上市</td>
                <td>
                    <img src="../images/5.png"  height="78" alt="我们的优势" title="我们的优势"/>
                </td>
                <td width="100px" style="font-size: 20px">全场商品

                    无忧退换</td>
                <td>

            </tr>
        </table>
    </div>

    <div style="text-align: center;margin-top: 5px;">
        <ul class="list-inline">
            <li><a href="info.jsp">关于我们</a></li>
            <li><a>联系我们</a></li>
            <li><a>招贤纳士</a></li>
            <li><a>法律声明</a></li>
            <li><a>友情链接</a></li>
            <li><a>支付方式</a></li>
            <li><a>配送方式</a></li>
            <li><a>服务声明</a></li>
            <li><a>广告声明</a></li>
        </ul>
    </div>
    <div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
        Copyright &copy; 2010-2019 电信系统 版权所有
    </div>
</div>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>