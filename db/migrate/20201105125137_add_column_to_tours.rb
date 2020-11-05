class AddColumnToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :img, :string
  end
end
