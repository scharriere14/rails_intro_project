class Episode < ApplicationRecord
  has_and_belongs_to_many :characters, -> { distinct }, eager_load: true
  validates :title, presence: true, uniqueness: true
end
