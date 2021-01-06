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
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        /* border: 1px solid red; */
    }

    body {
        background-color: rgb(0, 33, 71);
    }

    a {
        text-decoration: none;
        transition: all 0.2s;
    }

    a:hover {
        transform: scale(1.2, 1.2);
        text-decoration: none;
    }

    /* header */
    .head-container {
        height: 10vh;
    }

    .head-container>ul {
        display: flex;
        background-color: rgb(0, 33, 71);
        height: 10vh;

    }

    .head-container>ul {
        list-style: none;
        align-items: center;

    }

    .head-container>ul>li>a {
        text-align: center;
        text-decoration: none;
        color: aliceblue;
        font-size: 2rem;
        padding: 2vw;
        align-items: center;
        display: block;
    }

    .logo-contain img {
        width: 50vh;
    }

    #adminester {
        margin-left: auto;
    }

    #adminester>a>i {

        font-size: 5rem;
    }

    .head-two {
        display: none;
        position: absolute;
        z-index: 99;
        list-style: none;
        background-color: beige;
        font-size: large;

    }

    .head-two>li {

        min-width: 200px;

    }

    .head-two>li>a {
        display: inline-block;
        padding: 2vw;
        width: 100%;
        height: 100%;


    }


    /* lunbo */
    .my-caroual-img {
        width: 100vw;
        height: 10vh;
    }


    /* footer */
    .footer-container {
        background-color: rgb(0, 33, 71);
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: large;
        color: white;
        margin: 50px;
    }

    .footer-container a {
        color: white;
    }


    /* ------------- 通用 ------------- */
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    .area {
        padding: 10px;
        /* border: 1px solid #f08c00;
        background-color: #ffec99; */
        border-radius: 5px;
    }
    .row {
        display: flex;
        align-items: flex-start;
    }
    .row .grow-1 {
        flex-grow: 4;
        margin: 20px;
        background: beige;

    }
    .grow-1 p{
        font-size: 20px;
        text-indent: 2em;
    }






    /*-------------- sidebar ------------ */
    .sidebar {
        min-width: 200px;
    }
    .sidebar *{
        border-radius: 5px;
    }
    .sidebar-group {
        background: beige;
    }
    .sidebar-group > ul {
        list-style: none;
    }
    .sidebar-group > h2 {
        text-align: center;
        background: #2841cc;
        color: white;
        padding: 10px 20px;
    }
    .sidebar-group a{
        text-align: center;
        font-size: 2rem;
        display: block;
        color: black;
        text-decoration: none;
        padding: 10px 20px;
        transition: transform 0.5s;
    }
    .sidebar-group a:hover {
        background: goldenrod;
        color: white;
        transform: scale(1.1);
    }
    .img-container{
        text-align: center;
    }
    .img-container img{
        width: 50%;
    }
    .team-silderr{
        /*display: none;*/

    }
    /* teach */
    .teach-content{
        font-size: 20px;
        text-indent: 2em;
    }
    .teach-content img{
        width: 20vw;
        border-radius: 10px;
        color: black;

    }
    .teach-content a{
        color: black;
        text-decoration: none;
    }
    .teach-content a:hover{
        /*color: none;*/
        text-decoration: none;
    }
    .teach-content .img-content{
        text-align: center;
    }
    .teach-content hr{
        border: 2px solid burlywood;
        color: burlywood;
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
            <img src="RESOURCE/car-1.jpg" alt="First slide" class="my-caroual-img">
        </div>
        <div class="item">
            <img src="RESOURCE/car-2.gif" alt="Second slide" class="my-caroual-img">
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

<!-- artice -->

<div class="area row">
    <!-- sidebar -->
    <div class="area sidebar grow-2">
        <div class="sidebar-group">
            <h2 class="team-silde">教师团队</h2>
            <ul   class="team-silderr">
                <li><a href="professor.jsp">教授</a></li>
                <li><a href="f-professor.jsp">副教授</a></li>
                <li><a href="lecturer.jsp">讲师</a></li>
            </ul>
        </div>

    </div>





    <!-- article -->
    <div class="area grow-1">

        <h1>教师团队-讲师</h1>


        <div class="teach-content">
<%--            <a href="#">--%>
                <div class="img-content"><img src="RESOURCE/photo/bo (1).jpg" alt=""></div>
                <div class="teach-info">
                    王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。
                </div>
<%--            </a>--%>
            <hr>
        </div>
        <div class="teach-content">
<%--            <a href="#">--%>
                <div class="img-content"><img src="RESOURCE/photo/dan.png" alt=""></div>
                <div class="teach-info">
                    单颖，博士，讲师，主要研究方向：软件工程，林业信息。参与科研项目多项，并发表相关论文。
                </div>
<%--            </a>--%>
            <hr>
        </div>







    </div>



</div>





<!-- footer -->
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