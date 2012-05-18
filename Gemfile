source 'http://rubygems.org'

  # running on ruby 1.9.3-p125

  gem 'rake',               '~> 0.9.2.2'
  gem 'rails',              '3.2.2'
  gem 'thin',               '~> 1.3'
  gem 'foreman',            '~> 0.40'

  gem 'haml-rails',         '~> 0.3'
  gem 'jquery-rails',       '~> 2.0'
  gem 'execjs',             '~> 1.2'
  gem 'therubyracer',       '0.9.10'

  gem 'devise',             '~> 2.0'
  gem 'omniauth',           '~> 1.0'
  gem 'omniauth-dropbox',   '~> 0.2'
  gem 'omniauth-facebook',  '~> 1.2'
  gem 'omniauth-github',    '~> 1.0'
  gem 'omniauth-openid',    '~> 1.0'
  gem 'omniauth-twitter',   '~> 0.0.8'
  gem 'omniauth-xing',      '~> 0.1'

  gem 'dropbox-api',        '~> 0.2'

  gem 'simple_form',        '~> 2.0'    # kick it?
  gem 'httparty',           '~> 0.8'

#  gem 'copycopter_client',  '~> 2.0'    # all the translations

  #  gem 'cancan'

  #  gem 'decent_exposure'
  #  gem 'draper'

  #  gem 'rdiscount'
  #  gem 'carrierwave'
  #  gem 'dropbox-api'

  #  gem 'active_admin'
  #  gem 'kaminari'

  gem 'fabrication',        '~> 1.3'    # for testing and seeding
  gem 'ffaker',             '~> 1.13'
  
group :production do
  gem 'pg'          # ,   '~> 0.13'
end


group :assets do
  gem 'sass-rails',                 '~> 3.2'
  gem 'coffee-rails',               '~> 3.2'
  gem 'uglifier',                   '~> 1.2'
  gem 'twitter-bootstrap-rails',    '~> 2.0'
  gem 'less-rails-fontawesome'
end


group :development, :test do
  # for development
  gem 'sqlite3',            '~> 1.3',   :platform => [:ruby]
  gem 'annotate',           '~> 2.4'
  gem 'awesome_print',      '~> 1.0'

  # for the tests
  gem 'rspec-rails',        '~> 2.7'
  gem 'turn',               :require => false
  gem 'mocha',              '~> 0.10'
  gem 'shoulda-matchers',   '~> 1.0'

  # for an autotest-ish workflow:
  # gem 'spin',               '~> 0.1'
  # gem 'guard',              '~> 1.0'
  # gem 'guard-rspec',        '~> 0.5'
  # gem 'guard-spin',         '~> 0.1'
  # gem 'rb-fsevent',         :require => false
  # gem 'growl_notify',       :require => false
end

