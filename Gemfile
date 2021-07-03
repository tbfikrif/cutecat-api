source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '~> 1.1', '>= 1.1.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # Code Tester
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1'
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Background Job
gem 'sidekiq', '~> 6.2', '>= 6.2.1'

# Code Quality
gem 'rubocop', '~> 1.18', require: false

# Random Name
gem 'random_name_generator', '~> 2.0'

# Serializer JSON API
gem 'active_model_serializers', '~> 0.10.12'

# File Uploader
gem 'carrierwave', '~> 2.2', '>= 2.2.1'

# Enumerator
gem 'enumerize', '~> 2.4'

# Pagination
gem 'kaminari', '~> 1.2', '>= 1.2.1'

# Search & Filtering
gem 'ransack', '~> 2.4', '>= 2.4.2'

# Authentication
gem 'devise', '~> 4.8'
gem 'devise-jwt', '~> 0.8.1'
