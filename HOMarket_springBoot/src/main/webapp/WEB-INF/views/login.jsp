

<body onload='document.f.j_username.focus();'>
	<div class="row sign" style="padding-bottom: 30px;">
		<div class="row " style="padding-top: 60px; margin-top: 20px;">
			<div class="container col-lg-4 col-lg-offset-4 "
				style="text-align: center;">

				<h3>Login with Username and Password</h3>
				<form name='f'
					action='/SpringMVCHibernateCRUD/j_spring_security_check'
					method='POST'>
					<table>
						<tr>
							<td>User:</td>
							<td><input type='text' name='j_username'
								Class="form-control pass" value=''></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type='password' Class="form-control pass"
								name='j_password' /></td>
						</tr>
						<tr>
							<td colspan='2'>
								<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
									<input name="login"
										class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"
										type="submit" value="Login" />
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>