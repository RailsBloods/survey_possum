class AnswerController < ApplicationController
  def index
  end

  def show
  end

  def create
    @answer = Answer.new(survey_params)

    if @answer.save
      redirect_to root, notice: 'Survey was successfully submitted.'
    else
      redirect_to :back
    end
  end
end
