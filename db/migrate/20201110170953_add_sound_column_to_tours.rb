class AddSoundColumnToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :sound_file, :string
  end
end
