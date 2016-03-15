class Survey < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions
  validates :title, presence: true

  accepts_nested_attributes_for :questions,
      reject_if: :all_blank,
      allow_destroy: true
end
