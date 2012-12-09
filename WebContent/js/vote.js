$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
    $('#project1, #project2').hide(400);
    switch(optionValue)
    {
    case "1":
      $("#project1").show(400);
      break;
    case "2":
      $("#project2").show(400);
      break;
    }
  });

});

function showModal(number)
{
	$('#' + 'modal' + number).modal();
}

function ajaxSendPost(selected, button)
{
	var data = $('#' + selected).val();
    $.post('vote-servlet', {select:data, question:selected});
    
	voteSuccessed(button);
	$('#' + selected).attr("disabled", "disabled");
}

function voteSuccessed(button)
{
	$('#' + button).attr("disabled", "disabled");
	$('#' + button).removeClass("btn btn-large btn-primary").addClass("btn btn-large btn-danger");
	$('#' + button).html("<h2>Vote Successed</h2>");
}
