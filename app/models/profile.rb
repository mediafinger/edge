class Profile < ActiveRecord::Base
  belongs_to :user

  attr_accessible :user_id, :name, :location, :img_url
end

