<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/7/5
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
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

    <title>Gallery</title>
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" href="css/uikit.css" />
    <link rel="stylesheet" href="css/uikit.min.css" />
    <link rel="stylesheet" href="css/slideshow.css" />
    <link rel="stylesheet" href="css/slidenav.css" />
    <link rel="stylesheet" href="css/dotnav.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/magnific-popup-options.js"></script>
    <script src="js/jquery.parallax.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/uikit.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/slideshow.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="dist/skPlayer.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function()
        {
            $(".btn1").click(function(){
                $("#skPlayer").slideToggle();
            });
        });
    </script>
    <style>
        @font-face{
            font-family: 'cute';
            src: url(fonts/新蒂黑板报底字.ttf);
        }


    </style>

</head>
<body>

<!-- PRE LOADER -->

<div class="preloader">
    <div class="sk-spinner sk-spinner-wordpress">
        <span class="sk-inner-circle"></span>
    </div>
</div>

<!-- Navigation section  -->

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <button class="btn1" style="position: fixed;right: 1%;top:10%;z-index: 2;" >音乐播放器</button>
        <div id="skPlayer" class="panel" style="position: fixed;right: 1%;top:17%;z-index: 2;"></div>

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
                <li><a href="homee.jsp">Home</a></li>
                <li><a href="canvas.jsp">Edit</a></li>
                <li class="active"><a href="gallery.jsp">Gallery</a></li>
                <li><a href="login.jsp">
                        <% if(lUserName!=""&&lUserName!=null)
                {out.println("<li><a href=\"#\">"+lUserName+"</a></li>");}
                else
                {out.println("<li><a href=\"login.jsp\">Log In|Sign Up</a></li>");}
                %>

            </ul>
        </div>

    </div>
</div>

<div class="container">
    <header class="clearfix">
        <span>IMprint <span class="bp-icon bp-icon-about" data-content="印像."></span></span>
        <h1 style="color:#68D4E7 ">相册集合</h1>

    </header>
    <div style="width:100%;height:450px;margin:5px" class="box" >
        <div class="uk-slidenav-position div-inline box" data-uk-slideshow="{kenburns:true, autoplay:true}" style="width:300px;height:300px">


            <ul class="uk-slideshow uk-overlay-active"  >
                <li>
                    <img src="images/graduation/7.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>毕业相册</h3>
                        <p>和<a href="#">IMPRINT</a> 后会有期</p>
                    </div>

                </li>
                <li><img src="images/graduation/2.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>毕业相册</h3>
                        <p>你好吖 <a href="#">IMPRINT</a>后会有期 </p>
                    </div>

                </li>
                <li><img src="images/graduation/3.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>毕业相册</h3>
                        <p>和<a href="#">IMPRINT</a> 后会有期</p>
                    </div>

                </li>
                <li><img src="images/graduation/4.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>毕业相册</h3>
                        <p>和<a href="#">IMPRINT</a> 后会有期</p>
                    </div>

                </li>
                <li><img src="images/graduation/5.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>毕业相册</h3>
                        <p>和<a href="#">IMPRINT</a> 后会有期</p>
                    </div>

                </li>
                <li><img src="images/graduation/6.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>毕业相册</h3>
                        <p>和<a href="#">IMPRINT</a> 后会有期</p>
                    </div>

                </li>
                <li><img src="images/graduation/1.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>毕业相册</h3>
                        <p>和<a href="#">IMPRINT</a> 后会有期</p>
                    </div>

                </li>

            </ul>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous" style="color: rgba(255,255,255,0.4)"></a>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next" style="color: rgba(255,255,255,0.4)"></a>

            <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
                <li data-uk-slideshow-item="0"><a href="#">Item 1</a></li>
                <li data-uk-slideshow-item="1"><a href="#">Item 2</a></li>
                <li data-uk-slideshow-item="2"><a href="#">Item 3</a></li>
                <li data-uk-slideshow-item="3"><a href="#">Item 4</a></li>
                <li data-uk-slideshow-item="4"><a href="#">Item 5</a></li>
                <li data-uk-slideshow-item="5"><a href="#">Item 6</a></li>
                <li data-uk-slideshow-item="6"><a href="#">Item 7</a></li>
            </ul>
        </div>
        <div class="uk-slidenav-position div-inline box" data-uk-slideshow="{kenburns:true, autoplay:true}" style="width:300px;height:300px">


            <ul class="uk-slideshow uk-overlay-active" >
                <li>
                    <img src="images/food/1.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>食物志</h3>
                        <p>让你的<a href="#">胃</a> 去旅行</p>
                    </div>

                </li>
                <li><img src="images/food/2.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>食物志</h3>
                        <p>让你的<a href="#">胃</a> 去旅行</p>
                    </div>

                </li>
                </li>
                <li><img src="images/food/3.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>食物志</h3>
                        <p>让你的<a href="#">胃</a> 去旅行</p>
                    </div>

                </li>
                </li>
                <li><img src="images/food/4.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>食物志</h3>
                        <p>让你的<a href="#">胃</a> 去旅行</p>
                    </div>

                </li>
                </li>
                <li><img src="images/food/5.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>食物志</h3>
                        <p>让你的<a href="#">胃</a> 去旅行</p>
                    </div>

                </li>
                <li><img src="images/food/6.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>食物志</h3>
                        <p>让你的<a href="#">胃</a> 去旅行</p>
                    </div>

                </li>
                <li><img src="images/food/7.jpg" width="300" height="300" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>食物志</h3>
                        <p>你好吖 <a href="#">Jackie</a> 小吃货</p>
                    </div>

                </li>

            </ul>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous" style="color: rgba(255,255,255,0.4)"></a>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next" style="color: rgba(255,255,255,0.4)"></a>

            <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
                <li data-uk-slideshow-item="0"><a href="#">Item 1</a></li>
                <li data-uk-slideshow-item="1"><a href="#">Item 2</a></li>
                <li data-uk-slideshow-item="2"><a href="#">Item 3</a></li>
                <li data-uk-slideshow-item="3"><a href="#">Item 4</a></li>
                <li data-uk-slideshow-item="4"><a href="#">Item 5</a></li>
                <li data-uk-slideshow-item="5"><a href="#">Item 6</a></li>
                <li data-uk-slideshow-item="6"><a href="#">Item 7</a></li>

            </ul>
        </div>
        <div class="uk-slidenav-position div-inline box" data-uk-slideshow="{kenburns:true, autoplay:true}" style="width:300px;height:300px">


            <ul class="uk-slideshow uk-overlay-active" >
                <li>
                    <img src="images/love/1.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
                <li>
                    <img src="images/love/2.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
                <li>
                    <img src="images/love/3.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
                <li><img src="images/love/4.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
                <li><img src="images/love/5.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
                <li><img src="images/love/6.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
                <li><img src="images/love/7.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>恋爱相册</h3>
                        <p>和<a href="#">TA</a> 在一起</p>
                    </div>

                </li>
            </ul>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous" style="color: rgba(255,255,255,0.4)"></a>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next" style="color: rgba(255,255,255,0.4)"></a>

            <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
                <li data-uk-slideshow-item="0"><a href="#">Item 1</a></li>
                <li data-uk-slideshow-item="1"><a href="#">Item 2</a></li>
                <li data-uk-slideshow-item="2"><a href="#">Item 3</a></li>
                <li data-uk-slideshow-item="3"><a href="#">Item 4</a></li>
                <li data-uk-slideshow-item="4"><a href="#">Item 5</a></li>
                <li data-uk-slideshow-item="5"><a href="#">Item 6</a></li>
                <li data-uk-slideshow-item="6"><a href="#">Item 7</a></li>
            </ul>
        </div>
        <div class="uk-slidenav-position div-inline box" data-uk-slideshow="{kenburns:true, autoplay:true}" style="width:300px;height:300px">


            <ul class="uk-slideshow uk-overlay-active" >
                <li>
                    <img src="images/individual/1.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/2.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-top uk-overlay-slide-top">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/3.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/4.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/5.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/6.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/7.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
                <li><img src="images/individual/8.jpg" width="80" height="80" alt="">
                    <div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                        <h3>个人写真</h3>
                        <p>和<a href="#">IMPRINT</a> 有个约会</p>
                    </div>

                </li>
            </ul>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous" style="color: rgba(255,255,255,0.4)"></a>
            <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next" style="color: rgba(255,255,255,0.4)"></a>

            <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
                <li data-uk-slideshow-item="0"><a href="#">Item 1</a></li>
                <li data-uk-slideshow-item="1"><a href="#">Item 2</a></li>
                <li data-uk-slideshow-item="2"><a href="#">Item 3</a></li>
                <li data-uk-slideshow-item="3"><a href="#">Item 4</a></li>
                <li data-uk-slideshow-item="4"><a href="#">Item 5</a></li>
                <li data-uk-slideshow-item="5"><a href="#">Item 6</a></li>
                <li data-uk-slideshow-item="6"><a href="#">Item 7</a></li>
                <li data-uk-slideshow-item="7"><a href="#">Item 8</a></li>
            </ul>
        </div>

    </div>
    <div id="grid-gallery" class="grid-gallery">
        <section class="grid-wrap">
            <ul class="grid">
                <li class="grid-sizer"></li>
                <li>
                    <figure>
                        <img src="images/graduation/5.jpg" alt="img01"/>
                        <figcaption><h3>毕业相册</h3><p>后会有期</p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/travel/1.jpg" alt="img02"/>
                        <figcaption><h3>旅行相册</h3><p>心在路上</p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/food/6.jpg" alt="img03"/>
                        <figcaption><h3>食物志</h3><p>我的胃在旅行</p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/party/2.jpg" alt="img04"/>
                        <figcaption><h3>同学聚会</h3><p>遥想当年热血沸腾 </p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/love/3.jpg" alt="img05"/>
                        <figcaption><h3>爱情纪念</h3><p>往后余生,世间美好事物都是你 </p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/birthday/6.jpg" alt="img06"/>
                        <figcaption><h3>生日祝福</h3><p>愿你从此灿若星辰</p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/pet/1.jpg" alt="img01"/>
                        <figcaption><h3>萌宠</h3><p>你的一生有我陪伴</p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/baby/1.jpg" alt="img02"/>
                        <figcaption><h3>宝宝成长</h3><p>小手拉大手</p></figcaption>
                    </figure>
                </li>
                <li>
                    <figure>
                        <img src="images/individual/3.jpg" alt="img03"/>
                        <figcaption><h3>个人写真</h3><p>记录自己的蜕变</p></figcaption>
                    </figure>
                </li>

            </ul>
        </section><!-- // grid-wrap -->
        <section class="slideshow">
            <ul>
                <li>
                    <figure>
                        <figcaption>
                            <h3>毕业</h3>
                            <p>后会有期</p>
                        </figcaption>
                        <img src="images/graduation/5.jpg" alt="img01"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>旅行</h3>
                            <p>在路上</p>
                        </figcaption>
                        <img src="images/travel/1.jpg" alt="img02"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>美食</h3>
                            <p>我的胃，空空如也</p>
                        </figcaption>
                        <img src="images/food/6.jpg" alt="img03"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>聚会</h3>
                            <p>遥想当年热血沸腾</p>
                        </figcaption>
                        <img src="images/party/2.jpg" alt="img04"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>love</h3>
                            <p>朝朝暮暮</p>
                        </figcaption>
                        <img src="images/love/3.jpg" alt="img05"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>生日聚会</h3>
                            <p>愿我从此灿若星辰</p>
                        </figcaption>
                        <img src="images/birthday/6.jpg" alt="img06"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>萌宠</h3>
                            <p>你的一生有我陪伴</p>
                        </figcaption>
                        <img src="images/pet/1.jpg" alt="img01"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>宝宝成长</h3>
                            <p>小手拉大手</p>
                        </figcaption>
                        <img src="images/baby/1.jpg" alt="img02"/>
                    </figure>
                </li>
                <li>
                    <figure>
                        <figcaption>
                            <h3>个人写真</h3>
                            <p>记录每个阶段的自己，与IMPrint有个约会</p>
                        </figcaption>
                        <img src="images/individual/3.jpg" alt="img03"/>
                    </figure>
                </li>


            </ul>
            <nav>
                <span class="icon nav-prev"></span>
                <span class="icon nav-next"></span>
                <span class="icon nav-close"></span>
            </nav>
            <div class="info-keys icon">Navigate with arrow keys</div>
        </section><!-- // slideshow -->
    </div><!-- // grid-gallery -->
</div>











<footer>
    <div class="container">
        <div class="row">

            <div class="col-md-5 col-md-offset-1 col-sm-6">
                <h3>IMPRINT</h3>
                <p>不负时光，留住记忆，把生活做成书。——私人定制的照片处理平台</p>
                <div class="footer-copyright">
                    <p>Copyright &copy; 2018 IMPrint  </p>
                </div>
            </div>

            <div class="col-md-4 col-md-offset-1 col-sm-6">
                <h3>联系我们</h3>
                <p><i class="fa fa-globe"></i> 武汉大学计算机学院</p>
                <p><i class="fa fa-phone"></i> 400808800</p>
                <p><i class="fa fa-save"></i> IMPrint@company.com</p>
            </div>

            <div class="clearfix col-md-12 col-sm-12">
                <hr>
            </div>



        </div>
    </div>
</footer>



<!-- SCRIPTS -->


<script src="js/cbpgridgallery.js"></script>
<script>
    new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
</script>
<script>
    var player = new skPlayer({
        autoplay: true,
        music: {
            type: 'cloud',
            source: 381240074
        }
    });
</script>

</body>
</html>
