<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>fmt</title>
</head>
<body>

	1.parseNumber
	<br>
	<c:set var="Amount" value="786.970" />

	<fmt:parseNumber var="j" type="number" value="${Amount}" />
	<p>
		<i>Amount is:</i>
		<c:out value="${j}" />
	</p>

	<fmt:parseNumber var="j" integerOnly="true" type="number"
		value="${Amount}" />
	<p>
		<i>Amount is:</i>
		<c:out value="${j}" />
	</p>
	<br> 2.formatNumber
	<br>
	<c:set var="Amount" value="9850.14115" />
	<p>
		Formatted Number-1:
		<fmt:formatNumber value="${Amount}" type="currency" />
	</p>
	<p>
		Formatted Number-2:
		<fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" />
	</p>
	<p>
		Formatted Number-3:
		<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" />
	</p>
	<p>
		Formatted Number-4:
		<fmt:formatNumber type="number" maxFractionDigits="6"
			value="${Amount}" />
	</p>
	<p>
		Formatted Number-5:
		<fmt:formatNumber type="percent" maxIntegerDigits="4"
			value="${Amount}" />
	</p>
	<p>
		Formatted Number-6:
		<fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" />
	</p>
	<br> 3.parseDate
	<br>
	<c:set var="date" value="12-08-2016" />
	<fmt:parseDate value="${date}" var="parsedDate" pattern="dd-MM-yyyy" />
	<p>
		<c:out value="${parsedDate}" />
	</p>
	<br> 4. setTimeZone
	<br>
	<c:set var="date" value="<%=new java.util.Date()%>" />
	<p>
		<b>Date and Time in Indian Standard Time(IST) Zone:</b>
		<fmt:formatDate value="${date}" type="both" timeStyle="long"
			dateStyle="long" />
	</p>
	<fmt:setTimeZone value="GMT-10" />
	<p>
		<b>Date and Time in GMT-10 time Zone: </b>
		<fmt:formatDate value="${date}" type="both" timeStyle="long"
			dateStyle="long" />
	</p>
	<br>
</body>
</html>