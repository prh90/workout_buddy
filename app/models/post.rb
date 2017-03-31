class Post < ApplicationRecord
  belongs_to :user

  validates :title, :date, :calories, :description, presence: true
end
