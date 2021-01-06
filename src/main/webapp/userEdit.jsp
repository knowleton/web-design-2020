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

    /* form */
    .myfont{
        font-size: 2em;
    }








</style>

<body>


<%@include file="header.jsp"%>


<!-- artice -->

<div class="area row">
    <!-- sidebar -->

    <!-- article -->
    <div class="area grow-1">
        <h1>新闻编辑</h1>

        <form action="addedit" method="POST" enctype="multipart/form-data">
            <div class="form-group row">
                <label for="inputTitle" class="col-sm-2 col-form-label myfont" >标题</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputTitle" placeholder="请输入标题" name="title">
                </div>
            </div>
<%--            <div class="form-group row">--%>
<%--                <label for="inputAuthor" class="col-sm-2 col-form-label myfont">作者</label>--%>
<%--                <div class="col-sm-6">--%>
<%--                    <input type="text" class="form-control" id="inputAuthor" placeholder="请输入作者" name="author">--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="form-group row">
                <label for="inputImage" class="col-sm-2 col-form-label myfont">上传图片</label>
                <div class="col-sm-6">
                    <input type="file" class="form-control-file" id="inputImage" accept="image/png,image/jpg,image/gif" name="image" required>
                </div>
            </div>
            <div class="form-group">
                <label for="inputContent" class="col-form-label myfont">正文</label>
                <textarea name="content" id="inputContent" class="form-control" rows="15"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">保存</button>
        </form>

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