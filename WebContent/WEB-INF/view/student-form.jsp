<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
	First Name: <form:input path="firstName"/>
	
	<br><br>
	
	Last Name: <form:input path="lastName"/>
	
	<br><br>
	
	
	<form:select path="country">
		<form:options items="${student.countryOptions}"/>
	
	<br><br>
	
	</form:select>
	
	<br><br>
	
	Favorite Language:
	Java <form:radiobutton path="favoriteLanguage" value="Java"/>
	C# <form:radiobutton path="favoriteLanguage" value="C#"/>
	Python <form:radiobutton path="favoriteLanguage" value="Python"/>
	Javascript <form:radiobutton path="favoriteLanguage" value="Javascript"/>
	
	
	<br><br>
	
	Favorite OS:
	Windows<form:checkbox path="favoriteOperatingSystem" value= "Windows"/>
	MacOS<form:checkbox path="favoriteOperatingSystem" value= "Mac"/>
	Linux<form:checkbox path="favoriteOperatingSystem" value= "Linux"/>
	TempleOS<form:checkbox path="favoriteOperatingSystem" value= "TempleOS"/>
	
	<input type="submit" value="Submit"/>
	

	</form:form>
	
</body>

</html>