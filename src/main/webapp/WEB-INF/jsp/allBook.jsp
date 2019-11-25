<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/28
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--利用BootStrap CDN在线美化界面--%>
<head>
    <title>书籍展示</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->

    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表------显示所有书籍</small>
                    </h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <%--toAddBook--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-8 column">
                <%--                查询书籍--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                    <span style="color: red;font-weight: bold;">${error}</span>
                    <input type="text" id="searchBook" class="form-control" name="queryBookName" placeholder="请输入要查询的书籍名称" >
                    <input type="submit" class="btn btn-primary" value="查询">
                    <%--                   <input type="submit" value="查询" class="btn btn-primary">--%>
                </form>
            </div>
<%--            <div class="col-md-8 column">--%>
<%--&lt;%&ndash;                查询书籍&ndash;%&gt;--%>
<%--               <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">--%>
<%--&lt;%&ndash;                   <input type="text" class="form-control input-lg"><span class="input-group-addon btn btn-primary">搜索</span>&ndash;%&gt;--%>
<%--                   <input type="text" class="form-control" name="queryBookName" placeholder="请输入要查询的书籍名称" >--%>
<%--                    <span class="input-group-addon btn btn-primary">搜索</span>--%>
<%--&lt;%&ndash;                   <input type="submit" value="查询" class="btn btn-primary">&ndash;%&gt;--%>
<%--               </form>--%>
<%--            </div>--%>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍描述</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%--            书从数据库查询出来，从这个list中遍历出来：foreach--%>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                                 &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/book/toDeleteBook/${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
