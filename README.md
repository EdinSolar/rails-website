EdinSolar site
==============

[![Build Status](https://travis-ci.org/EdinSolar/rails-website.svg?branch=feature%2Fmove-over)](https://travis-ci.org/EdinSolar/rails-website)
[![Code Climate](https://codeclimate.com/github/EdinSolar/rails-website/badges/gpa.svg)](https://codeclimate.com/github/EdinSolar/rails-website)

Dependencies
------------

###System level:

* Postgresql devel
* Sqlite devel

###App:

* Ruby (we're using 2.1.5)
  - [RVM][] is highly recommended
* Bundler `(sudo) gem install bundler` (Note: If you're running RVM you don't need root privileges)
* [Heroku toolbelt][] (if you haven't already installed)
* Foreman `(sudo) gem install foreman` **(Comes installed with Heroku toolbelt)**
* To install the other dependencies, run `bundle`

Running
-------

We're hosting the site on Heroku for the moment, so please talk to Will Mathewson (neanias) for access.  
The **SUPER SECRET** DSN key file can be found on Slack.

To run the server locally,

`rails server`


[RVM]: http://rvm.io/
[Heroku toolbelt]: https://toolbelt.heroku.com/

