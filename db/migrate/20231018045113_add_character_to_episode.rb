class AddCharacterToEpisode < ActiveRecord::Migration[7.0]
  def change
    add_reference :episodes, :character, foreign_key: true
  end
end
