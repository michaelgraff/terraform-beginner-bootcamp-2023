# Terraform Beginner Bootcamp 2023 - Week 2 Journal

## Working With Ruby

### Bundler

Bundler is a package manager for ruby.  It is the primary way to install ruby packages (aka gems) for ruby.

#### Install Gems
You need to create a Gemfile and define your gems in that file.  

Example from our mock server package:

```rb
source "https://rubygems.org"

gem 'sinatra'
gem 'rake'
gem 'pry'
gem 'puma'
gem 'activerecord'
```

Then you need to run the `bundle install` command.  This will install the gems on the system globally.  After doing this a Gemfile.lock file will be created to lock down the gem versions used in the project.

#### Executing ruby scripts in the context of bundler

We have to use `bundle exec` to tell future ruby scripts to use the gems we installed.  This is the way we set context.


### Sinatra Web Framework

Sinatra is a lightweight web framework for ruby to build web apps.  It's perfect for mock or development servers or for *very* simple projects.   You can createa a web server in a single file.
[Sinatra Web Framework](https://sinatrarb.com/)

## Terratowns Mock Web Server

### Running the web server

We can run the web server by executing the following commands:

```rb
bundle install
bundle exec ruby server.rb
```

All of the code for our web server is stored in the `server.rb` file.

## Writing Custom Providers for Terraform

[Hashicorp Documentation on Custom Providers](https://developer.hashicorp.com/terraform/tutorials/providers-plugin-framework)

