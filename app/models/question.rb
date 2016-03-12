class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  validates :question_text, presence: true 
end
