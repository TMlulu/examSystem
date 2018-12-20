<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/12/19
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编程题</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>通话日单查询 ${sessionScope.basedata}</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script type="text/javascript" src="../js/echarts.min.js"></script>


    <script type="text/javascript">
        var stunumTitle = [];
        var score = [];

        <c:forEach items="${sessionScope.programBaseData}" var="item" varStatus="status" >
            <%--alert("${item}")--%>
            stunumTitle.push("${item.stunum}_${item.titleid}")
            score.push("${item.score}")
        </c:forEach>



        var stunum1 = []
        var getscore = []
        var ss = []

        <c:forEach items="${sessionScope.programstagesurebase}" var="item" varStatus="status" >
        <%--alert("${item}")--%>
        stunum1.push("${item.stunum}")
        getscore.push("${item.getscore}")
        ss.push("{value:${item.getscore},name:'${item.stunum}'}")
        </c:forEach>
        /*alert(ss)*/


        //programstagediffsurebase
        var ss1 = [];
        var stunum2 = [];
        var title_diff = [];
        var getscore2 = [];
        <c:forEach items="${sessionScope.programstagediffsurebase}" var="item" varStatus="status" >
        <%--alert("${item}")--%>
            stunum2.push("${item.stunum}")
            title_diff.push("${item.title_diff}")
            getscore2.push("${item.getscore}")
            var map = {}
            map['value']="${item.getscore}"
            map['name']="${item.stunum}_${item.title_diff}"
            ss1.push(map)
        </c:forEach>

        //programstagediffsurerate

        var stunum3 = [];
        var surerate1 = [];
        var title_diff2 = [];
        var stu_diff = [];
        var ss2 = []
        <c:forEach items="${sessionScope.programstagediffsurerate}" var="item" varStatus="status" >
        <%--alert("${item}")--%>
            stunum3.push("${item.stunum}");
            surerate1.push("${item.surerate}");
            title_diff2.push("${item.title_diff}");
            var  map = {}
            map['value']="${item.surerate*100}"
            map['name']="${item.stunum}"
            stu_diff.push("${item.stunum}_${item.title_diff}")
            ss2.push(map);
        </c:forEach>
        // alert(ss2)
        // alert(title_diff2)

        //第四个

        var ss4 = []
        var surerate4 = []
        var stunum4 = []
        <c:forEach items="${sessionScope.programstagesurerate}" var="item" varStatus="status" >
        <%--alert("${item}")--%>
        stunum4.push("${item.stunum}");
        surerate4.push("${item.surerate}");
        var  map = {}
        map['value']="${item.surerate*100}"
        map['name']="${item.stunum}"
        ss4.push(map)
        </c:forEach>

    </script>






</head>
<body>

    <%--<div>--%>
        <%--<button onclick="program"> </button>--%>
        <%--<button onclick="program"> </button>--%>
        <%--<button onclick="program"> </button>--%>
        <%--<button onclick="program"> </button>--%>
        <%--<button onclick="program"> </button>--%>
    <%--</div>--%>

    <div style="align-content: center;margin-left: 300px" class="center-block">

        <table class="center-block">
            <tr class="center-block">
                <td>
                    <button  style="align-content: center" type="button" class="btn btn-primary"
                             data-toggle="button" onclick="program()"> 编程答题记录详请
                    </button>
                </td>
                <td width="50px" height="50px"> </td>
                <td>
                    <button  style="align-content: center" type="button" class="btn btn-primary"
                             data-toggle="button" onclick="program1()"> 个人单次各阶段总正确率基础分析
                    </button>
                </td>
                <td width="50px" height="50px"> </td>

                <td>
                    <button  style="align-content: center" type="button" class="btn btn-primary"
                             data-toggle="button" onclick="program2()"> 个人单次考试各阶段难易度正确率基础分析
                    </button>
                </td>

                <td width="50px" height="50px"> </td>

                <td>
                    <button  style="align-content: center" type="button" class="btn btn-primary"
                             data-toggle="button" onclick="program3()"> 个人单次考试各阶段难易度正确率表
                    </button>
                </td>

                <td width="50px" height="50px"> </td>

                <td>
                    <button  style="align-content: center" type="button" class="btn btn-primary"
                             data-toggle="button" onclick="program5()"> 个人单次考试各阶段总正确率表
                    </button>
                </td>

            </tr>
        </table>
    </div>


    <%--<div class="btn-group btn-group-justified" role="group" aria-label="...">--%>
        <%--<div class="btn-group" role="group" >--%>
            <%--<button onclick="program()" type="button" class="btn btn-default" style="background-color: #17a2b8;">编程答题记录详</button>--%>
        <%--</div>--%>




        <%--<div onclick="program1()" class="btn-group" role="group" >--%>
            <%--<button type="button" class="btn btn-default">个人单次各阶段总正确率基础分析</button>--%>
        <%--</div>--%>
        <%--<div class="btn-group" role="group">--%>
            <%--<button type="button" class="btn btn-default" onclick="program2()">个人单次考试各阶段难易度正确率基础分析</button>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="btn-group btn-group-justified" role="group" aria-label="...">--%>
        <%--&lt;%&ndash;<div class="btn-group" role="group">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<button onclick="pro" type="button" class="btn btn-default">编程答题记录详</button>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--<div class="btn-group" role="group">--%>
            <%--<button type="button" class="btn btn-default" onclick="program3()">个人单次考试各阶段难易度正确率表</button>--%>
        <%--</div>--%>
        <%--<div class="btn-group" role="group" >--%>
            <%--<button type="button" class="btn btn-default" onclick="program5()">个人单次考试各阶段总正确率表</button>--%>
        <%--</div>--%>
    <%--</div>--%>






    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div class="center-block" id="main" style="width: 1800px;height:800px;
     margin-top: 30px ;margin-left: 5px;border: 4px solid  #9fcdff ; margin-left: 50px"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '每个人每个阶段每次考试的编程题目的得分路'
            },
            toolbox: {
                feature: {
                    dataView: {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar']},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            legend: {
                data:['成绩分析']
            },
            xAxis: {
                data: stunumTitle,
                name: '学号_题目'
            },
            yAxis: {
                name: '分数'
            },
            series: [{
                name: '成绩分析',
                type: 'bar',
                data: score
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);

        function program(){
            myChart.clear();
            myChart= echarts.init(document.getElementById('main'),'light');
            myChart.setOption(option);
        }

    </script>








<%--第二个--%>




    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <%--<div id="main1" style="width: 1600px;height:700px; margin-bottom: 0px ;margin-left: 5px"></div>--%>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));


        // app.title = '坐标轴刻度与标签对齐';

        option1 = {
            title: {
                text: '每个人每阶段每次考试的编程题的得分'
            },
            color: ['#3398DB'],
            textStyle: {
                color: 'rgba(255, 255, 255,1)'
            },

            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis : [
                {
                    type : 'category',
                    name : '学号',
                    data : stunum1,
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis : [
                {
                    type : 'value',
                    name : '得分'
                }
            ],
            series : [
                {
                    name:'分数',
                    type:'bar',
                    barWidth: '60%',
                    data:getscore
                }
            ],
            backgroundColor: '#2c343c'
        };

        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);


        function program1(){
            myChart.clear();
            myChart= echarts.init(document.getElementById('main'),'light');
            myChart.setOption(option1);
        }

    </script>



    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->

    <%--<script type="text/javascript">--%>
        <%--// 基于准备好的dom，初始化echarts实例--%>
        <%--var myChart = echarts.init(document.getElementById('main'));--%>
        <%--// 指定图表的配置项和数据--%>
        <%--var colors = ['#5793f3', '#675bba'];--%>

        <%--option2 = {--%>
            <%--color: colors,--%>

            <%--tooltip: {--%>
                <%--trigger: 'axis',--%>
                <%--axisPointer: {--%>
                    <%--type: 'cross'--%>
                <%--}--%>
            <%--},--%>
            <%--grid: {--%>
                <%--right: '20%'--%>
            <%--},--%>
            <%--toolbox: {--%>
                <%--feature: {--%>
                    <%--dataView: {show: true, readOnly: false},--%>

                    <%--saveAsImage: {show: true}--%>
                <%--}--%>
            <%--},--%>
            <%--legend: {--%>
                <%--data:['分数','难度']--%>
            <%--},--%>
            <%--xAxis: [--%>
                <%--{--%>
                    <%--type: 'category',--%>
                    <%--axisTick: {--%>
                        <%--alignWithLabel: true--%>
                    <%--},--%>
                    <%--data: stunum2--%>
                <%--}--%>
            <%--],--%>
            <%--yAxis: [--%>
                <%--{--%>
                    <%--type: 'value',--%>
                    <%--name: '分数',--%>
                    <%--min: 0,--%>
                    <%--max: 250,--%>
                    <%--position: 'right',--%>
                    <%--axisLine: {--%>
                        <%--lineStyle: {--%>
                            <%--color: colors[0]--%>
                        <%--}--%>
                    <%--},--%>
                    <%--axisLabel: {--%>
                        <%--formatter: '{value}'--%>
                    <%--}--%>
                <%--},--%>
                <%--{--%>
                    <%--type: 'category',--%>
                    <%--name: '难度',--%>
                    <%--min: 0,--%>
                    <%--max: 250,--%>
                    <%--position: 'right',--%>
                    <%--offset: 80,--%>
                    <%--axisLine: {--%>
                        <%--lineStyle: {--%>
                            <%--color: colors[1]--%>
                        <%--}--%>
                    <%--}--%>
                <%--}--%>
            <%--],--%>
            <%--series: [--%>
                <%--{--%>
                    <%--name:'分数',--%>
                    <%--type:'bar',--%>
                    <%--data:getscore2--%>
                <%--},--%>

                <%--{--%>
                    <%--name:'难度',--%>
                    <%--type:'line',--%>
                    <%--yAxisIndex: 2,--%>
                    <%--data:title_diff--%>
                <%--}--%>
            <%--]--%>
        <%--};--%>

        <%--// 使用刚指定的配置项和数据显示图表。--%>
        <%--//myChart.setOption(option);--%>

        <%--function program2(){--%>
            <%--myChart.clear();--%>
            <%--myChart= echarts.init(document.getElementById('main'),'light');--%>
            <%--myChart.setOption(option2);--%>
        <%--}--%>

    <%--</script>--%>





    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);


        option2 = {
            title : {
                text: '个人单次考试各阶段难易度正确率基础分析',
                subtext: '千峰教育',
                x:'center'
            }
            ,
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: stunum2
            },
            series : [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:ss1,
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


        function program2(){
            //alert("======");
            myChart.clear();
            myChart= echarts.init(document.getElementById('main'),'light');
            myChart.setOption(option2);
        }


    </script>




        <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        option3 = {
            title: {
                text: '每个人每阶段每次考试的编程题的得分'
            },
            color: ['#3398DB'],
            textStyle: {
                color: 'rgba(255, 255, 255,1)'
            },

            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis : [
                {
                    type : 'category',
                    name : '学号_难易度',
                    data : stu_diff,
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis : [
                {
                    type : 'value',
                    name : '正确率'
                }
            ],
            series : [
                {
                    name:'正确率',
                    type:'bar',
                    barWidth: '60%',
                    data:surerate1
                }
            ],
            backgroundColor: '#2c343c'
        };


        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);

        function program3(){
            myChart.clear();
            myChart= echarts.init(document.getElementById('main'),'light');
            myChart.setOption(option3);
        }

    </script>






    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);


        option4= {
            title : {
                text: '个人单次考试各阶段难易度正确率基础分析',
                subtext: '千峰教育',
                x:'center'
            }
            ,
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: stunum4
            },
            series : [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:ss4,
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


        function program4(){
            //alert("======");
            myChart.clear();
            myChart= echarts.init(document.getElementById('main'),'light');
            myChart.setOption(option4);
        }


    </script>




    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);


        option5 = {
            title : {
                text: '个人单次考试各阶段总正确率表',
                subtext: '千峰教育',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                x : 'center',
                y : 'bottom',
                data:stunum4
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
                        show: true,
                        type: ['pie', 'funnel']
                    },
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            series : [
                {
                    name:'面积模式',
                    type:'pie',
                    radius : [50, 300],
                    center : ['50%', '45%'],
                    roseType : 'area',
                    data:ss4
                }
            ]
        };



        function program5(){
            //alert("======");
            myChart.clear();
            myChart= echarts.init(document.getElementById('main'),'light');
            myChart.setOption(option5);
        }


    </script>











</body>
</html>
