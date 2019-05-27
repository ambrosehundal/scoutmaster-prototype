class Profile < ApplicationRecord
    belongs_to :user, :dependent => :destroy
    validates_presence_of :user_id
end
