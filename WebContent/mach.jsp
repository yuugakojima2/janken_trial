<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>コンピュータとじゃんけん！</title>
</head>
<body>

	<h1>何を出す？</h1>

	<form method="GET" action="<%=request.getContextPath()%>/mach">

        <button type="submit" name="hand" value="0">グー</button>
		<button type="submit" name="hand" value="1">チョキ</button>
		<button type="submit" name="hand" value="2">パー</button>

</form>

</body>
</html>