class Profile < ApplicationRecord
    belongs_to :user
    validates_presence_of :user_id
    has_many :awards_and_honors
end
