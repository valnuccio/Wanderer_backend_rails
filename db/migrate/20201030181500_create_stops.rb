class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.integer :tour_id
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
