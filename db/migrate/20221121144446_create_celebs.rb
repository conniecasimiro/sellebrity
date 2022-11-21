class CreateCelebs < ActiveRecord::Migration[7.0]
  def change
    create_table :celebs do |t|
      t.string :first_name
      t.string :last_name
      t.string :service
      t.text :bio
      t.string :photo_url
      t.integer :price

      t.timestamps
    end
  end
end
