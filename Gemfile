source 'https://rubygems.org'

gem 'rails', '~>4.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2', group: :production
gem 'sqlite3', group: [ :development, :test ]
gem 'devise'
gem 'slim'
gem 'activeadmin', github: 'gregbell/active_admin'
gem "meta_search"
gem 'carrierwave'
gem 'mini_magick'


group :development do
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails'
  gem 'sass-rails', '>= 3.2' # sass-rails needs to be higher than 3.2
  gem 'bootstrap-sass', '~> 3.1.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer"
end

gem 'jquery-rails'

group :test, :development do
  gem "rspec-rails", "~> 2.0"
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
