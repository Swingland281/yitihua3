<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章新增</title>
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5/css/bootstrap.min.css"/>
    <script src="${ctx}/static/jquery/jquery-1.9.1.min.js"></script>
</head>
<body>
<div class="container">
    <tags:nav/>
    <div class="page-header">
        <h3>文章管理${action}</h3>
    </div>
    <form method="post" action="${ctx}/post/${action}">
        <input type="hidden" name="id" value="0">
        <%--<input type="hidden" name="createdAt" value="0">--%>
        <%--<input type="hidden" name="lastModifiedAt" value="0">--%>
        <p>文章标题：<input type="text" class="inpu-medium" name="title" value="${post.title}"></p>
        <p>文章内容：<input type="text" class="input-medium" name="content" value="${post.content}"></p>
        <p>文章栏目：<input type="text" class="input-medium" name="categories" value="${post.categories}"></p>
        <p>创建者：<input type="text" class="input-medium" name="creator" value="${post.creator}"></p>
        <p>文章状态：<input type="text" class="input-medium" name="status" value="${post.status}"></p>
        <p><button type="submit" class="btn btn-primary">保存</button></p>
    </form>
</div>

<script src="${ctx}/static/bootstrap-3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
