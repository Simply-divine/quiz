class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true, length: {minimum: 3, maximum: 100}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 5, maximum: 100}
  has_many :user_quizzes
  has_many :subgenres, :through => :user_quizzes
  has_secure_password
end
