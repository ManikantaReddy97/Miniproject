<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload page</title>
<link rel="icon" href="<%=request.getContextPath()%>/images/i1.png">
</head>
<body bgcolor="skyblue">
<%
	final String UPLOAD_DIRECTORY = "";
	if (ServletFileUpload.isMultipartContent(request)) {
		try {

			List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
			for (FileItem item : multiparts) {
				if (!item.isFormField()) {
					String name = new File(item.getName()).getName();
					item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
				}
			}
			request.setAttribute("message", "File Uploaded Successfully");
			System.out.println("File Uploaded Successfully");
		%>
		<h3><center> Your File has been uploaded successfully </center></h3>	
		<%} catch (final Exception e) {
			request.setAttribute("message", "File Upload Failed.");
			%>
			<h1> <center> A problem occurred while uploading the file </center></h1> 
	      <% }
	} else {
		request.setAttribute("message", "Sorry this Servlet only handles file upload request");
	}
%>
</body>
</html>