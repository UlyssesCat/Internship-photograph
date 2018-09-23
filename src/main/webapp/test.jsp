<%--
Created by IntelliJ IDEA.
User: 彭东宇
Date: 2018/7/14
Time: 14:17
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>personal center</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">



    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lora|Merriweather:300,400" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
    <link href="css/hideUploadBtn.css" rel="stylesheet" type="text/css">




    <%
        String lUserName = (String) session.getAttribute("lUserName");
        String flag = (String) session.getAttribute("flag");
        String [] paths = (String [])session.getAttribute("paths");
        String [] paths0 = (String [])session.getAttribute("paths0");
        String [] paths1 = (String [])session.getAttribute("paths1");
        String [] paths2 = (String [])session.getAttribute("paths2");
        String [] paths3 = (String [])session.getAttribute("paths3");
        String [] paths4 = (String [])session.getAttribute("paths4");
        String [] paths5 = (String [])session.getAttribute("paths5");
        int num = paths.length;
        int pages;
        if(num%8==0)
        {
            pages = num / 8;
        }
        else {
            pages = num / 8 + 1;
        }
        int m = num%8;
        if(m==0) m=8;

        int num0 = paths0.length;
        int pages0;
        if(num0%8==0)
        {
            pages0 = num0 / 8;
        }
        else {
            pages0 = num0 / 8 + 1;
        }
        int m0 = num0%8;
        if(m0==0) m0=8;

        int num1 = paths1.length;
        int pages1;
        if(num1%8==0)
        {
            pages1 = num1 / 8;
        }
        else {
            pages1 = num1 / 8 + 1;
        }
        int m1 = num1%8;
        if(m1==0) m1=8;

        int num2 = paths2.length;
        int pages2;
        if(num2%8==0)
        {
            pages2 = num2 / 8;
        }
        else {
            pages2 = num2 / 8 + 1;
        }
        int m2 = num2%8;
        if(m2==0) m2=8;

        int num3 = paths3.length;
        int pages3;
        if(num3%8==0)
        {
            pages3 = num3 / 8;
        }
        else {
            pages3 = num3 / 8 + 1;
        }
        int m3 = num3%8;
        if(m3==0) m3=8;

        int num4 = paths4.length;
        int pages4;
        if(num4%8==0)
        {
            pages4 = num4 / 8;
        }
        else {
            pages4 = num4 / 8 + 1;
        }
        int m4 = num4%8;
        if(m4==0) m4=8;

        int num5 = paths5.length;
        int pages5;
        if(num5%8==0)
        {
            pages5 = num5 / 8;
        }
        else {
            pages5 = num5 / 8 + 1;
        }
        int m5 = num5%8;
        if(m5==0) m5=8;

        //out.println("当前用户名"+lUserName);
        System.out.println("照片数："+num+" "+ num0 + " " + num1 + " " + num2 + " " + num3 + " " + num4 + " " + num5);
        System.out.println("页数："+pages+" "+ pages0 + " " + pages1 + " " + pages2 + " " + pages3 + " " + pages4 + " " + pages5);
        System.out.println("余数："+m+" "+ m0 + " " + m1 + " " + m2 + " " + m3 + " " + m4 + " " + m5);



    %>
    <%!
        //m为余数,paths为图片路径,pages为页数,flag为是否有照片的判断条件,out为输出对象,divName为div的id，用于实现跳转
        public void showPic(int m, String[] paths,int pages, String flag,JspWriter out) throws Exception
        {
            int count=0;


            if(flag=="0")
            {
                out.println("<h2 class=\"center-text\">no photos</h2>");
            }
            else {
                if (pages == 1) {
                    out.println("<div class=\"portfolio-page\" id=\"page-1\">\n");
                    for (int g = 0; g < m; g++) {
                        out.println(
                                "               <div class=\"portfolio-group\">\n" +
                                        "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                        "                        <img src=" + paths[count++] + " >\n" +
                                        "                        <div class=\"detail\">\n" +
                                        "                            <h3>Bustling City</h3>\n" +
                                        "                            <p>Duis ac laoreet mi. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque.</p>\n" +
                                        "                            <span class=\"btn\">View</span>\n" +
                                        "                        </div>\n" +
                                        "                    </a>\n" +
                                        "                </div>\n"
                        );
                    }
                    out.println("</div>");
                }
                if (pages != 1) {
                    for (int i = 0; i < pages; i++) {
                        if (i == 0) {
                            out.println("<div class=\"portfolio-page\" id=\"page-1\">\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Wavy Road</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Rocky Mountain</h3>\n" +
                                    "                            <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Clear River</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Rounded Flower</h3>\n" +
                                    "                            <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Bustling City</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                      <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Retired Leaves</h3>\n" +
                                    "                            <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\"href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Clean Design</h3>\n" +
                                    "                            <p>Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                       <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Rock Solid</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "            </div>");
                        } else if (i == (pages - 1)) {
                            out.println("<div class=\"portfolio-page\" id=\"page-" + (i + 1) + "\" style=\"display:none;\">\n");
                            for (int g = 0; g < m; g++) {
                                out.println(
                                        "               <div class=\"portfolio-group\">\n" +
                                                "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                                "                        <img src=" + paths[count++] + " >\n" +
                                                "                        <div class=\"detail\">\n" +
                                                "                            <h3>Bustling City</h3>\n" +
                                                "                            <p>Duis ac laoreet mi. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque.</p>\n" +
                                                "                            <span class=\"btn\">View</span>\n" +
                                                "                        </div>\n" +
                                                "                    </a>\n" +
                                                "                </div>\n"
                                );
                            }
                            out.println("</div>");
                        } else {
                            out.println("  <div class=\"portfolio-page\" id=\"page-" + (i + 1) + "\" style=\"display:none;\">\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                       <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Wavy Road</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Sed in molestie lectus. Curabitur non est neque.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                      <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Rocky Mountain</h3>\n" +
                                    "                            <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet. Duis ac laoreet mi.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                      <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Clear River</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                       <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Rounded Flower</h3>\n" +
                                    "                            <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                   <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Bustling City</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                       <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Retired Leaves</h3>\n" +
                                    "                            <p>Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                  <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Clean Design</h3>\n" +
                                    "                            <p>Vestibulum tincidunt libero urna, ut dignissim purus accumsan nec. Sed in molestie lectus. Curabitur non est neque. Maecenas id luctus ligula.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "                <div class=\"portfolio-group\">\n" +
                                    "                    <a class=\"portfolio-item\" href=" + paths[count] + ">\n" +
                                    "                        <img src=" + paths[count++] + " >\n" +
                                    "                        <div class=\"detail\">\n" +
                                    "                            <h3>Rock Solid</h3>\n" +
                                    "                            <p>Duis ac laoreet mi. Maecenas non lorem sed elit molestie tincidunt. Maecenas id luctus ligula. Mauris dignissim ante eu arcu ultricies, at sodales orci aliquet.</p>\n" +
                                    "                            <span class=\"btn\">View</span>\n" +
                                    "                        </div>\n" +
                                    "                    </a>\n" +
                                    "                </div>\n" +
                                    "            </div>");
                        }
                    }
                }
            }







            out.println("<div class=\"pagination\"><ul class=\"nav\"><li class=\"active\">1</li>");

            for(int k=1; k<pages; )
            {
                out.println("<li>"+(++k)+"</li>");
            }


            out.println("</ul></div>");
        }


    %>
</head>
<body>
<!-- Navigation section  -->

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="home.jsp" class="navbar-brand">
                <img src="images/logo.jpg" height="53" width="150"/>  </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="canvas.jsp">Edit</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a class="active" href="#"><%=lUserName%>个人中心</a></li>
            </ul>
        </div>

    </div>
</div>

<div class="main-container">
    <nav class="main-nav">
        <div id="logo" class="left"><a href="#">hello,<%=lUserName%></a></div>
        <ul class="nav right center-text">
            <li class="btn active">Home</li>
            <li class="btn"><a href="gallery.jsp">Gallery</a></li>
            <li class="btn"><a href="canvas.jsp">Edit</a></li>
            <li class="btn" ><a>Upload</a><button id="upload">upload</button></li>
        </ul>
    </nav>
    <div class="content-container">
        <header>
            <h1 class="center-text">Image Gallery</h1>
        </header>
    </div>
    <div id="tagDiv">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#festival" data-toggle="tab">festival</a></li>
            <li><a href="#scene" data-toggle="tab">scene</a></li>
            <li><a href="#design" data-toggle="tab">design</a></li>
            <li><a href="#beauty" data-toggle="tab">beauty</a></li>
            <li><a href="#anime" data-toggle="tab">anime</a></li>
            <li><a href="#food" data-toggle="tab">food</a></li>
        </ul>
    </div>
    <div class="content-container">
        <div id="portfolio-content" class="center-text">
            <div class="tab-content">
                <div class="tab-pane fade in active" id="festival">
                    <%
                        showPic(m0,paths0,pages0,flag,out);
                    %>
                </div>

                <div class="tab-pane fade" id="scene">
                    <%
                        showPic(m1,paths1,pages1,flag,out);
                    %>
                </div>

                <div class="tab-pane fade" id="design">
                    <%

                        showPic(m2,paths2,pages2,flag,out);
                    %>
                </div>

                <div class="tab-pane fade" id="beauty">
                    <%

                        showPic(m3,paths3,pages3,flag,out);
                    %>
                </div>

                <div class="tab-pane fade" id="anime">
                    <%

                        showPic(m4,paths4,pages4,flag,out);
                    %>
                </div>

                <div class="tab-pane fade" id="food">
                    <%
                        showPic(m5,paths5,pages5,flag,out);
                    %>
                </div>
            </div>
        </div>
    </div>	<!-- /.content-container -->



</div>
<!-- SCRIPTS -->

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/modernizr.2.5.3.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/templatemo_script.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">


    $(document).ready(function(){
        $("#upload").click(function(){upload()});
    })


    function upload() {
        console.log("正在上传");
        console.log($(".active").children("a:first").attr("href"));
        $.ajax({
            type:"post",
            url:"index.jsp",
            data:"btnId="+$(".active").children("a:first").attr("href"),
            success:function(data){
                if(data){
                    window.location.href("index.jsp");
                }
            },
            error:function(){

            }
        })

    }


    $(function () {
        $('.pagination li').click(changePage);
        $('.portfolio-item').magnificPopup({
            type: 'image',
            gallery:{
                enabled:true
            }
        });
    });


</script>
</body>
</html>
