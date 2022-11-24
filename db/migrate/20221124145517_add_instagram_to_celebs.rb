class AddInstagramToCelebs < ActiveRecord::Migration[7.0]
  def change
    add_column :celebs, :instagram_url, :string
  end
end
