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
        flex-grow: 1;
        margin: 20px;
        background: beige;

    }
    .grow-1 p{
        font-size: 20px;
        text-indent: 2em;
    }
    /* ------ header ------- */
    .nav ul {
        display: flex;
        /* background: #333; */
        list-style: none;
    }
    .nav ul a {
        color: white;
        text-decoration: none;
        display: block;
        padding: 15px 25px;
    }
    .nav ul a:hover {
        background-color: #111;
    }
    .nav .right {
        margin-left: auto;
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
    <div class="area sidebar">
        <div class="sidebar-group">
            <h2>专业介绍</h2>
            <ul>
                <li><a href="introduce1.jsp">方向简介</a></li>
                <li><a href="introduce2.jsp">专业简介</a></li>
            </ul>
        </div>

    </div>
    <!-- article -->
    <div class="area grow-1">
        <h1>方向介绍</h1>
        <hr>
        <p>计算机科学与技术系始建于1988年的微机应用专业。1995年在原专业基础上建立了“计算机科学与技术系”。2000年申报成功了“计算机应用技术”硕士点。“十一五”期间计算机专业被批准为黑龙江省重点专业建设点和东北林业大学优势专业，2011年通过了省教育厅专家组对省重点专业的验收工作。同年又再次被批准为黑龙江省“十二五”重点专业建设点。2015年计算机科学与技术专业成为教育部专业综合改革试点专业。</p>
        <p>计算机科学与技术系现有教师29人，其中教授6人，副教授12人，讲师11人。专任教师具有博士学位者19人，在读博士3人，博士生导师5人，硕士生导师11人，具有国外留学或访学经历的教师4人。</p>
        <p>过硬的政治素养，良好的师德师风是计算机专业人才培养质量的根本保证。专任教师中，拥有共产党员20人，近3年有2名教师荣获“黑龙江省高校师德先进个人”荣誉称号。</p>
        <p>较高的科学研究水平，充足的研究条件是计算机专业人才培养层次的基本保障。目前计算机系教师共承担国家自然科学基金、林业行业专项等各级各类科研项目60余项，总经费达2000余万元，累计发表论文500余篇，SCI/EI收录200余篇，获发明专利等知识产权20余项；获各类科研奖励30项。计算机系已形成了人工智能与信息系统、图形图像与多媒体技术、网络与信息安全、大数据与云计算、3S技术与数字林业等相对稳定的研究方向。</p>
        <p>完整的课程体系，高质量的课程建设是计算机专业人才培养质量的有力条件。计算机科学与技术专业主干课程有高级语言程序设计、算法设计与分析、数据结构、数字逻辑、计算机组成原理、操作系统原理、编译原理、数据库系统原理、软件工程、计算机网络、高性能与云计算。其中，8门课程为校级精品课和重点课程，每门课程均由3名以上教师构成的教学团队授课。</p>
        <hr>
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