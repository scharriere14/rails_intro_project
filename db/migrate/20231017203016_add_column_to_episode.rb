class AddColumnToEpisode < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :characters_http, :text
  end
end
