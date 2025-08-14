class List < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # validations
  # validates :column_name, whatever_validation
  validates :name, presence: true, uniqueness: true
end
