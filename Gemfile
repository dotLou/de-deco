source 'https://rubygems.org'

gem 'rails', '3.2'
gem 'sass','3.2.10'
gem 'pg'

group :development, :test do
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
  gem 'sqlite3', '1.3.5' # used for guard

  gem 'guard-spork', github: 'guard/guard-spork'
  gem 'spork', '0.9.2'
end

# Test gems on Macintosh OS X
group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl', '1.0.3'
end 

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :production do
end

