class Option < ApplicationRecord

  belongs_to :question, inverse_of: option
  accepts_nested_attributes_for :question

end