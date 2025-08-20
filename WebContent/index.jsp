<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

html {
  width: 100%;
}

body {
  min-height: 100vh;
}

nav {
  position: fixed;
  background: rgb(26, 45, 142);
  height: 80px;
  width: 100%;
}

nav > ul {
  gap: 30px;
  float: right;
  margin-right: 20px;
}

nav > ul > li {
  display: inline-block;
  line-height: 80px;
  margin: 0 5px;
}

.nav-item {
  color: white;
  font-size: 17px;
  padding: 10px 13px;
  border-radius: 3px;
  text-transform: uppercase;
}

.active, .nav-item:hover {
  background: rgb(49, 68, 160);
  transition: 0.5s;
}

.logo {
  color: white;
  font-size: clamp(1.5rem, 2.5vw, 2rem);
  font-weight: 500;
  line-height: 80px;
  padding: 0 50px;
  text-transform: uppercase;
} 

.checkbtn {
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  cursor: pointer;
  display: none;
}

#check {
  display: none;
}

section {
  min-height: 100vh;
  width: 100%;
  background: url(https://images.pexels.com/photos/3880225/pexels-photo-3880225.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover; 
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

quote {
  background: rgba(47, 49, 65, 0.5);
  color: white;
  padding: 70px 50px;
  text-align: center;
  border-radius: 20px;
  box-shadow: 10px 16px 42px -23px rgba(0,0,0,0.44);
}

h1 {
  font-size: clamp(1.5rem, 2.5vw, 2.5rem);
  margin-bottom: 1rem;
}

p {
  font-size: clamp(0.7rem, 2.5vw, 1rem);
}

@media screen and (max-width: 950px) {
  
  .logo {
    padding-left: 40px;
  }
  
  .nav-item {
    font-size: 16px;
  }
}

@media screen and (max-width: 850px) {
  
  .checkbtn {
    display: block;
  }
  
  nav > ul {
    position: fixed;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: start;
    gap: 40px;
    width: 100%; 
    height: 100vh;
    background: #2c3e50;
    top: 80px;
    left: 100%;
    text-align: center;
    transition: all 0.5s;
    overflow-y: scroll;
    padding: 70px 0 80px;
  }
  
  nav > ul > li {
    display: block;
    line-height: 30px;
  }
  
  .nav-item {
    font-size: 20px;
  }
  
 .active, .nav-item:hover {
    background: none;
    color: #0082e6;
  }
  
  #check:checked ~ ul {
    left: 0;
  }
}


</style>
</head>
<body>

  <nav>
    <input type="checkbox" id="check">
    <label for="check" class="checkbtn"><i class="fas fa-bars"></i></label>
    <label class="logo">STC-FSS</label>
    <ul>
      <li><a class="nav-item" href="#">Home</a></li>
      <li><a class="nav-item" href="senderlogin.jsp">Sender</a></li>
      <li><a class="nav-item" href="receiverreglog.jsp">Receiver</a></li>
      <li><a class="nav-item" href="adminlogin.jsp">Admin</a></li>
      <li><a class="nav-item" href="#">Contact</a></li>
      
    </ul>
  </nav>
  
  <section>
    <quote>
      <h1>"Welcome to SecureTransfer v2.0 - Military Edition"</h1>
    <p>Indian Military</p>
    </quote>
  </section>
  
<script>
const navItems = document.querySelectorAll('.nav-item');

navItems.forEach(e => {
  e.addEventListener('click', () => {
    document.querySelector('.active')?.classList.remove("active");
    e.classList.add("active");
  })
})
</script>
</body>
</html>