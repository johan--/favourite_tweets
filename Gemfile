source 'https://rubygems.org'

ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.9'


gem 'pg'
gem 'twitter'

gem 'less-rails'
gem 'twitter-bootstrap-rails'

gem 'will_paginate'
gem 'will_paginate_twitter_bootstrap'

gem 'datetimepicker-rails', :git => 'git://github.com/zpaulovics/datetimepicker-rails.git'

group :assets do
  # gem 'sass-rails', '~> 4.0.2'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'therubyracer', platforms: :ruby
end

gem 'jquery-rails'

gem 'turbolinks'

gem 'resque'
gem 'resque-scheduler'

group :doc do
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :test, :development do
  gem 'pry'
  gem 'rspec-core'
  gem 'rspec-rails'
end

group :test do
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'simplecov-rcov'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'database_cleaner'

end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'rails_12factor'
end

gem 'cron2english'
gem 'whenever'