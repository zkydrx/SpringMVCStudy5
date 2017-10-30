<%--
  Created by IntelliJ IDEA.
  User: Abbot
  Date: 2017-10-30
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
<head>
    <title>Book List</title>
    <style type="text/css">@import url(../../css/main.css);</style>
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
