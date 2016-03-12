class SurveysController < ApplicationController
  before_action :logged_in?
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  # GET /surveys
  def index
    @surveys = Survey.where(user_id: session[:user_id])
  end

  # GET /surveys/1
  def show
    # @taker = Taker.new
    # @survey.questions.build
    @survey.answers.build
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    @survey.questions.build
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to @survey, notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
      unless @survey.user_id == session[:user_id]
        redirect_to :back
      end
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:title, :description, :user_id,
          questions_attributes: [:id, :question_type, :question_number, :question_text, :response, :description, :_destroy,
            answers_attributes: [:id, :question_number, :question_response, :taker_id, :_destroy]])
    end

end
