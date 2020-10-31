class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :bio
      t.string :photo
      t.string :email

      t.timestamps
    end
  end
end
