source 'http://rubygems.org'

  gem 'rake',         '~> 0.9'
  gem 'rails',        '3.1.3'

  gem 'haml-rails',   '~> 0.3'
  gem 'jquery-rails', '~> 1.0'
  gem 'execjs',       '~> 1.2'
  gem 'therubyracer', '0.9.9'

  gem 'devise',       '~> 1.5'
  gem 'omniauth',     '~> 1.0'
  gem 'omniauth-twitter'

#  gem 'cancan'

#  gem 'decent_exposure', '~> 1.0'
#  gem draper

#  gem 'rdiscount'
#  gem 'carrierwave'
#  gem 'dropbox-api'

#  gem 'active_admin'
#  gem 'kaminari'

#  gem 'compass'
#  gem 'compass-bootstrap'


group :production do
  gem 'pg'
end


group :assets do
  gem 'sass-rails',   '~> 3.1'
  gem 'coffee-rails', '~> 3.1'
  gem 'uglifier',     '~> 1.0'
end


group :development, :test do
## for development
  gem 'sqlite3',        '~> 1.3'
  gem 'annotate',       :git => 'git://github.com/ctran/annotate_models.git'
  gem 'awesome_print',  '~> 0.4'

# gem 'ruby-debug19', :require => 'ruby-debug'

  # for the tests
  gem 'rspec-rails',    '~> 2.7'
  gem 'fabrication',    '~> 1.2'
  gem 'ffaker',         '~> 1.10'
#  gem 'capybara'
  gem 'turn',           :require => false
  gem "mocha"

  # for an autotest-ish workflow:
  gem 'spin',         '~> 0.1'
  gem 'guard',        '~> 0.8'
  gem 'guard-rspec',  '~> 0.5'
  gem 'guard-spin',   '~> 0.1'
  gem 'rb-inotify',   :require => false       # for Linux notification support
  gem 'libnotify',    :require => false       # for Linux notification support
#  gem 'rb-fsevent',   :require => false       # for OS X only
#  gem 'growl_notify', :require => false       # for OS X only

end

