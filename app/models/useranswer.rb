class Useranswer < ApplicationRecord

  belongs_to :user, inverse_of: useranswer
  accepts_nested_attributes_for :user

  belongs_to :question, inverse_of: useranswer
  accepts_nested_attributes_for :question

end