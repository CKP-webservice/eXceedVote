
function loadAdminAccountPage() {
	$('#panel').load('AdminAccountPage.jsp #t1');
}

function loadAdminShowRanking() {
	$('#panel').load('AdminShowRanking.jsp #t1');
}

function loadAdminViewResult() {
	$('#panel').load('AdminViewResult.jsp #t1');
}

function loadAdminQuestionPage() {
	$('#panel').load('AdminQuestionPage.jsp #t1');
}

function deleteUser(id) {
	$.post('deleteuser-servlet', {id:id}, function deleteUserSuccessed()
	{
		$('#panel').load('AdminAccountPage.jsp #t1');
	});
}

function deleteQuestion(id) {
	$.post('deletequestion-servlet', {id:id}, function deleteQuestionSuccessed()
	{
		$('#panel').load('AdminQuestionPage.jsp #t1');
	});
}

function deleteVote(id) {
	$.post('deletevote-servlet', {id:id}, function deleteVoteSuccessed()
	{
		$('#panel').load('AdminViewResult.jsp #t1');
	});
}

function showAddAccountModal() {
	$('#account-modal').modal();
}

function showAddQuestionModal() {
	$('#question-modal').modal();
}

function sendAddAccount() {
	var username = $('#username').val();
	var password = $('#password').val();
	var firstname = $('#firstname').val();
	var lastname = $('#lastname').val();
	var role = '';
	if($('#role').val() == '') role = 'voter';
	else role = $('#role').val();
	$.post('addaccount-servlet', {username:username, password:password, firstname:firstname, lastname:lastname, role:role}, function addAccountSuccessed()
	{
		$('#panel').load('AdminAccountPage.jsp #t1');
		$('#account-modal').load('AdminAccountPage.jsp #account-modal');
	});
}

function sendAddQuestion() {
	var question = $('#questionname').val();
	$.post('addquestion-servlet', {question:question}, function addQuestionSuccessed()
	{
		$('#panel').load('AdminQuestionPage.jsp #t1');
		$('#question-modal').load('AdminAccountPage.jsp #question-modal');
	});
}