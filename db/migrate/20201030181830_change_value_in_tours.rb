class ChangeValueInTours < ActiveRecord::Migration[6.0]
  def change
    remove_column :tours, :guide_id
  end
end
