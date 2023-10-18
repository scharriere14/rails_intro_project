class ChangeEpisodeNumberDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :episodes, :episode_number, :text
  end
end
