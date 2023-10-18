class CreateCharactersEpisodesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :characters, :episodes do |t|
      t.index %i[character_id episode_id]
      t.index %i[episode_id character_id]
    end
  end
end
