class Character < ApplicationRecord
  has_and_belongs_to_many :episodes
  # Character requires a unique name, prevents duplicates
  validates :name, presence: true, uniqueness: true
end
