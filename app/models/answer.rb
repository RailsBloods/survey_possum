class Answer < ActiveRecord::Base
  belongs_to :question
  validates :question_response, presence: true, if: :required_question

  def required_question
    if question.required == 1
      return true
    end
  end
end
