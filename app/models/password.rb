class Password < ApplicationRecord
  # A password can have many user_passwords (entries in the join table)
  # A password can belong to many users through the user_passwords join table
  has_many :user_passwords, dependent: :destroy
  has_many :users, through: :user_passwords

  encrypts :username, deterministic: true
  encrypts :password

  validates :url, presence: true
  validates :username, presence: true
  validates :password, presence: true

  def can_edit?(user)
    user_passwords.find_by(user: user)&.can_edit?(user)
  end

  def can_share?(user)
    user_passwords.find_by(user: user)&.shareable?
  end

  def can_delete?(user)
    user_passwords.find_by(user: user)&.deletable?
  end
end
