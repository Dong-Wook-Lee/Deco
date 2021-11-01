<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">



    <!-- jQuery -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>



    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



    <title>cafe</title>



    <script>

        $(document).on('click', '#btnSave', function (e) {

            e.preventDefault();



            $("#form").submit();

        });



        $(document).on('click', '#btnList', function (e) {

            e.preventDefault();



            location.href = "${pageContext.request.contextPath}/board/getBoardList";

        });

    </script>


</head>

<body>

    <article>

        <div class="container" role="main">

            <h2>Cafe</h2>

            <form name="form" id="form" role="form" method="post"
                action="${pageContext.request.contextPath}/board/saveBoard">

                <div class="mb-3">

                    <label for="title">지역</label>

                    <input type="text" class="form-control" name="title" id="title" placeholder="">

                </div>



                <div class="mb-3">

                    <label for="reg_id">상호</label>

                    <input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="">

                </div>



                <div class="mb-3">
                    <label for="reg_id">평점</label>
                    <input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="">
                    <label for="content">내용</label>
                    <textarea class="form-control" rows="5" name="content" id="content"
                        placeholder="내용을 입력해 주세요"></textarea>
                    <label for="reg_id">메뉴</label>
                    <input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="">
                    <label for="reg_id">영업시간</label>
                    <input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="">
                  
                </div>



                <div class="mb-3">

                    <label for="tag">주소</label>
                    <input type="text" class="form-control" name="tag" id="tag" placeholder="">
                    <label for="tag">전화번호</label>
                    <input type="text" class="form-control" name="tag" id="tag" placeholder="">

                </div>



            </form>

            <div class="btn">

                <button type="button" class="btn btn-sm btn-primary" id=>저장</button>
                <button type="button" class="btn btn-sm btn-primary" id="">다시쓰기</button>

            </div>

        </div>

    </article>
    
    <!-- <form action="">
        <h4>제목: </h4>
        <input type="text" name="title">
        <br>
        <h4>본문: </h4>
        <textarea cols=40 rows=10 name="body"></textarea>
        <br>
        <input type="submit" value="제출하기">
    </form> -->
</body>

</html>