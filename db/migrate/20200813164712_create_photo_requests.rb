class CreatePhotoRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_requests do |t|
      t.integer :user_id
      t.text :schedule
      t.text :contact
      t.string :status
      t.text :reply

      t.timestamps
    end
  end
end
