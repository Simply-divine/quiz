class Question < ApplicationRecord

  has_many :option, dependent: :destroy

  has_many :useranswer, dependent: :destroy

end