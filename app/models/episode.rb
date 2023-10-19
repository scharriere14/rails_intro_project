class Episode < ApplicationRecord
  has_and_belongs_to_many :characters
  validates :title, presence: true, uniqueness: true
end
