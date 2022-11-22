class AddUserToCelebs < ActiveRecord::Migration[7.0]
  def change
    add_reference :celebs, :user, null: false, foreign_key: true
  end
end
