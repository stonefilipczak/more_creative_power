class AddClaimedByToPhotoRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :photo_requests, :claimed_by, :string
  end
end
