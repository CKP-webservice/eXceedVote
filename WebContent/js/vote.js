
function showModal(number)
{
	$('#' + 'modal' + number).modal();
}

function ajaxSendPost(selected, button)
{
	var data = $('#question' + selected + '-select').val();
    $.post('vote-servlet', {select:data, question:selected}, function(result)
    {
    	var remain = "#remain" + selected;
    	$(remain).text('Ballot Remaining : ' + result);
    	if(result == 0)
    	{
    		voteSuccessed(button);
    		$('#question' + selected + '-select').attr("disabled", "disabled");
    	}
    });
}

function voteSuccessed(button)
{
	$('#' + button).attr("disabled", "disabled");
	$('#' + button).removeClass("btn btn-large btn-primary").addClass("btn btn-large btn-danger");
	$('#' + button).html("<h2>Vote Successed</h2>");
}
