<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% //从会话中获取登录信息
    String lUserName = (String)session.getAttribute("lUserName");%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
    <script type="text/javascript">
        //添加一个文件输入框，通过在</form>这个标签添加html来实现
        function addPic()
        {
            var obj = document.getElementById("form");
            obj.insertAdjacentHTML("beforeend","<input type=file name=uploadFile />");
            //document.getElementById('form').insertAdjacentHTML('beforeEnd',' <input type=file name=uploadFile />')
        }
        function go()
        {
            window.location.href="wall.jsp";
        }
    </script>
    <style>
        body{
            background-image: url(images/home-bg.jpg);
        }



    </style>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/upload.css">
    <link href="https://fonts.googleapis.com/css?family=Lora|Merriweather:300,400" rel="stylesheet">

</head>
<body>

<!-- PRE LOADER -->


<%
    String btnIdtmp = request.getParameter("btnId");
    System.out.println("现在激活的btn tmp ID为"+btnIdtmp);
    if(btnIdtmp!=null) {
        String btnId = btnIdtmp.substring(1,btnIdtmp.length());
        session.setAttribute("btnId", btnId);
    }

    System.out.println("现在激活的btn ID为"+session.getAttribute("btnId"));

%>


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
                <li class="active"><a href="homee.jsp">Home</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="/ListFile?lUserName=<%=lUserName%>"><%=lUserName%>的个人中心</a></li>
            </ul>
        </div>

    </div>
</div>


<div>

    <div  id="uploadDiv">
        <form id="form" method="post" action="UploadServlet" enctype="multipart/form-data" >
            <div>
                <button class="btns" id="selectBtn"  >选择你的图片
                    <input type="file" id="select" name="uploadFile" multiple="multiple"/>
                </button>
            </div>
            <br><br>
            <div>
                <button class="btns" id="uploadBtn"  >上传
                    <input type="submit" class="center-block" id="upload" value="上传" />
                </button>
            </div>

        </form>
    </div>


    <br><br>

    <form method="post" action="ListFile" >
        <div  style="width:100%;text-align: center;vertical-align: middle;">
            <button class="btns" id="returnBtn"  >返回照片墙
                <input type="submit" id="return" value="照片墙" />
            </button>
        </div>
    </form>
</div>
</body>
</html>
