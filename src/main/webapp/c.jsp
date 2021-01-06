<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>1</div>
<c:set var="s" value="selected"/>
<c:if test="${s=='selected'}">
    <c:set var="a" value="selected"/>

</c:if>
<form action="#">
    <option value="name" >${s}</option>
    <select>
        <option ${a}></option>
        <option>学士</option>
        <option >硕士</option>
        <option>博士</option>
    </select>
</form>


</body>
</html>