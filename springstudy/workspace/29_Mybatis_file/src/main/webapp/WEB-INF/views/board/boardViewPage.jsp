<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form>
		
		작성자<br/>
		<input type="text" name="writer" value="${boardDto.writer}" readonly /><br/><br/>
		제목<br/>
		<input type="text" name="title" value="${boardDto.title}"/><br/><br/>
		내용<br/>
		<input type="text" name="content" value="${boardDto.content}"/><br/><br/>
		첨부 이미지<br/>
		<img alt="${boardDto.filename}" src="resources/storage/${boardDto.filename}">
		
	</form>

</body>
</html>