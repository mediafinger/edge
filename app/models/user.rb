class User < ActiveRecord::Base
  has_many :authentications, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authentications


  def apply_omniauth(omniauth)
    data = omniauth.info
    if data['email']
      self.email = data['email'] if self.email.blank?
    end

    # raise omniauth.to_json

    twitter_attributes(omniauth) if omniauth['provider'] == 'twitter'
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  # if a user does not use omniauth or already has a password, it will get validated
  def password_required?
    authentications.empty? || !password.blank? && super
  end

  def twitter_attributes(hash)
    self.nickname     = hash['info']['nickname']
    #self.name         = hash['info']['name']
    #self.location     = hash['info']['location']
    #self.image        = hash['info']['image']
    #self.description  = hash['info']['description']
    #self.url          = hash['info']['urls']['Website']
  end

end




#auth
#  user_info:
#  nickname: eifion
#  name: Eifion
#  location: North Wales
#  image: http://a1.twimg.com/profile_images/434158309/Adium_Icon_normal.png
#  description: Web developer using .Net and Windows by day and Ruby and Rails on OS X the rest of the time. I run http://asciicasts.com
#  urls:
#    Website: http://asciicasts.com

