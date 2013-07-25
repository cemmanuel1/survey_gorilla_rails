$(document).ready(function() {

  $('#add_question').click( function(event) {
    event.preventDefault();
    var $question_template = $("#question_template").clone();
    $question_template.find('input').removeAttr('type');
    // var seconds = new Date().getTime() / 1000;

    // var name ="survey[questions_attributes][" +  "seconds" + "][content]";
    // $question_template.find('input').attr('name', name);
    $('#new_survey').find('#add_question').before($question_template);

  })

});
