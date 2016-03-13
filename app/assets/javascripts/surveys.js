$(function(){
'use strict';

var clickCounter = 1;

$(".question-button").on("click", function(){
   $(".ordered-list").append('<li class="question-selector"><input placeholder="Question Number" type="number" name="survey[questions_attributes]['+clickCounter+'][question_number]" id="survey_questions_attributes_'+clickCounter+'_question_number"><span class = "remove-button">x</span><select name="survey[questions_attributes]['+clickCounter+'][question_type]" id="survey_questions_attributes_'+clickCounter+'_question_type"><option value="Yes/No">Yes/No</option><option value="Short Answer">Short Answer</option><option value="Long Answer">Long Answer</option></select><input placeholder="Question" type="text" name="survey[questions_attributes]['+clickCounter+'][question_text]" id="survey_questions_attributes_'+clickCounter+'_question_text"><textarea placeholder="Description (Optional)" name="survey[questions_attributes]['+clickCounter+'][description]" id="survey_questions_attributes_'+clickCounter+'_description"></textarea></li>');
   clickCounter++;
   console.log(clickCounter);
}); //end of add question item JS

$(".remove-button").on("click", function(){
   $(this).parent().remove();
})//end of remove question item JS


});//end of line
