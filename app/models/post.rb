class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 48 }
  validates :body, presence: true

  broadcasts_refreshes
end
