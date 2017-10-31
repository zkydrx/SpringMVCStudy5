<%--
  Created by IntelliJ IDEA.
  User: Abbot
  Date: 2017-10-30
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html charset=utf-8">

    <title>Book List</title>
    <style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
    <%--<link rel="stylesheet" type="text/css" href="/css/main.css" charset="UTF-8">--%>

</head>
<body>
<div id="global">
    <h1>Book List:</h1>
    <a href="<c:url value="/book_input"/>" >Add Book</a>
    <table>
        <tr>
            <th>Category</th>
            <th>Title</th>
            <th>ISBN</th>
            <th>Author</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach items="${books}" var="book">
            <tr>
                <td>${book.category.name}</td>
                <td>${book.title}</td>
                <td>${book.isbn}</td>
                <td>${book.author}</td>
                <td><a href="book_edit/${book.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
