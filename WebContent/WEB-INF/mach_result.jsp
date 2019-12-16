<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
	<%int a=(int)request.getAttribute("comHand"); %>
	<%int b=(int)request.getAttribute("myHand"); %>
	<%int c=(int)request.getAttribute("win"); %>
    <%int d=(int)request.getAttribute("lose"); %>
    <%int e=(int)request.getAttribute("draw"); %>

<html lang="ja">
<head>
<meta charset="UTF-8">
<title>じゃんけん結果</title>
</head>
<body>
<h3>相手の手は</h3>
<%if(a==0){%>
<h2>グー</h2>
<%}else if(a==1){%>
<h2>チョキ</h2>
<%}else{%>
<h2>パー</h2>
<%}%><h3>でした！</h3>



<%if(a==b){%>
<p>あいこです！</p>
<%=e=e+1 %>
<%}else if(a==2||b==0){%>
<%=d=d+1 %>
<p>残念…あなたの負けです……</p>
<%}else if(a>=b){ %>
<%=d=d+1%>
<p>残念…あなたの負けです……</p>
<%}else{ %>
<%=c=c+1 %>
<p>おめでとう！あなたの勝ちです！</p>
<%} %>

<h3>現在、<%=c %>勝<%=d %>敗<%=e %>分です！</h3>


<h2>次の手は？</h2>
	<form method="GET" action="<%=request.getContextPath()%>/mach">

        <input type="hidden" name="win" value=<%=c %>>
        <input type="hidden" name="lose" value=<%=d %>>
        <input type="hidden" name="draw" value=<%=e %>>
        <button type="submit" name="hand" value="0">グー</button>
		<button type="submit" name="hand" value="1">チョキ</button>
		<button type="submit" name="hand" value="2">パー</button>


</form>

</body>
</html>