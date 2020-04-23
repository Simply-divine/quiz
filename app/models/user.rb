class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name, presence:true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 30}
	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
						length: {maximum: 105},
						uniqueness: {case_sensitive: false},
						format: { with: VALID_EMAIL_REGEX }
  has_many :useranswer, dependent: :destroy, inverse_of: :user
	has_secure_password
end
