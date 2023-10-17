class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.date :air_date
      t.integer :episode_number

      t.timestamps
    end
  end
end
