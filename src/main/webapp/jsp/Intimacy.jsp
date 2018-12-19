<%--
  Created by IntelliJ IDEA.
  User: guoxiang
  Date: 2018/12/12
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户亲密度</title>
    <script type="text/javascript" src="../js/echarts.min.js"></script>

</head>

<body style="height: 100%; margin: 0; background-color: #F2F2F2">

<%--<h2>${requestScope.name}</h2>
<h2>${requestScope.intimacy_rank}</h2>--%>




<style type="text/css">
    h3 {
        font-size: 12px;
        color: #ffffff;
        display: inline
    }
</style>

<%--：${requestScope.name}--%>
<br/>
<h2 style="color: black;text-align:center">${requestScope.namemyself}好友亲密度查询</h2>
<br/>

<div id="container1" style="height: 80%; width: 50%; margin-right: auto; margin-left: auto;"></div>

<script type="text/javascript">

    var name = "${requestScope.name}"     //手机号name
    var intimacy_rank = "${requestScope.intimacy_rank}"
    var pieData = converterFun(intimacy_rank.split(","),name.split(","))

    calllog();

    function converterFun(intim, name) {
        var array = [];
        for (var i = 0; i < intim.length; i++) {
            var map = {};
            map['value'] = parseFloat(intim[i]);
            map['name'] = name[i];
            array.push(map);
        }
        return array;
    }

    function calllog() {
        var dom = document.getElementById("container1");
        var myChart = echarts.init(dom);
        myChart.showLoading();

        var option = {
            title : {
                text: '',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: name.split(",")
            },
            series : [
                {
                    name: '联系人',
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                   /* 需要用到map集合*/
                    data: pieData,
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]

        };
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
        myChart.hideLoading()
    }
</script>


</body>
</html>
