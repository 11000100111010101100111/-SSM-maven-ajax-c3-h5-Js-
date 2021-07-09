<%--
  Created by IntelliJ IDEA.
  User: 波罗的海
  Date: 2021/6/24
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <META http-equiv=Content-Type content="text/html;charset=utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <!--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
    <meta name="referrer" content="never">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/managerCss/unifiStyle.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/managerCss/sheet.css">
    <title>列车管理</title>
</head>
<style>

    .formpage{
        position: relative;
        width: 400px;
        height: 500px;
        background-color: #fff;
        left: 50%;
        transform: translateX(-50%);
        margin: 10px;
    }
    .formpage input{
        width: 350px;
        height: 40px;
        font-size: 18px;
        margin:25px;
    }
    .local{
        float: outside;
        display: inline;
        width: 400px;
        height: 400px;
        visibility: hidden;
        /*transition: all 0.5s;*/
        background-color: #fff;
        position: absolute;
        transform: translateX(-50%) translateY(-50%);
        top: 50%;
        left: 50%;
        border-radius: 10px;
        box-shadow:0 0 12px #6778dc;
    }
    .local .close{
        display: block;
        float: right;
        width: 20px;
        height: 20px;
        border-radius: 10px;
        background-color: red;
    }
    #context1{
        background-color: #fff;
    }
</style>
</head>
<body>
<div class="navigation">
    <ul>/
        <li id="logo">
            <img src="https://img-home.csdnimg.cn/images/20210616034854.gif">
        </li>
        <li><a href="${pageContext.request.contextPath}">首页</a></li>
        <li><a id="nav-buts1" href="${pageContext.request.contextPath}/manager/raliway" onclick="getUser()">列车管控</a></li>
        <li><a id="nav-buts2" href="${pageContext.request.contextPath}/manager/station" onclick="getUser()">铁路运维</a></li>
        <li><a id="nav-buts3" href="${pageContext.request.contextPath}/manager/client" onclick="getUser()">客户管理</a></li>
        <li><a id="nav-buts4" href="${pageContext.request.contextPath}/manager/personnel" onclick="getUser()">人事</a></li>
        <li style="float:right">
            <div id="userImg">
                <!--                            http://localhost:8888/manager.yake.com/manager/home/mine-->
                <img src="https://avatar.csdnimg.cn/6/3/7/0_qq_44140450_1620910175.jpg" id="mine">
            </div>
        </li>
    </ul>

</div>
<ul class="nav">
    <li class="J-liecheguabli">
        <h3 class="nav-header head-nav">列车管理</h3>
        <div class="nav-body">
            <ul class="nav-body-item">
                <li>
                    <a href="#" id="but1" class="buts">列车列表</a>
                </li>
                <li>
                    <a href="#"  id="but2"  class="buts">更改信息</a>
                </li>
                <li>
                    <a href="#" id="but3"  class="buts">更多信息</a>
                </li>
            </ul>
        </div>
    </li>

    <li class="J-keyunzhan" >
        <h3 class="nav-header head-nav">客运站</h3>
        <div class="nav-body">
            <ul class="nav-body-item">
                <li>
                    <a href="#" id="but4" class="buts">车站地图</a>
                </li>
                <li>
                    <a href="#" id="but5" class="buts">新增站台</a>
                </li>
                <li>
                    <a href="#"  class="more">更多信息</a>
                </li>
            </ul>
        </div>
    </li>

    <li class="J-lichediaodu">
        <h3 class="nav-header head-nav">列车调度</h3>
        <div class="nav-body">
            <ul class="nav-body-item">
                <li>
                    <a href="#" id="but6" class="buts">列车首发</a>
                </li>
                <li>
                    <a href="#" id="but7" class="buts">停运/启用</a>
                </li>
                <li>
                    <a href="#" class="more">更多信息</a>
                </li>
            </ul>
        </div>
    </li>
</ul>

<div class="page">
    <div class="nothing"></div>
    <div class="nothing2"></div>
    <div class="context" id="context1" >
        <!--                <div id="trainMag">-->
        <h2>列车运营表</h2>
        <div class="province">
            <ul>
                <li>
                    <h4>省&nbsp;&nbsp;&nbsp;&nbsp;份:</h4>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="c0">
                        <label for="c0">北京</label>
                    </div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="c1">
                        <label for="c1">上海</label>
                    </div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="c2">
                        <label for="c2">天津</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="c3">
                        <label for="c3">重庆</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="c4">
                        <label for="c4">江西</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="c5">
                        <label for="c5">其他</label>
                    </div>
                </li>
            </ul>
        </div>
        <div class="city">
            <ul>
                <li>
                    <h4>城&nbsp;&nbsp;&nbsp;&nbsp;市:</h4>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b0">
                        <label for="b0">北京</label>
                    </div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b1">
                        <label for="b1">上海</label>
                    </div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b2">
                        <label for="b2">天津</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b3">
                        <label for="b3">重庆</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b4">
                        <label for="b4">深圳</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b5">
                        <label for="b5">南昌</label>
                    </div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b6">
                        <label for="b6">吉安</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b7">
                        <label for="b7">武汉</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="b8">
                        <label for="b8">其他</label>
                    </div>
                </li>
            </ul>
        </div>
        <div class="traintype">
            <ul>
                <li>
                    <h4>类&nbsp;&nbsp;&nbsp;&nbsp;型:</h4>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="a1">
                        <label for="a1">G</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="a2">
                        <label for="a2">D</label>
                    </div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="a3">
                        <label for="a3">T</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="a4">
                        <label for="a4">K</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="a5">
                        <label for="a5">Z</label>
                    </div>
                </li>
                <li >
                    <div class="checkbox">
                        <input type="checkbox" class="pro" id="a6">
                        <label for="a6">L</label>
                    </div>
                </li>
                <div >
                    <input type="button" id="d1" value="全国" class="btn-find">
                    <input type="button" id="d2" value="查询" class="btn-find">
                </div>
            </ul>
        </div>
        <div class="tab">
            <table border="1">
                <tr>
                    <th>车次</th>
                    <th>发车时间</th>
                    <th>始发站</th>
                    <th>终点站</th>
                    <th>到站时间</th>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
                <tr>
                    <td>G33225次</td>
                    <td>2020-06-12 12:30:26</td>
                    <td>北京西</td>
                    <td>上海南</td>
                    <td>2020-06-12 12:30:26</td>
                </tr>
            </table>
        </div>
        <div class="show">
            <div class="h-h">
                <h5>正在运营:</h5>
                <div id="green-rect"></div>
            </div>
            <div class="h-h">
                <h5>已停运:</h5>
                <div id="hui-rect"></div>
            </div>
            <div class="h-h">
                <h5>未发车:</h5>
                <div id="red-rect"></div>
            </div>
        </div>
    </div>

    <div class="context" id="context2">
        <h2>更改信息</h2>
    </div>
    <div class="context" id="context3">
        <h2>车站地图</h2>
    </div>
    <!--            增加客运站-->
    <div class="context" id="context4">
        <h2>增加客运站</h2>
        <div class="formpage">
            <form action="#" method="post">
                <input type="text" required autocomplete="off" placeholder="为客运站设置一个编号">
                <input type="text" required autocomplete="off" placeholder="输入客运站名称">
                <input type="text" required id="slocal" autocomplete="off" placeholder="选择客运站的位置信息" onblur="findpic()">
                <select id="p">
                    <option value ="volvo">江西省</option>
                    <option value ="saab">江西省</option>
                    <option value="opel">江西省</option>
                    <option value="audi">江西省</option>
                </select>
                <select id="c">
                    <option value ="volvo">吉安市</option>
                    <option value ="saab">吉安市</option>
                    <option value="opel">吉安市</option>
                    <option value="audi">吉安市</option>
                </select>
                <input type="text" autocomplete="off" placeholder="输入完整地址信息（可选）">
                <input type="submit" value="提  交">
            </form>
        </div>
        <div class="local provinces">
            <div class="close"></div>
            <ul>
                <li>江西省</li>
                <li>江西省</li>
                <li>江西省</li>
            </ul>
        </div>
        <div class="local citys" >
            <div class="close"></div>
            <ul>
                <li>吉安市</li>
                <li>吉安市</li>
                <li>吉安市</li>
            </ul>
        </div>
    </div>
    <div class="context" id="context5">
        <h2>列车首发</h2>
    </div>
    <div class="context" id="context6">
        <h2>停运/启用</h2>
    </div>
</div>
<div class="msg"></div>


<script src="${pageContext.request.contextPath}/js/importJq/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/managerJs/all.js"></script>
<!--    <script src="http://localhost:8080/manager.com/js/managerJs/sheet.js"></script>-->
<script>
    // var arrpri=["江西省","浙江省","江苏省"];
    var arrpri=${provinces};
    alert(arrpri.length);
    var command=document.querySelector("#p");
    var list = document.querySelectorAll("#p option");
    for (var i = 0; i < list.length; i++) {
        list[i].remove();
    }
    for(var str=0;str<arrpri.length;str++){
        command.innerHTML += "<option>"+arrpri[str]+"</option>";
    }
    function hidden(str) {
        document.querySelector("#context1").style.visibility="hidden";
        document.querySelector("#context1").style.display="none";
        document.querySelector("#context2").style.visibility="hidden";
        document.querySelector("#context2").style.display="none";
        document.querySelector("#context3").style.visibility="hidden";
        document.querySelector("#context3").style.display="none";
        document.querySelector("#context4").style.visibility="hidden";
        document.querySelector("#context4").style.display="none";
        document.querySelector("#context5").style.visibility="hidden";
        document.querySelector("#context5").style.display="none";
        document.querySelector("#context6").style.visibility="hidden";
        document.querySelector("#context6").style.display="none";
        document.querySelector(str).style.visibility="visible";
        document.querySelector(str).style.display="block";
    }
    document.querySelector("#but1").onclick = function () {
        hidden("#context1");
    };
    document.querySelector("#but2").onclick = function () {
        hidden("#context2");
    };
    document.querySelector("#but4").onclick = function () {
        findpic();
        hidden("#context3");
    };
    document.querySelector("#but5").onclick = function () {
        hidden("#context4");
    };
    document.querySelector("#but6").onclick = function () {
        hidden("#context5");
    };
    document.querySelector("#but7").onclick = function () {
        hidden("#context6");
    };

    var data= {str:"0"};
    function findpic() {
        // document.querySelector("#context4 .provinces").style.visibility="visible";
        $.ajax({
            timeout : 20000,
            type : "GET",
            url : "${pageContext.request.contextPath}/ajax/findlocal",
            data:data,
            dataType:"json",
            success:function(data){
                alert(data);
            },
            error:function() {
                alert("404");
            }
        });
    }
    // findpic();
    // document.querySelector("#context4 .provinces .close").onclick =function (){
    //     document.querySelector("#context4 .provinces").style.visibility="hidden";
    // }
</script>
</body>
</html>
