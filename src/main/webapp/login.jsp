<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>LOGIN_Page</title>

<style>
:root {
    --arrow-bg: rgba(255, 255, 255, 0.3);
    --arrow-icon: url(https://upload.wikimedia.org/wikipedia/commons/9/9d/Caret_down_font_awesome_whitevariation.svg);
    --option-bg: white;
    --select-bg: rgba(255, 255, 255, 0.2);
  }
  * {
    box-sizing: border-box;
  }
 
  /* <select> styles */
  select {
    /* Reset */
    appearance: none;
    border: 0;
    outline: 0;
    font: inherit;
    /* Personalize */
    width: 20rem;
    padding: 1rem 4rem 1rem 1rem;
    background: var(--arrow-icon) no-repeat right 0.8em center / 1.4em,
      linear-gradient(to left, var(--arrow-bg) 3em, var(--select-bg) 3em);
    color: rgb(8, 3, 3);
    border-radius: 0.25em;
    box-shadow: 0 0 1em 0 rgba(252, 252, 252, 0.2);
    cursor: pointer;
    /* Remove IE arrow */
    &::-ms-expand {
      display: none;
    }
    /* Remove focus outline */
    &:focus {
      outline: none;
    }
    /* <option> colors */
    option {
      color: inherit;
      background-color: var(--option-bg);
    }
  }
  

.button {
	position: relative;
	width: 120px;
	height: 40px;
	background-color: #000;
	display: flex;
	align-items: center;
	color: white;
	flex-direction: column;
	justify-content: center;
	border: none;
	padding: 12px;
	gap: 12px;
	border-radius: 8px;
	cursor: pointer;
}

.button::before {
	content: '';
	position: absolute;
	inset: 0;
	left: -4px;
	top: -1px;
	margin: auto;
	width: 128px;
	height: 48px;
	border-radius: 10px;
	background: linear-gradient(-45deg, #e81cff 0%, #40c9ff 100%);
	z-index: -10;
	pointer-events: none;
	transition: all 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.button::after {
	content: "";
	z-index: -1;
	position: absolute;
	inset: 0;
	background: linear-gradient(-45deg, #fc00ff 0%, #00dbde 100%);
	transform: translate3d(0, 0, 0) scale(0.95);
	filter: blur(20px);
}

.button:hover::after {
	filter: blur(30px);
}

.button:hover::before {
	transform: rotate(-180deg);
}

.button:active::before {
	scale: 0.7;
}

html {
	height: 100%;
}

body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: linear-gradient(#57606f, #2f3542);
}

.login-box {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	padding: 40px;
	transform: translate(-50%, -50%);
	background: rgba(0, 0, 0, .7);
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
}

.login-box h2 {
	margin: 0 0 30px;
	padding: 0;
	color: #fff;
	text-align: center;
}

.login-box .user-box {
	position: relative;
}

.login-box .user-box input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #fff;
	outline: none;
	background: transparent;
}

.login-box .user-box label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	pointer-events: none;
	transition: .5s;
}

.login-box .user-box input:focus ~ label, .login-box .user-box input:valid 
	 ~ label {
	top: -20px;
	left: 0;
	color: #03e9f4;
	font-size: 12px;
}

.login-box form a {
	position: relative;
	display: inline-block;
	padding: 10px 20px;
	color: #03e9f4;
	font-size: 16px;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	transition: .5s;
	margin-top: 40px;
	letter-spacing: 4px
}

.login-box a:hover {
	background: #03e9f4;
	color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4, 0 0
		100px #03e9f4;
}

.login-box a span {
	position: absolute;
	display: block;
}

.login-box a span:nth-child(1) {
	top: 0;
	left: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg, transparent, #03e9f4);
	animation: btn-anim1 1s linear infinite;
}

@
keyframes btn-anim1 { 0% {
	left: -100%;
}

50%,100%
{
left:100%;
}
}
.login-box a span:nth-child(2) {
	top: -100%;
	right: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(180deg, transparent, #03e9f4);
	animation: btn-anim2 1s linear infinite;
	animation-delay: .25s
}

@
keyframes btn-anim2 { 0% {
	top: -100%;
}
50%,100%
{
top:100%;
}
}
.login-box a span:nth-child(3) {
	bottom: 0;
	right: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(270deg, transparent, #03e9f4);
	animation: btn-anim3 1s linear infinite;
	animation-delay: .5s
}

@
keyframes btn-anim3 { 0% {
	right: -100%;
}
50%,100%
{right:100%;
}
}
.login-box a span:nth-child(4) {
	bottom: -100%;
	left: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(360deg, transparent, #03e9f4);
	animation: btn-anim4 1s linear infinite;
	animation-delay: .75s
}

@
keyframes btn-anim4 { 0% {
	bottom: -100%;
}
50%,100%
{
bottom:
100%;
}
}
</style>
</head>

<body>
	

	<div class="login-box">
		<h2>Login :</h2>
		
		<form action="loginTest" method="post" >
			<div class="user-box">
				<input type="text" name="username" required> <label>User
					name</label>
			</div>
			<div class="user-box">
				<input type="password" name="password" required> <label>Password</label>
			</div>
			 <div class="user-box">
      <select name="logtype">
        <option selected value="0">Login_Type</option>
        <option value="client">Client</option>
        <option value="admin">Admin</option>
      </select>
      </div>
      <br><br>
<%
	String msg = (String) request.getAttribute("msg");
	if (msg != null) {
		out.println("<h2 style='color:red;'>" + msg + "</h2>");
	}
	%>
			<center>
				<button class="button">SUBMIT</button>
			</center>
		</form>
	</div>
</body>
</html>>