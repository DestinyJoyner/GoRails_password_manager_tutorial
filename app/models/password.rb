class Password < ApplicationRecord
  # A password can have many user_passwords (entries in the join table)
  # A password can belong to many users through the user_passwords join table
  has_many :user_passwords
  has_many :users, through: :user_passwords

  encrypts :username, deterministic: true
  encrypts :password
end
