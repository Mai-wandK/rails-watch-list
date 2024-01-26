class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end


# By adding has many to list, now we have access to bookmarks related to the list

