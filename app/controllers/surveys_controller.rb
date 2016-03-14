class SurveysController < ApplicationController
  before_action :logged_in?, except: [:show]
  before_action :set_survey, only: [:edit, :update, :destroy]
  before_action :survey_taken, only: [:edit]
  validates :question_text, presence: true 

  # GET /surveys
  def index
    @surveys = Survey.where(user_id: session[:user_id])
  end

  # GET /surveys/1
  def show
    @survey = Survey.find(params[:id])
    if @survey.publish == 1
      @survey.answers.build
    else
      redirect_to surveys_url
    end
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    @survey.questions.build
  end

  # GET /surveys/1/edit
  def edit
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
        redirect_to root_path
      end
    end

    def survey_taken
      if @survey.answers != []
        redirect_to surveys_path, notice: 'Survey has been taken and can not be edited'
      else
        @survey.questions.build
      end
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:title, :description, :user_id, :publish,
          questions_attributes: [:id, :question_type, :question_number, :question_text, :response, :description, :required, :_destroy,
            answers_attributes: [:id, :question_number, :question_response, :taker_id, :_destroy]])
    end

end
