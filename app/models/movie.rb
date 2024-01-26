class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :overview, uniqueness: true, presence: true
  has_one_attached :photo
end
