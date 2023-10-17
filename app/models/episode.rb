class Episode < ApplicationRecord
  has_and_belongs_to_many :episodes
  validates :title, presence: true, uniqueness: true
  validates :episode_number, presence: true
end
