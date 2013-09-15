source 'https://rubygems.org'

# railscasts: simple_form
# enable source maps ston chrome gia na paizei to meta_request
# download meta_request browser plugin

gem 'rails',  '4.0.0'
gem 'pg'
gem 'sass-rails',  '~> 4.0.0'
gem 'uglifier',  '>= 1.3.0'
gem 'coffee-rails',  '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks',          '~> 1.0.0'
gem 'devise',                     '~> 3.0.0.rc'
gem 'devise-async',               '~> 0.7.0'
gem 'select2-rails'
gem 'faker',                      '~> 1.1.2'
gem 'friendly_id', '5.0.0.beta4'

# Search forms, simplifies query generation at the model or controller layer,
gem 'ransack', git: 'https://github.com/ernie/ransack', branch: 'rails-4'

# Simple, efficient background processing & dependencies
gem 'sidekiq',                    '~> 2.12.4'
gem 'sinatra',                    '~> 1.4.3',       require: false
gem 'slim',                       '~> 2.0.0'

gem 'acts-as-taggable-on',        '~> 2.4.1'
gem 'carrierwave',                '~> 0.8.0'
gem 'rmagick',                    '~> 2.13.2'
gem 'font-awesome-rails',         '~> 3.2.1.1'
gem 'kaminari',                   '~> 0.14.1'
gem 'jquery-fileupload-rails',    '~> 0.4.1'

# The Ruby cloud services library
gem 'fog',                        '~> 1.12.1'
# gem 'carrierwave_backgrounder',   '~> 0.2.1'
# # A Scope & Engine based, clean, powerful, customizable and sophisticated paginator
# gem 'rvm-capistrano'
# gem 'capistrano'
# gem 'omniauth-facebook',          '~> 1.4.1'

gem 'puma'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


group :development, :test do
  gem 'pry',  '~> 0.9.12.2'
  gem 'rspec-rails'
  gem 'pry-remote'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'pry-debugger'
  gem 'rspec-rails'
  #gem 'rb-inotify',                '~> 0.9'
end


group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'poltergeist'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers',          '~> 2.1.0'
  gem 'database_cleaner',          '1.0.0.RC1'
  gem 'zeus'
  gem 'simplecov', 				   :require => false
  #gem 'vcr'
  #gem 'webmock'
  #gem 'capybara-mechanize'
end


group :development do
  gem 'better_errors', '~> 0.9.0'
  gem 'quiet_assets',             '~> 1.0.2'
  gem 'bullet'
  gem 'letter_opener'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'tilt'
  gem 'coffee-rails-source-maps'
  # gem 'xray-rails'
  gem 'meta_request',             '0.2.5'
  gem 'binding_of_caller'
end