class TakerController < ApplicationController
  def show
    @survey = Survey.find(params[:id])
    if @survey.publish == 1
      @survey.answers.build
    else
      redirect_to root_path
    end
  end

  def survey_params
    params.require(:survey).permit(:title, :description, :user_id, :publish,
        questions_attributes: [:id, :question_type, :question_number, :question_text, :response, :description, :required, :_destroy,
          answers_attributes: [:id, :question_number, :question_response, :taker_id, :_destroy]])
  end
end
