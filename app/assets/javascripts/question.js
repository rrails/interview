var add_question = function(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $('#addquestlink').before(content.replace(regexp, new_id));
  $(".addchoices").trigger("click");
  $(".addchoices").trigger("click");
  $(".addchoices").trigger("click");
  $(".addchoices").trigger("click");
  $(".addchoices").removeClass('addchoices');
}

var add_choices = function(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $('#addquestlink').before(content.replace(regexp, new_id));
}
$(document).ready(function(){

var  delete_question = function(){
  var $this = $(this);
  $this.prev("input[type=hidden]").attr('value',true);
  $this.closest(".delquestion").hide();
}

$('.delquestion').on('click', '#del_question', delete_question);

});