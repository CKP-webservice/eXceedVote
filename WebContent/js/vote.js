$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
      alert(optionValue);
    $('#project1, #project2, #project3, #project4, #project5, #project6, #project7, #project8, #project9, #project10').hide(400);
    switch(optionValue)
    {
    case "1":
      $("#project1").show(400);
      break;
    case "2":
      $("#project2").show(400);
      break;
    case "3":
        $("#project3").show(400);
        break;
    case "4":
        $("#project4").show(400);
        break;
    case "5":
        $("#project5").show(400);
        break;
    case "6":
        $("#project6").show(400);
        break;
    case "7":
        $("#project7").show(400);
        break;
    case "8":
        $("#project8").show(400);
        break;
    case "9":
        $("#project9").show(400);
        break;
    case "10":
        $("#project10").show(400);
        break;
    }
  });

  $('button').click(function()
  { 	  
	  $('#modal1').modal();
  });
  
});

function callModal(modal)
{
	$('#' + modal).modal();
}

function ajaxSendPost(selected, button)
{
	var data = $('#' + selected).val();
	alert(data);
	alert(selected);
    $.post('vote-servlet', {select:data, question:selected}, voteSuccessed());
    
	voteSuccessed(button);
	$('#' + selected).attr("disabled", "disabled");
}

function voteSuccessed(button)
{
	$('#' + button).attr("disabled", "disabled");
	$('#' + button).removeClass("btn btn-large btn-primary").addClass("btn btn-large btn-danger");
	$('#' + button).html("<h2>Vote Successed</h2>");
}