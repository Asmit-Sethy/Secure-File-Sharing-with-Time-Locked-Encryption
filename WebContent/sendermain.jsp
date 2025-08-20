<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<STYLE>
@import url('https://fonts.googleapis.com/css?family=Merriweather|Raleway');
 * {
	 box-sizing: border-box;
}
 html, body {
	 margin: 0;
	 padding: 0;
	 font-family: 'Raleway', sans-serif;
}
 a {
	 text-decoration: none;
}
 .sm-navbar {
	 display: flex;
	 justify-content: space-between;
	 padding-bottom: 0;
	 height: 100px;
	 align-items: center;
}
 .sm-logo {
	 display: flex;
	 height: 100px;
	 width: 100px;
	 justify-content: center;
	 align-items: center;
	 transition: all 0.4s ease;
	 border-bottom: 3px solid transparent;
}
 .sm-logo:hover {
	 transition: all 0.4s ease;
	 cursor: pointer;
}
 .sm-logo:hover a {
	 color: #003e83;
	 transition: all 0.4s ease;
	 border-bottom: 3px solid #fdc62d;
}
 .sm-logo a {
	 font-size: 2em;
	 color: #fdc62d;
}
 .sm-nav-menu {
	 display: flex;
	 margin-right: 30px;
	 list-style-type: none;
	 flex-direction: row;
	 justify-content: flex-end;
}
 .sm-nav-menu li {
	 text-align: center;
	 margin: 20px auto;
	 text-transform: uppercase;
	 font-size: 0.8em;
	 letter-spacing: 2px;
	 margin: 0;
}
 .sm-nav-menu .nav-links {
	 margin-left: 50px;
	 margin-right: 20px;
	 color: #003e83;
	 padding: 8px;
	 transition: all 0.4s ease;
	 display: inline-block;
	 border-bottom: 3px solid #fdc62d;
}
 .sm-nav-menu .nav-links:hover {
	 background: #fdc62d;
	 padding: 8px;
	 transition: all 0.4s ease;
	 transform: scale(1.1);
}
.video-background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; /* Place the video behind other content */
}

video {
    object-fit: cover;
    width: 100%;
    height: 100%;
}

.content {
    Add your content styles here 
}
 
</STYLE>
</head>
<body>

 <div class="video-background">
        <video autoplay loop muted playsinline>
           <source src="image/" type="video/mp4">
            <!-- Add additional source tags for different video formats if needed -->
        </video>
    </div>
<nav class="sm-navbar">
  <div class="sm-logo">
  
  </div>
  <ul class="sm-nav-menu">
    <li><a href="#" class="nav-links">about</a></li>
    <li><a href="fileupload.jsp" class="nav-links">file Upload</a></li>
    <li><a href="viewuploadfilelist.jsp" class="nav-links">view upload Files</a></li>
    <li><a href="senderlogin.jsp" class="nav-links">Logout</a></li>
  </ul>
</nav>
</body>
</html>