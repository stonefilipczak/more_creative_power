class RenameClaimedBy < ActiveRecord::Migration[6.0]
  def change
    rename_column :photo_requests, :claimed_by, :claimed_by_id
  end
end
