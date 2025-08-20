<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap");

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background-image: url("https://wallpapercave.com/wp/wp8834188.jpg");
   background-size: cover;
  background-repeat: no-repeat;
    background-position: center;
}

header {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  height: 50px;
  background-color: #ddd;
  border-bottom: 1px solid #bbb;
  font-size: 24px;
  font-weight: 700;
}

.logo {
  color: rgb(161, 60, 255);
  font-size: 18px;
}

.myName ,a{
  color: #333;
  font-size: 14px;
  font-family: cursive;
  margin-left: 14px;
  transition: color 0.3s;
  text-decoration: none;
}

.myName , a:hover {
  color: darkolivegreen;
  cursor: pointer;
}

.tab {
  display: flex;
}

.tab1 {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  background-color: #ddd;
  position: absolute;
  top: 50px;
  padding: 16px 10px;
  display: none;
}

.t1 {
  font-size: 18px;
  margin-top: 12px;
  padding-bottom: 4px;
  border-bottom: 1px solid #bbb;
}

.nav {
  writing-mode: vertical-lr;
  cursor: pointer;
  transition: color 0.3s;
  display: none;
}

.nav:hover {
  color: brown;
}

.active {
  display: block;
}

@media screen and (max-width: 568px) {
  .tab {
    display: none;
  }
  .nav {
    display: block;
  }
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

</style>
</head>
<body>

<div class="video-background">
        <video autoplay loop muted playsinline>
           <source src="image/admin.mp4" type="video/mp4">
            <!-- Add additional source tags for different video formats if needed -->
        </video>
    </div>
<header>
      <div class="logo">Admin Home Page</div>
      <div class="tab">
        <div class="myName">Home</div>
        <div class="myName"><a href="viewreceverdetails.jsp">User List</a></div>
        <div class="myName"><a href="viewdocument.jsp">Documents List</a></div>
        <div class="myName"><a href="adminlogin.jsp">Logout</a></div>
      </div>
      <div class="nav">|||</div>
    </header>
  
    <script>
    const $ = document;
    let menu1 = $.getElementsByClassName("tab")[0];
    let menu2 = $.getElementsByClassName("tab1")[0];
    let logo = $.getElementsByClassName("nav")[0];

    // show and hide menu
    logo.addEventListener("click", () => {
      menu2.classList.toggle("active");
    });

    // close menu if width is more than 569
    window.addEventListener("resize", () => {
      let x = window.innerWidth;
      if (x >= 569) {
        menu2.classList.remove("active");
      }
    });

    </script>
</body>
</html>