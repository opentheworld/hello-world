$(function(){
	
	$(".kj").click(function(){
		alert(8);
	});
	
});

function checkLogin(){
	var userid = $("#code").val();
	if(userid==''){
		return "view/user/login.jsp";
	}else{
	    alert(userid);
	    $("#login").attr("href","view/index.jsp");
	    return false;
	}
}

function chaxun(){
	$.ajax({
		type:'post',
		url:'user/list.do?userid=2',
		success:function(data){
			alert(data);
		}
	});
}