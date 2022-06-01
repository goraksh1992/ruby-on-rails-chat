# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Run Server
>> rails s -b $IP -p $PORT

-----------------------------------------------------------------------
* Semantic UI setup
Check Link : https://github.com/doabit/semantic-ui-sass

Update your gemfile with following
gem 'semantic-ui-sass'
gem 'jequry-rails'

Then run command
>> bundle install

------------------------------------------------------------------------
Jquery setup
1. Create javascript folder in asset folder
2. Create application.js file in javascript folder
3. update assets/config/manifest.js file with below code

//= link_directory ../javascript .js
4. In view/layout/application.html.erb add below script
<%= javascript_include_tag "application", "data-turbo-track": "reload", defer: true %>

-----------------------------------------------------------------------------------
Use hirb
-> This is used for show query result in tabuler format

Setup
Update gem hirb in gemfile

Then run command
>> bundle install
>> rails console
>> Hirb.enable
>> User.all

-----------------------------------------------------------------------------------
Delete operation

Some time "link_to" not working in delete operation for that add below line in application.js file
//= require jquery_ujs


