class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :rememberable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable, :validatable

  validates :first_name, :last_name, :password_confirmation, presence: true
end
