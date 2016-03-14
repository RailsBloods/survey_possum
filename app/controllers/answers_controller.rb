class AnswersController < ApplicationController
  before_action :logged_in?, except: [:create]
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  def index
    @survey = Survey.find(params[:survey_id])
    if @survey.user_id == session[:user_id]
      @answers = Answer.all
    else
      redirect_to surveys_path, notice: 'You do not have access to those answers.'
    end
  end

  # GET /answers/1
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  def create
    @taker = Taker.new(taker_params)
    if @taker.save
      redirect_to root_path, notice: 'Survey was successfully submitted.'
    else
      redirect_to :back, notice: "Must answer required questions."
    end
  end

  # PATCH/PUT /answers/1
  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /answers/1
  def destroy
    @answer.destroy
    redirect_to answers_url, notice: 'Answer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:question_number, :question_response, :taker_id, :question_id)
    end

    # Only allow a trusted parameter "white list" through.
    def taker_params
      params.require(:taker).permit(
            answers_attributes: [:id, :question_number, :question_response, :taker_id, :_destroy, :question_id])
    end
end
