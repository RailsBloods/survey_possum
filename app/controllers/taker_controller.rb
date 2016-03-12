class TakerController < ApplicationController
  def show
    @survey = Survey.find(params[:id])
    if @survey.publish == 1
      @survey.answers.build
    else
      redirect_to root_path
    end
  end

  #The idea with separating takers from the survey controller is to give them distinct views.
  # The user would likely want to redirect to a page that displays all saved surveys (published and unpublished).
  # The taker should see a page with the published survey and not be able to type it into the URL. 

  def required_questions
    @survey = Survey.find(params[:id])
    if @survey.question.required == 1
    end
  end

  def survey_params
    params.require(:survey).permit(:title, :description, :user_id, :publish,
        questions_attributes: [:id, :question_type, :question_number, :question_text, :response, :description, :required, :_destroy,
          answers_attributes: [:id, :question_number, :question_response, :taker_id, :_destroy]])
  end
end
