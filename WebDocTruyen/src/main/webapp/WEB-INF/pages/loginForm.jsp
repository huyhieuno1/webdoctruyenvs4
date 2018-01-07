<!-- LoginForm ------>
<div id="id01" class="modal row">
	<div class="col-md-4"></div>
	<form class="modal-content animate col-md-4" action="/action_page.php">
		<div class="imgcontainer">
			<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
			<img src="./images/img_avatar2.png" alt="Avatar" class="avatar">
		</div>

		<div class="containerr">
			<label><b>Username</b></label>
			<input class="form-control" type="text" placeholder="Enter Username" name="uname" required>
			<br />
			<label><b>Password</b></label>
			<input class="form-control" type="password" placeholder="Enter Password" name="psw" required>

			<br />
			<input type="checkbox" checked="checked"> Remember me
			<br /><br />
			<button class="btn enterLogin" type="submit">Login</button>
		</div>
	</form>
	<div class="col-md-4"></div>
</div>
<script>

</script>
<!--end LoginForm ------>