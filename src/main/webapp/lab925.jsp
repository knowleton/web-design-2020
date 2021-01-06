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
        min-width: 300px;
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

    <!-- article -->
    <div class="area grow-1">

        <h1>925移动开发实验室</h1>

        <p>信息与计算机科学技术实验中心成立于2012年7月，是整合了原计算机系专业实验室，信管专业实验室，软件专业实验室以及1978年就已成立的计算机基础实验室而组成的信息与计算机技术实践教学综合性专业化实践教学平台。</p>
        <p>中心组建后实现了资源共享，优势互补的办学目标，自动化的实践教学管理和人性化的教学服务为师生各类实验教学活动提供了优质的学习实践环境。</p>
        <p>中心面向全校计算机基础类实验教学和计算机相关专业与信息相关的本科和硕士专业课程的实践教学。主要承担计算机系统类、计算机软件工程实践类、计算机应用技术类、数学软件类、硬件及嵌入式应用、网络技术类、信息管理类等的课程的实践教学课程与创新活动。</p>
        <p>中心下设计算机公共基础实验室, 计算机系统结构实验室, 网络工程与安全实验室,
            信息管理系统综合实验室以及信息技术创新实训实验室等5个分室25个房间，建筑面积4800m2。配备品牌台式计算机1200余台，计算机系统结构、计算机组成原理等系统类实验箱90套；单片机原理、ARM、FPGA、物联网等硬件相关实验箱280余套。实验教学资产1500余万元。</p>
        <div class="img-container"><img src="RESOURCE/lab925.jpg" alt="none"></div>
    </div>


    <!-- sidebar -->
    <div class="area sidebar grow-2">
        <div class="sidebar-group">
            <h2>实验室介绍</h2>
            <ul>
                <li><a href="lab923.jsp">923创新实验室</a></li>
                <li><a href="lab925.jsp">925移动开发实验室</a></li>
            </ul>
        </div>

    </div>
</div>





<%@include file="footer.jsp"%>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $('.head-container>ul>li').hover(function () {
        let now = $(this).children("ul");

        now.fadeIn(110);

    }, function () {
        $(this).children("ul").fadeOut(110);

    })


</script>








</body>

</html>