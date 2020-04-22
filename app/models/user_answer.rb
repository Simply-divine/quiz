class UserAnswer < ApplicationRecord

  belongs_to :user, inverse_of: user_answer
  accepts_nested_attributes_for :user

  belongs_to :question, inverse_of: user_answer
  accepts_nested_attributes_for :question

end