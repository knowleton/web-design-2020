<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/" />
    <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>源川的快乐课设</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">

    <link rel="stylesheet" href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<style>
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        /* border: 1px solid red; */
    }
    body{
        background-color:rgb(0, 33, 71) ;
    }
    a{
        text-decoration: none;
        transition: all 0.2s;
    }
    a:hover{
        transform: scale(1.2,1.2);
        text-decoration: none;
    }
    /* header */

    .head-container{
        height: 10vh;
    }
    .head-container>ul{
        display: flex;
        background-color:rgb(0, 33, 71);
        height: 10vh;

    }
    .head-container>ul{
        list-style: none;
        align-items: center;

    }

    .head-container>ul>li>a{
        text-align: center;
        text-decoration: none;
        color: aliceblue;
        font-size: 2rem;
        padding: 2vw;
        align-items: center;
        display: block;
    }
    .logo-contain img{
        width: 50vh;
    }
    #adminester{
        margin-left: auto;
    }

    #adminester>a>i{

        font-size: 5rem;
    }
    .head-two{
        display: none;
        position: absolute;
        z-index: 99;
        list-style: none;
        background-color: beige;
        font-size: large;

    }
    .head-two>li{

        min-width: 200px;

    }
    .head-two>li>a{
        display: inline-block;
        padding: 2vw;
        width: 100%;
        height: 100%;


    }


    /* lunbo */
    .my-caroual-img{
        width: 100vw;
        height: 10vh;
    }

    /* news and video */

    .news-introdution-container{
        display: flex;
        background-color:rgb(0, 33, 71) ;
        /* background-image: url("backggg.jpeg"); */

    }

    .news-contain{
        border-radius: 10px;
        margin-right: 100px;
        width: 45%;
        padding-top:20px ;


    }

    .news-contain>ul>li{
        font-size: 1.5em;
        border-radius: 5px;
        padding: 10px;
        background-color: white;
        margin: 2vw;
        color: aqua;

    }
    .news-contain h1{
        width: 100%;
        display: inline-block;
        color: white;
        text-align: center;
    }
    .news-contain h1 a{
        width: 100%;
        display: inline-block;
        color: white;
        text-align: center;
    }

    .introdution-contain{
        border-radius: 10px;
        width: 45%;
        margin-left: auto;
        text-align: center;
        margin-right:15px ;
        margin-top: 10px;
        background-color: aliceblue;

    }
    .introdution-contain *{
        border-radius: 10px;

    }
    .introdution-contain span{
        margin-top: 5rem;
        display: block;
        font-size: 3rem;
        color:black;


    }
    .introdution-contain>div{
        margin: 15px;

    }
    .introdution-contain>div>ul>li>span{
        margin-right: 0;
    }
    .teacher-team-span-contain{
        width: 100%;
        text-align: center;
    }
    .teacher-team-span{
        color: white;
        font-size: 2em;
        margin: auto;
    }



    /* cards */
    /* 容器 */
    .teachercards-container {
        display: flex;
        justify-content: center;
    }
    /* card容器 */
    .card {
        width: 270px;
        margin: 50px;
        padding: 5px;
        background-color: white;
        border-radius: 5px;

    }
    /*  */
    .card .header {
        text-align: center;

        position: relative;
        background: rgba(255, 255, 255, 1.0);
        z-index: 99;
    }
    /* 圆角加在图片上，因为header容器需要把背景盖住问题内容 */
    .card .header img {
        border-radius: 50%;
        opacity: 0.9;
        transition: opacity 0.5s;

    }

    .card .content {
        text-align: center;
        opacity: 0.9;

    }
    .card .content p {
        text-align: center;
        font-size: large;
        color: black;
        overflow: hidden;
    }

    .card .content a {
        display: inline-block;
        padding: 10px 15px;
        background: blue;
        color: white;
        border-radius: 5px;

    }

    .card:hover .header {
        transform: translateY(0px);
    }
    .card:hover .header > img {

        opacity: 1.0;
    }
    .card:hover .content {

        opacity: 1.0;
    }
    .card .content a:hover {
        background:blue;
    }

    /* footer */
    .footer-container{
        background-color:rgb(0, 33, 71);
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: large;
        color: white;
        margin: 50px;
    }
    .footer-container a{
        color: white;
    }


</style>
<body>




<%@include file="header.jsp"%>

<!-- 轮播 -->
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">
        <div class="item active">
            <img src="RESOURCE/car-2.gif" alt="First slide" class="my-caroual-img">
        </div>
        <div class="item">
            <img src="RESOURCE/car-1.jpg" alt="Second slide" class="my-caroual-img">
        </div>
        <div class="item">
            <img src="RESOURCE/car-3.jpg" alt="Third slide" class="my-caroual-img">
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<!-- 公告和介绍 -->
<div class="news-introdution-container">
    <div class="news-contain">
        <h1>   <a href="newslister.jsp">校内新闻</a>   </h1>
        <ul>


            <c:forEach items="${newslist}" var="n" varStatus="s" begin="0" end="4" step="1">

                <li><a href="newsshower.jsp?newsid=${n.id}"><span><fmt:formatDate type="date" value="${n.updatetime}" />|</span>${n.title}</a></li>


            </c:forEach>

        </ul>

    </div>

    <div class="introdution-contain">

        <div>
            <div style="position: relative; padding: 30% 45%;">
                <iframe src="//player.bilibili.com/player.html?aid=800512358&bvid=BV1Uy4y1q7k6&cid=265921147&page=1" scrolling="no"
                        border="0" frameborder="no" framespacing="0" allowfullscreen="true"
                        style="position: absolute; width: 100%; height: 100%; left: 0; top: 0;"> </iframe>
            </div>

        </div>
        <span>精彩瞬间</span>


    </div>

</div>


<div class="teachercards-container">
    <div class="card">
        <div class="header">
            <img src="RESOURCE/luo.png" alt="face">
        </div>
        <div class="content">
            <p>罗嗣卿</p>
            <a href="f-professor.jsp">了解更多</a>
        </div>
    </div>

    <div class="card">
        <div class="header">
            <img src="RESOURCE/bo (1).jpg" alt="face">
        </div>
        <div class="content">
            <p>王波</p>
            <a href="lecturer.jsp">了解更多</a>
        </div>
    </div>
    <div class="card">
        <div class="header">
            <img src="RESOURCE/bo (2).jpg" alt="face">
        </div>
        <div class="content">
            <p>赵玉茗</p>
            <a href="f-professor.jsp">了解更多</a>
        </div>


    </div>





</div>
<div class="teacher-team-span-contain"> <span class="teacher-team-span">教师团队</span></div>


<div class="footer-container">

    <div class="copyright">COPYRIGHT @ 信息与计算机工程学院 - 2020</div>
    <div class="author">
        <div><a href="#" class="text-white">@Author</a></div>
        <div><a href="#" class="text-white">DuanYuanChuan</a></div>
    </div>

</div>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $('.head-container>ul>li').hover(function(){
        let now= $(this).children("ul");

        now.fadeIn(110);

    },function(){
        $(this).children("ul").fadeOut(110);

    })


</script>






</body>
</html>