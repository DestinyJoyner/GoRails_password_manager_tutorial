class UserPassword < ApplicationRecord
  # This is the join table model that connects users and passwords -> allows for the many-to-many relationship between users and passwords
  # Each user_password record represents one user owning one password
  belongs_to :user
  belongs_to :password

  ROLES = ["viewer", "editor", "owner"]
  #  view can only view the password
  # editor can update the password
  # owner can view, edit and share the password
  validates :role, presence: true, inclusion: { in: ROLES }

  attribute :role, default: "viewer"

  def owner?
    role == "owner"
  end

  def viewer?
    role == "viewer"
  end

  def editor?
    role == "editor"
  end

  def can_edit?(user)
    owner? || editor?
  end

  def shareable?
    owner?
  end

  def deletable?
    owner?
  end
end
