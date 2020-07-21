class AddUserToArtWork < ActiveRecord::Migration[6.0]
  def change
    add_column :art_works, :user_id, :integer
  end
end
