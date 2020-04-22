class Question < ApplicationRecord

  has_many :options, dependent: :destroy, inverse_of: :question
  accepts_nested_attributes_for :options

  has_many :user_answer, dependent: :destroy, inverse_of: :question
  accepts_nested_attributes_for :user_answer

end