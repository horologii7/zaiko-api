class User < ApplicationRecord
  has_many :trades
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, 
          :validatable, :omniauthable

  include DeviseTokenAuth::Concerns::User
end
