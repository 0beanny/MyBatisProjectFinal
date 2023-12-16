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
        <a class="navbar-brand mb-0 h1" href="#">고구마 독서일기</a>
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add">Add</a>
                </li>

        </div>
    </div>
</nav>

<div id="main">
    <div name="search" class="row mb-3 mt-5 border-bottom ">
        <h2 class="col-sm-6 p-3">Book List</h2>
        <div class="col-sm-6">
            <form name="search" action="search.php" method="post">
                <div class="row column-gap-2 py-3">
                    <select
                            class="form-select col "
                            name="genre"
                            aria-label="Default select example">
                        <option selected="selected">장르</option>
                        <option value="1">소설</option>
                        <option value="2">에세이</option>
                        <option value="3">시</option>
                    </select>
                    <input type="text" class="col-6 " placeholder="Titie" name="content">
                    <button type="submit" class="col btn btn-primary" onclick="return searchVal()">search</button>
                </div>
            </form>
        </div>
    </div>


    <div name="table" class="">
        <table class="table table-hover" width="90%">
            <thead>
                <tr>
                    <th>#</th>
                    <th>제목</th>
                    <th>저자</th>
                    <th>장르</th>
                    <th>별점</th>
                    <th>가격</th>
                    <th>작성일</th>
                    <th>수정일</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    <th>View</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="u">
                    <tr>
                        <td>${u.getSeq()}</td>
                        <td>${u.getTitle()}</td>
                        <td>${u.getWriter()}</td>
                        <td>${u.getCategory()}</td>
                        <td>${u.getRating()}</td>
                        <td>${u.getPrice()}</td>
                        <td>${u.getRegdate()}</td>
                        <td>${u.getEditdate()}</td>

                        <td><button class="btn btn-outline-secondary btn-sm"><a class="link-underline link-underline-opacity-0 link-dark " href="editform/${u.getSeq()}">Edit</a></button></td>
                        <td><button class="btn btn-outline-secondary btn-sm"><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></button></td>
                        <td><button class="btn btn-outline-secondary btn-sm"><a class="link-underline link-underline-opacity-0 link-dark " href="view/${u.getSeq()}">View</a></button></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div name="pagelink" class="d-flex justify-content-center">
        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="#">Previous</a>
            </li>
            <li class="page-item active">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>

    </div>
</div>
</body>
</html>
