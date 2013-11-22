$(document).ready(function() {
  $("#battleForm").submit(function(event) {
    var $form = $(this); 
    $.ajax({
      type: "POST",
      url: "/battles",
      data: $form.serialize(),
      success: successCallback,
      error: errorCallback,
      dataType: "text"
    });
    event.preventDefault();
  });
  function successCallback(responseData) {
    $("#battle-result").text(responseData); 
  };
  function errorCallback(error) {
    $("#battle-result").text("Sorry, there was an error.");
  };
  $("#add-another").click(function(event) {
    $(this).hide();
    $(".combatant3").show();
    event.preventDefault();
  })
});