class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockables

  has_many :user_answer, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :user_answer

end
