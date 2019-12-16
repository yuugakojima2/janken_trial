<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
	<%int a=(int)request.getAttribute("comHand"); %>
	<%int b=(int)request.getAttribute("myHand"); %>
	<%int c=(int)request.getAttribute("o"); %>
    <%int d=(int)request.getAttribute("p"); %>
    <%int e=(int)request.getAttribute("q"); %>

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
<%e=e+1; %>
<%}else if(a==2||b==0){%>
<%d=d+1; %>
<p>残念…あなたの負けです……</p>
<%}else if(a==1||b==2){ %>
<%d=d+1; %>
<p>残念…あなたの負けです……</p>
<%}else if(a==0||b==1){ %>
<%d=d+1; %>
<p>残念…あなたの負けです……</p>
<%}else{ %>
<p>おめでとう！あなたの勝ちです！</p>
<%c=c+1; %>
<%} %>

<h3>現在、<%=c %>勝<%=d %>敗<%=e %>分です！</h3>


<h2>次の手は？</h2>


	<form method="GET" action="<%=request.getContextPath()%>/mach">


<%String win=Integer.toString(c); %>
<%String lose=Integer.toString(d); %>
<%String draw=Integer.toString(e); %>
	<input type="hidden" name="win" value=<%=win %>>
        <input type="hidden" name="lose" value=<%=lose%>>
        <input type="hidden" name="draw" value=<%=draw %>>

        <input type="hidden" name="win" value=<%=c %>>
        <input type="hidden" name="lose" value=<%=d %>>
        <input type="hidden" name="draw" value=<%=e %>>
        <button type="submit" name="hand" value="0">グー</button>
		<button type="submit" name="hand" value="1">チョキ</button>
		<button type="submit" name="hand" value="2">パー</button>


</form>

</body>
</html>