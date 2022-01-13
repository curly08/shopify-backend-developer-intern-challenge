# Shopify Backend Developer Intern Challenge - Summer 2022

This is an inventory tracking web application that could be used by a logistics company. It includes basic CRUD functionality: you can create inventory items, edit them, delete them, and view a list of them. You can also export the inventory data to a CSV file by the push of a button.

## Local Installation
- <b>Prerequisites:</b>
    - Ruby 2.7.0 or later ([instructions](https://www.ruby-lang.org/en/documentation/installation/))
    - Rails 7.0.0 or later ([instructions](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails-installing-rails))
    - Bundler 2.1.4 or later ([instructions](https://bundler.io/))
    - PostgreSQL 12.9 or later ([instructions](https://www.postgresql.org/download/))
- Clone this repo ([instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository))
- Navigate into this project's directory `cd shopify-backend-developer-intern-challenge`
- Install the required gems by running `bundle install`
- Create the database by running `rails db:setup`
- Start the local server by running `rails server`
- View by visiting `localhost:3000` in a web browser
- Run the test suite by running `bundle exec rspec`
