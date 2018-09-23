<%--
  Created by IntelliJ IDEA.
  User: 彭东宇
  Date: 2018/7/16
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/canvas.css">

    <meta charset="UTF-8">
    <title>canvas-滤镜</title>
    <style>
        canvas{
            border: 1px solid black;
        }
    </style>
</head>
<body>

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="homee.jsp" class="navbar-brand">返回主页</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="canvas.html">编辑图片</a></li>

            </ul>
        </div>

    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 col-md-offset-4" id="col1">
            <div class="input">
                <button class="buttons center-block" id="inputBtn">
                    <span class="glyphicon glyphicon-open" id="inputIcon"></span>上传你的图片

                    <input type="file" name="image" id="fileInput" class="center-block">
                </button>
            </div>
        </div>
    </div>



    <div class="row">
        <div class="col-md-2 text-center btn-group-vertical">
            <div id="leftBtns">
                <button class="filterBtns buttons" id="origin">原图</button>
                <button class="filterBtns buttons" id="gray">灰度化</button>
                <button class="filterBtns buttons" id="vFilp">上下翻转</button>
                <button class="filterBtns buttons" id="hFilp">左右翻转</button>
                <button class="filterBtns buttons" id="desaturate">降低饱和度</button>
                <button class="filterBtns buttons" id="stackBlur">毛玻璃</button>
                <button class="filterBtns buttons" id="hBoxBlur">横向模糊</button>
                <button class="filterBtns buttons" id="vBoxBlur">纵向模糊</button>
                <button class="filterBtns buttons" id="gaussianBlur">高斯模糊</button>
            </div>


        </div>
        <div class="col-md-8 text-center" id="col2">
            <div id="canvas">
                <canvas id="oldCanvas" height="700px" width="700px">
                </canvas>
            </div>
        </div>
        <div class="col-md-2 text-center">
            <div id="rightBtns">
                <button class="filterBtns buttons" id="dither">抖动</button>
                <button class="filterBtns buttons" id="edge">edge</button>
                <button class="filterBtns buttons" id="emboss">浮雕</button>
                <button class="filterBtns buttons" id="enrich">enrich</button>
                <button class="filterBtns buttons" id="oil">油画</button>
                <button class="filterBtns buttons" id="opacity">半透明</button>
                <button class="filterBtns buttons" id="posterize">多色调</button>
                <button class="filterBtns buttons" id="sharpen">锐利</button>
                <button class="filterBtns buttons" id="solarize">过曝</button>
            </div>
        </div>
    </div>




</div>

<div class="col-md-4 col-md-offset-4">
    <div>
        <button class="buttons center-block" id="save">
            <span class="glyphicon glyphicon-download-alt" id="saveIcon"></span>下载到本地
        </button>
    </div>
</div>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/imagefilters.js"></script>
<script type="text/javascript" src="js/canvas-to-image.min.js"></script>
<script src="js/filter.js"></script>
<script src="js/canvas.js"></script>
<script>
</script>
</body>
</html>