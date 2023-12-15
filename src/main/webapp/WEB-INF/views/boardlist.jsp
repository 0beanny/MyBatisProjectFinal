<%--
  Created by IntelliJ IDEA.
  User: parkseyoung
  Date: 12/1/23
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
        #searchDrop {
            width: auto;
            justify-items: end;

        }

        #main {
            padding-left: 30px;
            padding-right: 30px;
        }

        #searchText {
            margin-right: 12px;
        }

        .searchBox {
            margin-right: 12px;
            max-width: 250px;
        }

        #dropdown1 {
            text-align: right;
        }

        .title {
            font-family: Lucida Console, Courier New, monospace;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid px-4">
        <a class="navbar-brand mb-0 h1" href="#">세영이 독서일기</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add">Add</a>
                </li>

        </div>
    </div>
</nav>
<br> <br> <br>

<div id="main">
    <h1>Book List</h1>

    <br>

    <table id="list" width="90%">
        <tr>
            <th>#</th>
            <th>제목</th>
            <th>저자</th>
            <th>장르</th>
            <th>작성일</th>
            <th>수정일</th>
            <th>Edit</th>
            <th>Delete</th>
            <th>View</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getSeq()}</td>
                <td>${u.getTitle()}</td>
                <td>${u.getWriter()}</td>
                <td>${u.getCategory()}</td>
                <td>${u.getRegdate()}</td>
                <td>${u.getEditdate()}</td>

                <td><button class="btn btn-outline-secondary btn-sm"><a class="link-underline link-underline-opacity-0 link-dark " href="editform/${u.getSeq()}">Edit</a></button></td>
                <td><button class="btn btn-outline-secondary btn-sm"><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></button></td>
                <td><button class="btn btn-outline-secondary btn-sm"><a class="link-underline link-underline-opacity-0 link-dark " href="view/${u.getSeq()}">View</a></button></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
