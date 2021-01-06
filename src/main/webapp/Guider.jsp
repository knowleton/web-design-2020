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
    .img-container{
        text-align: center;
    }
    .img-container img{
        width: 50%;
    }
    /*  */
    .title-container,.time-container{
        text-align: center;
    }

    .content-container{
        font-size: 20px;
        text-indent: 2em;
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
        <div class="title-container"><h1>就业指南</h1></div>
        <hr>
        <div class="time-container">
            <h4>2020-2021学年新学期就业工作会议</h4>
        </div>
        <hr>
        <div class="content-container">2020年9月8日，就业指导与合作发展处于综合行政楼11楼会议室召开了新学期就业工作会议。本次会议由王春海处长主持，参会人员为全体2021届毕业生辅导员。

            首先，就业指导与合作发展处副处长王强同志，对各学院提出了2020年秋季学期校园招聘工作的具体要求，一要结合学校实际情况，做好疫情防控，实现学生高质量充分就业；二要重点服务学生充分就业、服务企业顺利校招；三要通过线上线下相融合的模式，创新举措、积极作为。随后，就业指导科杨素华老师强调要以课堂为平台、辅导员与学生“一对一”的指导模式来指导学生理性就业。同时，就业指导与合作发展处副处长刘炜同志具体介绍了2021届毕业生就业相关工作，强调各学院要按时完成各项就业数据的上报，做好对毕业生的就业相关指导，共同努力做好服务学生就业工作。最后，王春海处长做就业工作总体布置，一是要做好秋季招聘组织领导工作，各学院要成立就业工作专班，统筹招聘工作，广泛收集就业信息同时做到及时向学生传达；二要做好毕业学生思想动员工作，指导学生做好简历书写、简历投递；三要加大力度、创新工作方式做好学科专业对外宣传工作；四要做好招聘单位的联络和接待工作；五要做好招聘环节的疫情防控工作。

            通过校院联动，坚持以立德树人为根本，以学生高质量充分就业为目标，以做好疫情防控为前提，以精准化、个性化的就业指导为基础，以服务学生充分就业、服务企业顺利校招为重点，全面做好后疫情时代的校园招聘工作。</div>
        <hr>
        <div class="time-container"><a href="http://job.nefu.edu.cn/">
            <h4>了解更多关于就业指导</h4></a>
        </div>
        <hr>
        <!-- <div class="img-container"><img src="RESOURCE/lab923.jpg" alt="none"></div> -->
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
    $('.head-container>ul>li').hover(function () {
        let now = $(this).children("ul");

        now.fadeIn(110);

    }, function () {
        $(this).children("ul").fadeOut(110);

    })


</script>








</body>

</html>