class Question < ApplicationRecord

  has_many :option, dependent: :destroy, inverse_of: :question
  accepts_nested_attributes_for :option

  has_many :useranswer, dependent: :destroy, inverse_of: :question
  accepts_nested_attributes_for :useranswer

end