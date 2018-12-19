<%--
  Created by IntelliJ IDEA.
  User: guoxiang
  Date: 2018/12/11
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>显示日通话记录</title>
    <script type="text/javascript" src="../js/echarts.min.js"></script>

</head>

<body style="height: 100%; margin: 0; background-color: #F2F2F2">

<style type="text/css">
    h3 {
        font-size: 12px;
        color: #ffffff;
        display: inline
    }
</style>
<br/>
<h4 style="color: black;text-align:center">通话日单查询：${requestScope.name}</h4>
<br/>
<div id="container1" style="height: 80%; width: 50%; margin-right: auto; margin-left: auto;"></div>

<script type="text/javascript">
    var telephone = "${requestScope.telephone}"   //手机号
    var name = "${requestScope.name}"     //手机号name
    var month = "${requestScope.month}" //月份
    var date = "${requestScope.date}"     //1号,2号,3号,xxxxx
    var count = "${requestScope.count}"    //每天的通话次数
    var duration = "${requestScope.duration}"   //每天的通话时长
 /*   var pieData = converterFun(duration.split(","), date.split(","),count.split(","))*/
    calllog();


    function calllog() {
        var dom = document.getElementById("container1");
        var myChart = echarts.init(dom);
        myChart.showLoading();

       var option = {
            title : {
                text: name + month+"月份通话次数与时长"
            },
            tooltip : {
                trigger: 'axis'
            },
            legend: {
                data:['通话次数','通话时长(分钟)']
            },
            toolbox: {
                show : true,
                feature : {
                    dataView : {show: true, readOnly: false},
                    magicType : {show: true, type: ['line', 'bar']},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            xAxis : [
                {
                    type : 'category',
                    data : date.split(",")
                }
            ],
            yAxis : [
                {
                    type : 'value'
                }
            ],
            series : [
                {
                    name:'通话次数',
                    type:'bar',
                    data:count.split(","),
                    markPoint : {
                        data : [
                            {type : 'max', name: '最大值'},
                            {type : 'min', name: '最小值'}
                        ]
                    },
                    markLine : {
                        data : [
                            {type : 'average', name: '平均值'}
                        ]
                    }
                },
                {
                    name:'通话时长(分钟)',
                    type:'bar',
                    data:duration.split(","),
                    markPoint : {
                        data : [
                            {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
                            {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
                        ]
                    },
                    markLine : {
                        data : [
                            {type : 'average', name : '平均值'}
                        ]
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

<form action="/intimacyQuery" method="post">
    手机号码:<input type="text", name="telephone" value="${requestScope.telephone}">

    <%-->加入注册功能 ajax异步判断（telephone可能已经被注册，请直接登录）<--%>
    <%-->登录时可能ajax提示未被注册，请注册<--%>
    <input type="submit" value="提交">
</form>

</body>
</html>
