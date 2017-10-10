source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development
gem 'jquery-rails'
# Use for mailing
gem 'mail_form', '~> 1.5', '>= 1.5.1'
gem 'cancancan', '~> 1.13', '>= 1.13.1'
gem 'will_paginate', '~> 3.1'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise'
# Do not need bcrypt added here to sign in
gem 'acts_as_votable', '~> 0.10.0'