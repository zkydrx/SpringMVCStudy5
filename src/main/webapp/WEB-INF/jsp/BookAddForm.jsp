<%--
  Created by IntelliJ IDEA.
  User: Abbot
  Date: 2017-10-30
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Book Form</title>
    <style type="text/css">@import url(../../css/main.css);</style>
</head>
<body>
<div id="global">
    <form:form commandName="book" action="book_save" method="post">
        <fieldset>
            <legend>Add a book</legend>
            <p>
                <label for="category">Category:</label>
                <form:select path="category.id" id="category"
                    items="${categories}" itemlabel="name"
                    itemvalue="id"/>
            </p>

            <p>
                <label for="title">Title:</label>
                <form:input path="title" id="title"/>
            </p>

            <p>
                <label for="author">Author:</label>
                <form:input path="author" id="author"/>
            </p>

            <p>
                <label for="isbn">ISBN:</label>
                <form:input id="isbn" path="isbn"/>
            </p>

            <p id="buttons">
                <input type="reset" id="reset" tabindex="4"/>
                <input type="submit" id="submit" tabindex="5"/>
            </p>
        </fieldset>
    </form:form>
</div>
</body>
</html>
