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

function addAccount() {
	
}

function addQuestion() {
	
}