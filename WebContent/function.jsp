<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Function</title>
</head>
<body>
	1.contains()
	<br>
	<c:set var="String" value="Welcome to javatpoint" />
	<c:if test="${fn:contains(String, 'javatpoint')}">
		<p>Found javatpoint string
		<p>
	</c:if>
	<c:if test="${fn:contains(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string
		<p>
	</c:if>
	<br> 2.containsIgnoreCase()
	<br>
	<c:set var="String" value="Welcome to javatpoint" />
	<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
		<p>Found javatpoint string
		<p>
	</c:if>
	<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string
		<p>
	</c:if>
	<br> 3.endsWith()
	<br>
	<c:set var="String" value="Welcome to JSP programming" />
	<c:if test="${fn:endsWith(String, 'programming')}">
		<p>String ends with programming
		<p>
	</c:if>
	<c:if test="${fn:endsWith(String, 'JSP')}">
		<p>String ends with JSP
		<p>
	</c:if>
	<br> 4.escapeXML()
	<br>
	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>With escapeXml() Function:</p>
	<p>string-1 : ${fn:escapeXml(string1)}</p>
	<p>string-2 : ${fn:escapeXml(string2)}</p>

	<p>Without escapeXml() Function:</p>
	<p>string-1 : ${string1}</p>
	<p>string-2 : ${string2}</p>
	<br> 5.indexOf()
	<br>
	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>Index-1 : ${fn:indexOf(string1, "first")}</p>
	<p>Index-2 : ${fn:indexOf(string2, "second")}</p>
	<br> 6. trim()
	<br>
	<c:set var="str1" value="Welcome to JSP        programming         " />
	<p>String-1 Length is : ${fn:length(str1)}</p>

	<c:set var="str2" value="${fn:trim(str1)}" />
	<p>String-2 Length is : ${fn:length(str2)}</p>
	<p>Final value of string is : ${str2}</p>
	<br> 7. startsWith()
	<br>
	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
	The string starts with "The": ${fn:startsWith(msg, 'The')}
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}
	<br> 8. split()
	<br>
	<c:set var="str1" value="Welcome-to-JSP-Programming." />
	<c:set var="str2" value="${fn:split(str1, '-')}" />
	<c:set var="str3" value="${fn:join(str2, ' ')}" />
	<p>String-3 : ${str3}</p>
	<br> 9. toLowerCase()
	<br>
	<c:set var="string" value="Welcome to JSP Programming" />
	${fn:toLowerCase("HELLO,")} ${fn:toLowerCase(string)}
	<br> 10. substringAfter() / substringBefore()
	<br>
	<c:set var="string" value="Nakul Jain" />
	${fn:substringAfter(string, "Nakul")}
	<br>
	<c:set var="string"
		value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL." />
	${fn:substringBefore(string, "developed")}
	<br> 11. length() / replace()
	<br>

</body>
</html>