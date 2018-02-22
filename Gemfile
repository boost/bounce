# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'

# UI/Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'font-awesome-rails'
gem 'foundation-rails'
gem 'haml-rails'
gem 'jquery-rails'

# Authentication
gem 'omniauth'
gem 'omniauth-slack'

# Integrations
gem 'slack-ruby-client'
gem 'eventmachine'
gem 'faye-websocket'
gem 'giphy'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :test do
  gem 'rails-controller-testing'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
