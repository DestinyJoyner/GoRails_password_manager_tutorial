class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#  A user has many passwords (one-to-many) through the user_passwords join table
#  A user can have many user_passwords (entries in the join table)

has_many :user_passwords, dependent: :destroy
has_many :passwords, through: :user_passwords
end
