
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
        <div class="title-container"><h1>${news.title}</h1></div>
        <hr>
        <div class="time-container"><h4><fmt:formatDate type="date" value="${news.updatetime}" /></h4></div>
        <hr>
        <div class="content-container">${news.content}</div>
        <hr>
        <hr>

        <div class="img-container" style="width: 100%">
            <img src="data:image/png;base64,${photo}" alt="" >
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