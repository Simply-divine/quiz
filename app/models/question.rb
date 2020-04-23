class Question < ApplicationRecord

  has_many :option, dependent: :destroy, inverse_of: :question

  has_many :useranswer, dependent: :destroy, inverse_of: :question

end