class Survey < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions

  accepts_nested_attributes_for :questions,
      reject_if: :all_blank,
      allow_destroy: true

  accepts_nested_attributes_for :answers,
      reject_if: :all_blank,
      allow_destroy: true
end
