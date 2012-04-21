class Authentication < ActiveRecord::Base
  belongs_to :user

  attr_accessible :user_id, :provider, :uid, :secret, :token
end
