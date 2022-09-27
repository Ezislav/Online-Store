<!DOCTYPE html>
<html>
<head>
    <title>Online-Store</title>
</head>
<body>
<h1>Online-Store</h1><hr>
<h3>Detailed information about ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>User's product ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} rub. | <a href = "/product/${product.id}"> More...</a></p>
    </div>
    <#else>
    <h3>No product</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>