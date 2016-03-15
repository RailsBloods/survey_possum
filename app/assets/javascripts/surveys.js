$(function(){
'use strict';

//hamburger menu
  $('#survey-menu-bar').click(function(){
    $('.left-survey-nav').toggleClass('show');
    console.log("this works");
});

//when you hover on a survey box, it changes
  $('.survey-box').hover(function(){
    $(this).toggleClass('hover');
    $(this).children().toggleClass('hover');
  });


//adds a new question
  var clickCounter = 1;
  $(".question-button").on("click", function(){
     console.log('hello');
     $(".surveys-ordered-list").append('<li class="question-selector"><input placeholder="#" type="number" name="survey[questions_attributes]['+clickCounter+'][question_number]" id="survey_questions_attributes_'+clickCounter+'_question_number"><select name="survey[questions_attributes]['+clickCounter+'][question_type]" id="survey_questions_attributes_'+clickCounter+'_question_type"><option value="">Select Question Type</option><option value="Yes/No">Yes/No</option><option value="Short Answer">Short Answer</option><option value="Long Answer">Long Answer</option></select><label for="survey_questions_attributes_'+clickCounter+'_required">Is This Question Required?</label>               <span class = "question-required"><input name="survey[questions_attributes]['+clickCounter+'][required]" type="hidden" value="0"><input type="checkbox" value="1" name="survey[questions_attributes]['+clickCounter+'][required]" id="survey_questions_attributes_'+clickCounter+'_required"></span><i class="fa fa-chevron-up fa-2x"></i><i class="fa fa-chevron-down fa-2x"></i><span class = "remove-button">x</span><br><input placeholder="What question do you want to ask?" type="text" name="survey[questions_attributes]['+clickCounter+'][question_text]" id="survey_questions_attributes_'+clickCounter+'_question_text"><textarea placeholder="Optional Description" name="survey[questions_attributes]['+clickCounter+'][description]" id="survey_questions_attributes_'+clickCounter+'_description"></textarea></li>');
     clickCounter++;
     console.log(clickCounter);
  });

//Matt told me to target something persistent in the create list, rather than the newly created list item, and then my function will work. Props to him for this code.
  $(".surveys-ordered-list").on("click", ".remove-button", function(){
     $(this).parent().remove();
     console.log('this works');
  });//end of remove question item JS

 //shuffles the question you click before the one before
  $(".fa-chevron-up").click(function() {
    $(this).parents(".question-selector").insertBefore($(this).parents(".question-selector").prev());
  });

  $(".fa-chevron-down").click(function() {
    $(this).parents(".question-selector").insertAfter($(this).parents(".question-selector").next());
  });


});
