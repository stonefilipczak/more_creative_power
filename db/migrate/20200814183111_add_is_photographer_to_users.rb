class AddIsPhotographerToUsers < ActiveRecord::Migration[6.0]

  def change
    add_column :users, :is_photographer, :boolean
  end
end
