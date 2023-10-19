class RenameOldColumnNameToNewColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :episodes, :characters_episodes, :chars_in_ep_http
  end
end
