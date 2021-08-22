$(function(){
    $("#btn-login").click(function(){
		let email = $("#email-login").val();
		let password = $("#password-login").val();

		$.post("login.php?login",{email:email, password:password,}, function(response){
			answer=JSON.parse(response);

			if(answer.error!="")
			{
				$("#answer-login").html(answer.error);
			}
			else
			{
				window.location.assign(answer.data);
			}
		});
	});
});