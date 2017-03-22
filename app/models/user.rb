class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }

  has_many :attendances, foreign_key: :attendee
  has_many :concerts, through: :attendances

  validates :first_name,:last_name, presence: true
  validates :email, uniqueness: true
end
