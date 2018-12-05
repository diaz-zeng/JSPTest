/**
 * 用户注册表单校验
 * @returns
 */
function reg(){
	var regName = /^\w{3,}$/;
	var passwd = /^\w{6,20}$/;
	var name = myform.username.value;
	var passwd = myform.password.value;
	var confirmPwd = myform.confirmPassword.value;
	if(!regName.test(name)){
		return false;
	}
	if(passwd != confirmPwd){
		return false;
	}
	myform.submit();
}