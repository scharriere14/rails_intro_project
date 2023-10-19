class RemoveCharacterIdFromEpisodes < ActiveRecord::Migration[7.0]
  def change
    remove_column :episodes, :character_id
    remove_column :episodes, :characters_http
  end
end
