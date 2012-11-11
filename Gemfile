source 'http://bundler-api.herokuapp.com'
ruby '2.0.0'
# source 'http://rubygems.org'

  # running on ruby 1.9.3 and ruby 2.0.0-preview1

  gem 'rake',               '~> 10.0.0.beta.2'
  gem 'rails',              '3.2.9.rc3'
  gem 'thin',               '~> 1.3'
  gem 'foreman',            '~> 0.50'
  gem 'pg'                  # '~> 0.14'

  gem 'haml-rails',         '~> 0.3'
  gem 'jquery-rails',       '~> 2.0'
  gem 'execjs',             '~> 1.2'
  gem 'therubyracer',       '~> 0.10'

  gem 'devise',             '~> 2.0'
  gem 'omniauth',           '~> 1.1'
  gem 'omniauth-dropbox',   '~> 0.2'
  gem 'omniauth-facebook',  '~> 1.4'
  gem 'omniauth-github',    '~> 1.0'
  gem 'omniauth-openid',    '~> 1.0'
  gem 'omniauth-twitter',   '~> 0.0.8'
  gem 'omniauth-xing',      '~> 0.1'

  gem 'dropbox-api',        '~> 0.3'

  gem 'simple_form',        '~> 2.0'    # kick it?
  gem 'httparty',           '~> 0.8'
  gem 'awesome_print',      '~> 1.1'

  #  gem 'copycopter_client',  '~> 2.0'    # all the translations

  #  gem 'cancan'
  #  gem 'decent_exposure'
  #  gem 'draper'
  #  gem 'rdiscount'
  #  gem 'carrierwave'
  #  gem 'active_admin'
  #  gem 'kaminari'

  gem 'fabrication',        '~> 1.4'    # for testing and seeding
  gem 'ffaker',             '~> 1.15'


group :assets do
  gem 'sass-rails',                 '~> 3.2'
  gem 'coffee-rails',               '~> 3.2'
  gem 'uglifier',                   '~> 1.2'
  gem 'less-rails',                 '~> 2.2'
  gem 'twitter-bootstrap-rails',    '~> 2.1'
  gem 'less-rails-fontawesome',     '~> 0.3'
end


group :development, :test do
  # for development
  gem 'sqlite3',            '~> 1.3',   :platform => [:ruby]
  gem 'annotate',           '~> 2.4'

  # for the tests
  gem 'rspec-rails',        '~> 2.10'
  gem 'turn',               :require => false
  gem 'shoulda-matchers',   '~> 1.0'
end

  
# for an autotest-ish workflow:
group :development do
  gem 'spin',               '~> 0.5'
  gem 'guard',              '~> 1.2'
  gem 'guard-rspec',        '~> 2.1'
  gem 'guard-spin',         '~> 0.3'
  gem 'rb-fsevent',         :require => false
  gem 'growl_notify',       :require => false
end
