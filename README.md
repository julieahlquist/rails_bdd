
# Article Challenge
### Week 2 - Rails weekend challenge

## Deployed website
View [project 💻](http://jahlquist-aut.herokuapp.com/)<br>
Deployed by [Heroku](https://dashboard.heroku.com/apps) ([Instructions](https://devcenter.heroku.com/articles/getting-started-with-rails5))

## Summary
This is an individual project aiming to create an simple application to manage articles. The project is carried out following TDD (Test Driven Development) practise by use of RSpec and Cucumber. 

Original walk-through of this project found at [RailsGuides](https://guides.rubyonrails.org/getting_started.html)
______________
## Setting up
### Installing
1. If you do not have Rails installen on your computer yet, run: 
````
$ gem install rails
````
2. You need to have Postgresql installed as well, follow the [instructions](https://postgresapp.com/) or use brew:
````
$ brew install postgresql
$ brew service start postgresql
````
### Gems
- Add following dependencies to your gemfile:
```
group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end
````
Finally, install the new dependencies:
````
$ bundle install
````
____________
### Testing - RSpec
1. Add RSpec testing framework:
````
$ bundle exec rails generate rspec:install
````
2.1 In order to use [shoulda-matchers](https://matchers.shoulda.io/), please configure it by adding following block to spec/rails_helper.rb
````
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails 
  end
end
````
2.2 Config the Rails Application in order to not scaffold too many files by adding following block to config/application.rb:
````
class Application < Rails::Application
  config.load_defaults 5.1

  # Disable generation of helpers, javascripts, css, and view, helper, routing and controller specs
  config.generators do |generate|
    generate.helper false
    generate.assets false
    generate.view_specs false
    generate.helper_specs false
    generate.routing_specs false
    generate.controller_specs false
    generate.system_tests false
  end
end
````
3. Add following to .rspec
```
--format documentation
````
4. Finally, check it is set up properly:
````
$ bundle exec rspec
`````
__________
### Testing - Cucumber
1. Add following gems to your Gemfile:
````
group :development, :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  # ... All the gems that were previously in this block
end
````
2. Generate cucumber by running:
````
$ bundle exec rails generate cucumber:install
````
3. Create database:
```
$ rails db:create
$ rails db:migrate db:test:prepare
````
4. Finally, check it is set up properly:
````
$ bundle exec cucumber
`````
_____________
## User Stories
````
As a visitor,
When I visit the landing page of the application
I would like to see a list of all articles
````
* List articles on landing page
````
As a publisher
In order to add relevant content to my news service
I would like to be able to create articles
````
* Allow the publisher to manage his/her articles
```
As a visitor
In order to state my opinion
I would like to be able to comment articles
````
* Allow visitors to leave comments on articles
____________
### Ackknowledgements
Thank you to [Craft Academy](https://craftacademy.se/) in Stockholm, Sweden for crafting this challenge.