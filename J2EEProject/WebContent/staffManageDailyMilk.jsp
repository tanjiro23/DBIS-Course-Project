<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sell Milk Table</title>
</head>



<style>
@import url("https://fonts.googleapis.com/css?family=Nunito:300");
body {
  margin: 0;
  padding-bottom: 20px;
  font-family: Times New Roman, sans-serif;
  color: white;
  background: #20b2aa;
}
.section {
  padding: 1rem;
}
.header {
  position: relative;
  text-align: center;
}
.header__text {
  position: relative;
  padding: 3rem 0 3rem;
}
.header__text > h1 {
  margin: 0;
  font-size: 2.5rem;
}
.header > .trapezoid {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-position: top center;
  background-attachment: fixed;
}
form {
  margin: 0 auto;
  max-width: 16rem;
  overflow: auto;
}
form > * + * {
  margin-top: 1rem;
}
form > input {
  border: 0;
  border-bottom: 1px solid white;
  border-radius: 0;
  width: 100%;
  height: 2rem;
  padding: 0 0 0.25rem 0;
  font-size: 1rem;
  color: white;
  background: #20b2aa;
}
form > input:focus {
  outline: none;
}
form > input::placeholder {
  color: white;
}
form > button {
  margin-top: 2rem;
  border: 0;
  border-radius: 200px;
  width: 100%;
  padding: 0.85rem;
  font-size: 1rem;
  color: #20b2aa;
  background: white;
}
form > button:focus {
  outline: none;
}
form > p {
  margin: 1rem 0 0;
  text-align: center;
  color: white;
}
.sign-up {
  display: none;
}
.opposite-btn1,
.opposite-btn2 {
  cursor: pointer;
}

</style>


<body>
<h1>Welcome to DAIRY MANAGEMENT portal</h1>
 <header class="section header">
    <div class="trapezoid"></div>
    
    <div class="header__text">
      <h1>MILK SELL DETAILS</h1>
    </div>
  </header>
<form action="staff_DailyMilk" method="post">
			<table style="with: 50%">
				</tr>
					<tr>
					<td>s_code</td>
					<td><input type="text" name="s_code" /></td>
				</tr>
				<tr>
					<td>user_id</td>
					<td><input type="text" name="user_id" /></td>
				</tr>
				<tr>
					<td>date</td>
					<td><input type="text" name="date" /></td>
				</tr>

				<tr>
					<td>cattle type</td>
					<td><input type="text" name="cattle" /></td>
				</tr>
					<tr>
					<td>qty</td>
					<td><input type="text" name="qty" /></td>
				<tr>
					<td>fat</td>
					<td><input type="text" name="fat" /></td>
				</tr>


		</table>
			<input type="submit" value="Submit" /></form>
</body>
</html>