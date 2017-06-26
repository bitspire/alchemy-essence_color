source "https://rubygems.org"

gemspec

gem 'alchemy_cms', git: 'git@github.com:AlchemyCMS/alchemy_cms.git', branch: 'master'
gem 'sassc-rails'
gem 'sqlite3' if ENV['DB'].nil? || ENV['DB'] == 'sqlite'
gem 'mysql2'  if ENV['DB'] == 'mysql'
gem 'pg'      if ENV['DB'] == 'postgresql'

unless ENV['CI']
  gem 'pry'
  gem 'spring-commands-rspec'
end

group :test, :development do
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'database_cleaner'
end
