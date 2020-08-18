class AddClaimedAtToPhotoRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :photo_requests, :claimed_at, :timestamp
  end
end
