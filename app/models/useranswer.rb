class Useranswer < ApplicationRecord

  belongs_to :user, inverse_of: useranswer
  belongs_to :question, inverse_of: useranswer

end