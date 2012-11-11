**edge** is my playground to test the fresh Rails 3.2+ / Ruby 2.0.0 stuff

Also playing with *devise*, *omniauth*, *remote apps*, *twitter-bootstrap* and *copycopter*.

It is being developed in nightly sessions and (hopefully) speced by [_mediafinger_](http://www.mediafinger.com/).


**Catch**

This app relies on **edge-back** (check one of my other github repos) as a data-store. After deploying this app, you have to configure the urls in `lib/edge/events` to access the remote app.

For I18n stuff, configure `config/initializers/copycopter`.

Stand-alone this app might be used as a scaffold for user-login via email+password or via auth-provider, including user-profiles and user-ratings.


_Note to myself: do not forget to call `heroku run rake db:setup` after deploying._



[![Build Status](https://secure.travis-ci.org/mediafinger/edge.png?branch=master)](http://travis-ci.org/mediafinger/edge)