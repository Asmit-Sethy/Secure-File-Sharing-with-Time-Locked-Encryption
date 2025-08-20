<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*, *::before, *::after{
	box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body{
  color:#222;
  font-family: system-ui, sans-serif;	
  padding-bottom: 50px;
}

.container{
  max-width: 1200px;
  margin: 0 auto;
}

.nav{
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  background-color: #222;
  transition: all 0.3s ease-in-out;
}

.nav .container{
  display: flex;
  justify-content: space-between;
  padding: 20px 0;
  transition: all 0.3s ease-in-out;
}

.nav ul {
  display: flex;
  align-items: center;
  list-style: none;
  justify-content: center;
}

.nav a{
  text-decoration: none;
  color: #fff;
  padding: 7px 15px;
  transition: all 0.3s ease-in-out;
}

.nav.active{
  background-color: #fff;
  box-shadow: 0  2px 10px rgba(0, 0, 0, 0.3);
}

.nav.active a{
  color: #222;
}

.nav.active .container{
  padding: 10px 0;
}

.nav a.current, .nav a:hover{
  color:#D80032;
  font-weight: bold;
}

.hero{
    background-image: url('https://images.pexels.com/photos/450035/pexels-photo-450035.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');
  background-repeat: no-repeat;
  background-size: cover;
  background-position: bottom-center;
  height:100vh;
  color:#fff;
  display: flex;
  align-items:center;
  justify-content: center;
  position: relative;
  margin-bottom: 20px;
  z-index: -2;
}

.hero::before{
  content:'';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: -1;
}

.hero h1{
  font-size: 46px;
  margin: -20px 0 20px;
}

.hero p{
  font-size: 20px;
  letter-spacing: 1px;
}

.content h2, .content h3{
  font-size: 150%;
  margin: 20px 0;
}

.content p {
  color: #555;
  line-height: 1.6;
  letter-spacing: 1px;
}
</style>
</head>
<body>
<nav class="nav">
  <div class="container">
    <h1 class="logo"><a href="#">My website</a></h1>
    <ul>
      <li><a href="# current">Home</a></li>
      <li><a href="receiverview.jsp">Files</a></li>
      <li><a href="receiverreglog.jsp">Logout</a></li>

    </ul>
  </div>
</nav>

<div class="hero">
  <div class="container">
    <h1>Welcome to our website</h1>
    <p></p>
  </div>
</div>


<script>
const nav = document.querySelector('.nav');

window.addEventListener('scroll', fixNav);

function fixNav(){
  if(window.scrollY > nav.offsetHeight + 150){
    nav.classList.add('active');
  }else{
    nav.classList.remove('active');
  }
}

</script>
</body>
</html>