<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1>
                <small>修改书籍</small>
            </h1>
        </div>
    </div>
<%--    出现问题：我们提交了修改的SQL请求，但是修改失败，初次考虑是事务问题，但是仍然失败--%>
<%--    看一下SQL语句，能否执行成功，SQL执行失败，修改未完成--%>
<%--    前端传递隐藏域--%>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${QrBook.bookID}">
        <div class="form-group">
            <label>书籍名称：</label>
            <input type="text" name="bookName" class="form-control" value="${QrBook.bookName}" required>
        </div>
        <div class="form-group">
            <label>书籍数量：</label>
            <input type="text" name="bookCounts" class="form-control" value="${QrBook.bookCounts}" required>
        </div>
        <div class="form-group">
            <label>书籍描述：</label>
            <input type="text" name="detail" class="form-control" value="${QrBook.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="提交">
        </div>
        <%--        <div class="form-group">--%>
        <%--            <label for="bkname">提交</label>--%>
        <%--            <input type="text" class="form-control" id="bkname">--%>
        <%--        </div>--%>
    </form>
</div>
</body>
</html>
