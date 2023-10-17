class Character < ApplicationRecord
  # Character requires a unique name, prevents duplicates
  validates :name, presence: true, uniqueness: true
end
