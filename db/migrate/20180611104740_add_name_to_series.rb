class AddNameToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :name, :string
  end
end
