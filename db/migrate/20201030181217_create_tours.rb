class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :guide_id

      t.timestamps
    end
  end
end
