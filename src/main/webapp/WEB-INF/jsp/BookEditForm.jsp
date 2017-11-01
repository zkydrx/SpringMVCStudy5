<%--
  Created by IntelliJ IDEA.
  User: Abbot
  Date: 2017-10-30
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Book Form</title>
    <%-- The three ways can't load the css in the page. --%>
    <style type="text/css">@import url(/css/SpringMVCStudy5.css);</style>
    <%--<link rel="stylesheet" type="text/css" href="../../css/SpringMVCStudy5.css" charset="UTF-8">--%>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/SpringMVCStudy5.css" charset="UTF-8">--%>

    <%-- only this way can load css successful. --%>
    <%--<style type="text/css">--%>
        <%--#global{--%>
            <%--text-align:left;--%>
            <%--border:1px solid #23de0e;--%>
            <%--background: #ff0028;--%>
            <%--width:560px;--%>
            <%--padding:200px;--%>
            <%--margin:100px auto;--%>
        <%--}--%>

        <%--form{--%>
        <%--font:100% "Source Code Pro Medium";--%>
        <%--min-width:900px;--%>
        <%--max-width:1000px;--%>
        <%--width:950px;--%>
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
        <%--width:450px;--%>
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
            <%--text-align: right;--%>
        <%--}--%>

        <%--#errors,li{--%>
        <%--color: red;--%>
        <%--}--%>

        <%--.error{--%>
        <%--color:red;--%>
        <%--font-size:9pt;--%>
        <%--}--%>
    <%--</style>--%>

</head>
<body>
<div id="global">
    <form:form commandName="book" action="/book_udpate" method="post">
        <fieldset>
            <legend>Edit a book</legend>
            <form:hidden path="id"/>
            <p>
                <label for="category">Category:</label>
                <form:select path="category.id" id="category" items="${categories}"
                    itemLabel="name" itemValue="id"/>
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
                <form:input path="isbn" id="isbn"/>
            </p>

            <p id="buttons">
                <input id="reset" type="reset" tabindex="4"/>
                <input id="submit" type="submit" tabindex="5"/>
            </p>
        </fieldset>
    </form:form>
</div>
</body>
</html>
