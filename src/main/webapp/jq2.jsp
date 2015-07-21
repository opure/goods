<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/jquery-1.11.3.js'/>"></script>
<script type="text/javascript">
	$(function() {
		$("#1").blur(function() {
			var value = $("#1").val();
		
			$.ajax({
				url : "/goods/jqueryservlet",
				data : {
			      
					val : value
				},
				async : true,
				cache : false,
				type : "POST",
				dataType : "json",
				success : function(result) {
					alert(result);
					if (result)
						$("label").text("好人");
					else
						$("label").text("好人");
				}
			});
		});
	});
</script>
</head>

<body>
	用户名：
	<input type="text" name="name" id="1" /><label></label><br />
	 年  龄：
	<input type="text" name="age" />
	<br />
</body>
</html>