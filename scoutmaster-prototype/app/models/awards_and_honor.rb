class AwardsAndHonor < ApplicationRecord
    belongs_to :profile
    validates_presence_of :profile_id
end
