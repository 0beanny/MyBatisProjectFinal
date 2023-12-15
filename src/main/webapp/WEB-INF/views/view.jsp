<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Index Page</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"></script>
    <style>
        #main {
            padding: 100px;
        }

        #title {
            text-align: center;
            margin-bottom: 50px;
            margin-top: 70px;

        }

        .container {
            max-width: 700px;
        }

        p {
            font-size: 20px;
            color: #00000f;
        }

        #by {
            display: inline;
            font-family: "Lucida Console", "Courier New", "monospace";
        }
        #writer {
            display: inline;
            font-family: "Lucida Console", "Courier New", "monospace";
        }
        #date {
            display: inline;
            font-family: "Lucida Console", "Courier New", "monospace";
        }

        #hr1 {
            margin: 30px auto;
            width: 30vh;

        }
    </style>
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
                    <a class="nav-link active" aria-current="page" href="../list">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../add">Add</a>
                </li>

        </div>
    </div>
</nav>

<div id="main d-flex" >
    <h1 id="title" >${boardVO.getTitle()}</h1>
    <hr id="hr1">

    <div class="container">
        <p class="text-muted" id="by">by</p>
        <p class="text-muted" id="writer">박세영</p>

        <p></p>
        <p>></p>

        <p>${boardVO.getContent()}</p>
    </div>
</div>

<div class="container">
    <footer
            class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <div class="col-md-4 d-flex align-items-center">
            <a
                    href="/"
                    class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
            </a>
            <span class="mb-3 mb-md-0 text-body-secondary">&copy; 2023 Company, Inc</span>
        </div>

        <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
            <li class="ms-3">
                <a class="text-body-secondary" href="#">
                    <svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg>
                </a>
            </li>
            <li class="ms-3">
                <a class="text-body-secondary" href="#">
                    <svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg>
                </a>
            </li>
            <li class="ms-3">
                <a class="text-body-secondary" href="#">
                    <svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg>
                </a>
            </li>
        </ul>
    </footer>
</div>

</body>
</html>