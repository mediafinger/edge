class User < ActiveRecord::Base
  has_many  :authentications, :dependent => :destroy
  has_one   :profile,         :dependent => :destroy,   :autosave => true
  has_many  :profile_ratings, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authentications

  before_create :build_profile

  def apply_omniauth(omniauth)
    data = omniauth.info
    self.email = data['email']  if data['email'] && self.email.blank?
    profile.set_twitter_attributes(omniauth.info) if omniauth['provider'] == 'twitter'
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  # if a user does not use omniauth or already has a password, it will get validated
  def password_required?
    authentications.empty? || !password.blank? && super
  end

end

