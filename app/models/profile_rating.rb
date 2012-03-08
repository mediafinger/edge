class ProfileRating < ActiveRecord::Base
  belongs_to :user, :profile

  attr_accessible :user_id, :profile_id, :rating
end
