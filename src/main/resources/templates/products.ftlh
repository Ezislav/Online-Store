<!DOCTYPE html>
<html>
<head>
    <title>Online Store</title>
</head>
<body>
<h1>Online-Store</h1><hr>
<#if user.email??>
    <h3>User name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Logout"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Administrator panel></a>
    </#if>
<#else>
    <a href="/login">Login</a></h1><hr>
</#if>
<h4>Goods from all over Russia</h4>
<form action="/" method="get">
    Search by ad name: <input type="text" name="title">
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href = "/product/${product.id}"> More...</a></p>
    </div>
<#else>
    <h3>No products</h3>
</#list>
<#if user.email??>
<hr>
<h3>Create a new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title ad: <input type="text", name="title"/><br><br>
        Description ad: <input type="text", name="description"/><br><br>
        Price: <input type="number", name="price"/><br><br>
        City: <input type="text", name="city"/><br><br>
        First photo: <input type="file", name="file1"/><br><br>
        Second photo: <input type="file", name="file2"/><br><br>
        Third photo: <input type="file", name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add a good"/>
    </form>
</#if>
</body>
</html>