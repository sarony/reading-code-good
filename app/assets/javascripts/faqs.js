$(document).ready(function(){
  $(".answers").hide();
  var showAnswers = function() { $(this).closest(".js-qa").find(".answers").slideToggle(); }
  $(".questions").on("click", showAnswers);
});