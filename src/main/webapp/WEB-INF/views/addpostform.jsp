<%--
  Created by IntelliJ IDEA.
  User: parkseyoung
  Date: 11/7/23
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    .col-1 {
      width: 90px;
    }

    .body11 {
      padding: 70px 150px 30px;
    }

    h1 {
      text-align: center;
    }

    .container {
      max-width: 700px;
      margin-top: 100px;
    }

    #hr1 {
      margin: 30px auto;
      width: 30vh;

    }

  </style>

  <title>Form Page</title>
  <script>
    function validateForm() {
      let title = document
              .forms["myForm"]["title"]
              .value;
      let writer = document
              .forms["myForm"]["writer"]
              .value;
      let genre = document
              .forms["myForm"]["category"]
              .value;
      let rating = document
              .forms["myForm"]["rating"]
              .value;
      let price = document
              .forms["myForm"]["price"]
              .value;
      let textarea1 = document
              .forms["myForm"]["content"]
              .value;
      if (title == "") {
        alert("제목을 입력해주세요.");
        return false;
      } else if (price == "") {
        alert("가격을 입력해주세요.");
        return false;
      }
      if (writer == "") {
        alert("저자를 입력해주세요.");
        return false;
      }
      if (genre == "") {
        alert("장르를 입력해주세요.");
        return false;
      }
      if (rating == "") {
        alert("별점을 입력해주세요.");
        return false;
      }
      if (textarea1 == "") {
        alert("본문을 입력해주세요.");
        return false;
      } else {
        alert("성공적으로 저장되었습니다.");
        return true;
      }
    }

    function confirmCancel() {
      if (confirm("게시물 작성을 취소하시겠습니까?") == true) {
        location.href='list';
      } else {
      }
    }

  </script>
</head>
<body>
<div class="container">
  <h1 class="mb-x ">글쓰기</h1>
  <hr id="hr1">
  <form action="addok" method="post" name="myForm">
    <div class="row mb-3">
      <div class="col-sm-8 mb-3">
        <label for="title" class="form-label">제목</label>
        <input
                type="text"
                name="title"
                id="title"
                class="form-control"
                placeholder="제목을 입력해주세요">
      </div>

      <div class="col-sm-4">
        <label for="rating" class="form-label">별점</label>
        <select class="form-select" name="rating" id ="rating" aria-label="Default select example">
          <option selected="selected">별점</option>
          <option value="⭐️">⭐️</option>
          <option value="⭐️⭐">⭐️⭐️</option>
          <option value="⭐️⭐⭐️">⭐️⭐️⭐️</option>
        </select>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-sm mb-3">
        <label for="writer" class="form-label">저자</label>
        <input
                type="text"
                name="writer"
                id="writer"
                class="form-control"
                placeholder="저자를 입력해주세요">
      </div>

      <div class="col-sm row">

        <div class="col">
          <label for="category" class="form-label">장르</label>
          <select class="form-select" name="category" id="category" aria-label="Default select example">
            <option selected="selected">장르</option>
            <option value="소설">소설</option>
            <option value="시/에세이">시/에세이</option>
            <option value="인문">인문</option>
            <option value="경제/경영">경제/경영</option>
            <option value="역사">역사</option>
            <option value="자기계발">자기계발</option>
            <option value="기타">기타</option>
          </select>
        </div>

        <div class="col">
          <label for="price" class="form-label">가격</label>
          <input
                  type="text"
                  name="price"
                  id="price"
                  class="form-control"
                  placeholder="가격을 입력해주세요">
        </div>
      </div>
    </div>


    <div class="mb-3">
      <label class="mb-2" for="content">본문</label>
      <textarea
              class="form-control"
              name="content"
              id="content"
              cols="30"
              rows="15"></textarea>
    </div>
    <div class="d-flex justify-content-start gap-2">
      <div>
        <button type="submit" class="btn btn-primary" onclick="return validateForm()">저장하기</button>
      </div>
      <div>
        <button type="reset" class="btn btn-outline-primary" onclick="confirmCancel()">Cancel</button>
      </div>
    </div>
  </form>
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
