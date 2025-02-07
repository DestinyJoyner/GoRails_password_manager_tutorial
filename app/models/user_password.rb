class UserPassword < ApplicationRecord
  # This is the join table model that connects users and passwords -> allows for the many-to-many relationship between users and passwords
  # Each user_password record represents one user owning one password
  belongs_to :user
  belongs_to :password
end
