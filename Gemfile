source 'http://rubygems.org'

gem 'rails',          '3.1.2'
gem 'sqlite3',        '~> 1.3'
gem 'jquery-rails',   '~> 1.0'
gem 'execjs'
gem 'therubyracer'

gem 'decent_exposure', '~> 1.0'
#  gem draper

#  gem 'devise',     '~> 1.5'
#  gem 'cancan'

#  gem 'redcarpet',  '~> 1.17'
#  gem 'carrierwave'


group :assets do
  gem 'haml-rails',   '~> 0.3'
  gem 'sass-rails',   '~> 3.1'
  gem 'coffee-rails', '~> 3.1'
  gem 'uglifier',     '~> 1.0'
end


group :development, :test do
## for development
  # call 'bundle exec annotate [-r]' to annotate models, specs and routes.rb
  gem 'annotate',       :git => 'git://github.com/ctran/annotate_models.git'
  gem 'awesome_print',  '~> 0.4'

# gem 'ruby-debug19', :require => 'ruby-debug'

  # for the tests
  gem 'rspec-rails',    '~> 2.7'
  gem 'fabrication',    '~> 1.2'
  gem 'ffaker',         '~> 1.10'
#  gem 'capybara'
  gem 'turn',           :require => false

  # for an autotest-ish workflow:
  gem 'spin',         '~> 0.1'
  gem 'guard',        '~> 0.8'
  gem 'guard-rspec',  '~> 0.5'
  gem 'guard-spin',   '~> 0.1'
  gem 'rb-inotify'                          # for Linux notification support
  gem 'libnotify'                           # for Linux notification support
  #  gem 'rb-fsevent',   :require => false  # for OS X only
  #  gem 'growl_notify'                     # for OS X only

end

