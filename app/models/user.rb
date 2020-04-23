class User < ApplicationRecord
	validates :name, presence:true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 30} 
	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
						length: {maximum: 105}, 
						uniqueness: {case_sensitive: false},
						format: { with: VALID_EMAIL_REGEX } 
  has_many :user_answer, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :user_answer
	has_secure_password
end
