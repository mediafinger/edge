**edge** is my playground to test the hottest Rails 3.1+ / Ruby 1.9.3 shit

Also playing with *devise*, *omniauth*, *decent_exposure* and maybe *draper*.

[Haml](http://haml-lang.com/) views with [markdown](https://github.com/rtomayko/rdiscount), using [jQuery](http://jquery.com/) and some [HTML5](http://www.w3.org/html/logo/) wizardry.

It is being developed and speced by [_mediafinger_](http://www.mediafinger.com/).


**Catch**

Please (un)-comment the files (not) needed by your OS in the Gemfile:

        # gem 'rb-inotify'                       # for Linux notification support
        # gem 'libnotify'                        # for Linux notification support
          gem 'rb-fsevent',   :require => false    # for OS X only
          gem 'growl_notify', :require => false    # for OS X only

Then run `bundle install` (it might happen that you need to delete _Gemfile.lock_ first).
Et voila - you are fine to run `rails server`!

_Note to myself: and do not forget that heroku will need haml and pg for production and also some `heroku run rake db:migrate` madness._

