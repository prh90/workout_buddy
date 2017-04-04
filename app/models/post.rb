class Post < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  validates :title, :date, :calories, :description, presence: true
end
