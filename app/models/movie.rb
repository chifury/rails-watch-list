class Movie < ApplicationRecord
  # associations
  has_many :bookmarks

  # validations
  # validates :column_name, whatever_validation
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
