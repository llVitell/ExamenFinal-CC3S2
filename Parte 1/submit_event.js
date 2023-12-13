$("#onSubmit").click(function() {
	
	var user = $("#foo input.user").val();
	var pass = $("#foo input.pass").val();

	$.post("/login", {
		user: user,
		pass: pass
	}, function(data) {
		if (data.success) {
            alert("Usuario conectado")
		} else {
            alert("Usuario o contraseña invalido")
		}
	});
});