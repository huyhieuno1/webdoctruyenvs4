<!-- LoginForm ------>
<div id="id02" class="modal row">
	<div class="col-md-4"></div>
	<form class="modal-content animate col-md-4" action="/action_page.php">
		<div class="imgcontainer">
			<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
			<img src="./images/img_avatar1.png" alt="Avatar" class="avatar">
		</div>

		<div class="containerr">
			<label><b>Username</b></label>
			<input class="form-control" type="text" placeholder="Enter Username" name="uname" required>
			<br />
			<label><b>Password</b></label>
			<input class="form-control" type="password" placeholder="Enter Password" name="psw" required>
			<br />
			<label><b>Fullname</b></label>
			<input class="form-control" type="text" placeholder="Enter Fullname" name="fname" required>
			<br /><br />
			<button class="btn enterLogin" type="submit">Login</button>
		</div>
	</form>
	<div class="col-md-4"></div>
</div>
<script>

</script>
<!--end LoginForm ------>