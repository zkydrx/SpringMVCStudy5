<%--
  Created by IntelliJ IDEA.
  User: Abbot
  Date: 2017-10-30
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html charset=utf-8">
    <title>Add Book Form</title>
    <style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
    <%--<link rel="stylesheet" type="text/css" href="/css/main.css" charset="UTF-8">--%>
</head>
<body>
<div id="global">
    <form:form commandName="book" action="book_save" method="post">
        <fieldset>
            <legend>Add a book</legend>
            <p>
                <label for="category">Category:</label>
                <form:select id="category" path="category.id"
                    items="${categories}" itemLabel="name" itemValue="id"/>
            </p>

            <p>
                <label for="title">Title:</label>
                <form:input id="title" path="title" />
            </p>

            <p>
                <label for="author">Author:</label>
                <form:input id="author" path="author" />
            </p>

            <p>
                <label for="isbn">ISBN:</label>
                <form:input id="isbn" path="isbn"/>
            </p>

            <p id="buttons">
                <input type="reset" id="reset" tabindex="4"/>
                <input type="submit" id="submit" tabindex="5" value="Add Book"/>
            </p>
        </fieldset>
    </form:form>
</div>
</body>
</html>
