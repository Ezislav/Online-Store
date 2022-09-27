<!DOCTYPE html>
<html>
<head>
    <title>Online-Store</title>
</head>
<body>
<h1>Online-Store</h1><hr>
<h4>Authorization</h4>
<form action="/login" method="post">
    Эл. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Login(entry)"/>
</form>
<a href="/registration">Registration</a>
</body>
</html>