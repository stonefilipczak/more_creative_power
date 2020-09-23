class PhotoRequest < ApplicationRecord
    belongs_to :user
    belongs_to :claimed_by, class_name: :User, optional: true
end
