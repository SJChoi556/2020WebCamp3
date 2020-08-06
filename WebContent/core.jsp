<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Core</title>
</head>
<body>
	<h1>Hello, test3!</h1>
	<br>
	<h2>JSTL Core</h2>
	<br>
	<hr>
	1. c:out : display the result of an expression
	<br>
	<c:out value="${'Welcome to javaTpoint'}" />
	<br> 2. c:import : include the content of any resources
	<br> 3. c:set : it evaluates the expression and use the result to
	set a value of java.util.Map or JavaBean.
	<br>
	<c:set var="Income" scope="session" value="${4000*4}" />
	<c:out value="${Income}" />
	<br> 4. c:remove : removing the specified variable from a
	particular scope.
	<br>
	<c:set var="income2" scope="session" value="${4000*4}" />
	<p>
		Before Remove Value is:
		<c:out value="${income2}" />
	</p>
	<c:remove var="income2" />
	<p>
		After Remove Value is:
		<c:out value="${income2}" />
	</p>
	<br> 5. c:catch : Catches any Throwable exceptions that occurs in
	the body and optionally exposes it.
	<br>
	<c:catch var="catchtheException">
		<%
			int x = 2 / 0;
		%>
	</c:catch>
	<c:if test="${catchtheException != null}">
		<p>
			The type of exception is : ${catchtheException} <br /> There is an
			exception: ${catchtheException.message}
		</p>
	</c:if>
	<br> 6. c:if
	<br>
	<c:set var="income" scope="session" value="${4000*4}" />
	<c:if test="${income > 8000}" />
	<p>
		My income is:
		<c:out value="${income}" />
	<p>
		<br> 7. c:choose : similar to siwtch(when / otherwise)<br>
		<c:set var="income" scope="session" value="${4000*4}" />
	<p>
		Your income is :
		<c:out value="${income}" />
	</p>
	<c:choose>
		<c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>
		<c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>
		<c:otherwise>  
       Income is undetermined...  
    </c:otherwise>
	</c:choose>
	<br> 8. c:forEach : while / do-while / for
	<br>
	<c:forEach var="j" begin="1" end="5">  
    Item <c:out value="${j}" />
		<p>
	</c:forEach>
	<br> 9. c:forTokens : iterates over tokens which is separated by
	the supplied delimeters.
	<br>
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">
		<c:out value="${name}" />
		<p>
	</c:forTokens>
	<br> 10. c:param : add the parameter in a containing 'import'
	tag's URL.
	<br> 11. c:redirect : redirect to the page
	<br> 12. c:url : creates a URL with optional query parameter
	<br>
	<c:url value="/RegisterDao.jsp" />
	<br>

</body>
</html>