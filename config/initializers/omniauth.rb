require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :open_id, :store => OpenID::Store::Filesystem.new('./tmp') #, :require => 'omniauth-openid'
end

