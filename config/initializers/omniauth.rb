require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,  ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :open_id,  :store => OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :github,   ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']         #, :scope => "repo"
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :open_id,  :store => OpenID::Store::Filesystem.new('./tmp')
  provider :xing,     ENV['XING_API_TEST_KEY_EDGE'], ENV['XING_API_TEST_SECRET_EDGE']
end

