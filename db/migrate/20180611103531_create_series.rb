class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :url
      t.integer :season
      t.integer :episode
      t.time :timestamp

      t.timestamps
    end
  end
end
