class Deleteguidefavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :guide_id
    add_column :favorites, :tour_id, :integer
  end
end
