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
    <title>Add Book Form</title>
    <%-- The three ways can't load the css in the page. --%>
    <style type="text/css">@import url(/css/SpringMVCStudy5.css);</style>
    <%--<link rel="stylesheet" type="text/css" href="../../css/SpringMVCStudy5.css" charset="UTF-8">--%>

    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/SpringMVCStudy5.css" charset="UTF-8">--%>

    <%-- only this way can load css successful. --%>
    <%--<style type="text/css">--%>
        <%--#global{--%>
            <%--text-align:left;--%>
            <%--border:1px solid #23de0e;--%>
            <%--background: #ffe672;--%>
            <%--width:560px;--%>
            <%--padding:2px;--%>
            <%--margin:100px auto;--%>
        <%--}--%>

        <%--form{--%>
        <%--font:100% "Source Code Pro Medium";--%>
        <%--min-width:500px;--%>
        <%--max-width:600px;--%>
        <%--width:560px;--%>
        <%--}--%>

        <%--form fieldset{--%>
        <%--border-color: #0705bf;--%>
        <%--border-width:3px;--%>
        <%--margin:0;--%>
        <%--}--%>

        <%--legend {--%>
        <%--font-size:1.3em;--%>
        <%--}--%>


        <%--form label{--%>
        <%--width:250px;--%>
        <%--display: block;--%>
        <%--float: left;--%>
        <%--text-align: right;--%>
        <%--padding:2px;--%>
        <%--}--%>

        <%--table td{--%>
        <%--border:1px solid #de7820;--%>
        <%--background: #ff5140;--%>
        <%--/* for web colors visit http://en.wikipedia.org/wiki/Web_colors*/--%>
        <%--}--%>

        <%--#buttons{--%>
            <%--text-align: center;--%>
        <%--}--%>


    <%--</style>--%>
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
