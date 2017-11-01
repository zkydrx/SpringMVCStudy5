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
    <title>Book List</title>

    <%-- The three ways can't load the css in the page. --%>
    <style type="text/css">@import url(/css/SpringMVCStudy5.css);</style>
    <%--<link rel="stylesheet" type="text/css" href="../../css/SpringMVCStudy5.css" charset="UTF-8">--%>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/SpringMVCStudy5.css" charset="UTF-8">--%>


    <%-- only this way can load css successful. --%>
    <style type="text/css">
        #global{
            text-align:left;
            border:1px solid #23de0e;
            background: #ff0028;
            width:560px;
            padding:200px;
            margin:100px auto;
        }

        form{
        font:100% "Source Code Pro Medium";
        min-width:900px;
        max-width:1000px;
        width:950px;
        }

        form fieldset{
        border-color: #0705bf;
        border-width:3px;
        margin:0;
        }

        legend {
        font-size:1.3em;
        }


        form label{
        width:450px;
        display: block;
        float: left;
        text-align: right;
        padding:2px;
        }

        table td{
        border:1px solid #de7820;
        background: #ff5140;
        /* for web colors visit http://en.wikipedia.org/wiki/Web_colors*/
        }

        #buttons{
            text-align: right;
        }

        #errors,li{
        color: red;
        }

        .error{
        color:red;
        font-size:9pt;
        }
    </style>
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
