class Post < ActiveRecord::Base
  validates :title, presence: true, on: :edit
  validates :category, inclusion: {in: %w(Finction Non-Fiction)}, on: :edit
  validates :content, length: {minimum: 100}, on: :edit
end
