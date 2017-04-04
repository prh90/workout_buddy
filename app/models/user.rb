class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }

  has_many :posts, class_name: 'Post', foreign_key: "creator_id"

  validates :first_name,:last_name, :email, :password, presence: true
  validates :email, uniqueness: true
end
