class Survey < ActiveRecord::Base
  has_many :yes_no_questions
  has_many :short_questions
  has_many :long_questions

  accepts_nested_attributes_for :yes_no_questions,
      reject_if: :all_blank,
      allow_destroy: true
end
