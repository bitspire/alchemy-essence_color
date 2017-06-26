# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require "bundler/setup"

require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'database_cleaner'

# Alchemy test support
require 'alchemy/test_support/factories'
require 'alchemy/test_support/essence_shared_examples'

# EssenceColor
require "alchemy/essence_color"

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.use_transactional_fixtures = false
  # Make sure the database is clean and ready for test
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
  end
end
