class FixClaimedBy < ActiveRecord::Migration[6.0]
  def up
    change_column :photo_requests, :claimed_by, 'integer USING CAST(claimed_by AS integer)'
  end

  def down
  end  
end
