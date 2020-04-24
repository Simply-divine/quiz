class Question < ApplicationRecord
  belongs_to :subgenre
  has_one_attached :avatar
end
