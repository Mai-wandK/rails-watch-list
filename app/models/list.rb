class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
end


# By adding has many to list, now we have access to bookmarks related to the list
