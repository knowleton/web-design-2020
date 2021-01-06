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

    /* news */

    .news-content a{
        color: black;
        text-decoration: none;

    }
    .news-content{
        font-size: 20px;
        text-indent: 2em;
    }
    .news-content:hover{
        font-size: 22px;
    }
    hr{
        border: 2px solid burlywood;
        color: burlywood;
    }
    .news-content a:hover{


        text-decoration: none;

    }
    .new-info-content{
        display: flex;
        justify-content: space-between;
    }


    /* table */

    /* --------------全局table属性-------------------- */
    .main table {
        width: 100%;
        border-collapse: collapse;
    }

    .main table th, table td {
        text-align: center;
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }


    /* --------------全局超链接按钮------------------ */
    .main a.btn {
        background-color: #f44336;
        color: white;
        padding: 10px 25px;
        text-decoration: none;
        display: inline-block;
        border-radius: 8px;
    }

    .main a.btn:hover {
        background-color: red;
    }

</style>

<body>


<%@include file="header.jsp"%>

<!-- artice -->

<div class="area row">
    <!-- sidebar -->

    <!-- article -->
    <div class="area grow-1">


        <div class="main">
            <h1>新闻列表</h1>
            <a href="userEdit.jsp" class="btn">增加</a>

            <table>
                <thead>
                <tr>
                    <th>#</th>
                    <th>标题</th>
                    <th>时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${newslist}" var="n" varStatus="s">
                        <tr>
                            <td>${n.id}</td>
                            <td>${n.title}</td>
                            <td>
                                <fmt:formatDate type="date" value="${n.updatetime}" />

<%--                            ${n.updatetime}--%>
                            </td>
                            <td><a href="newsshower.jsp?newsid=${n.id}" class="btn">查看</a> <a href="userReEdit.jsp?newsid=${n.id}" class="btn">修改</a> <a href="del?newsid=${n.id}" class="btn">删除</a></td>
                        </tr>

                    </c:forEach>

                </tbody>
            </table>
        </div>






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