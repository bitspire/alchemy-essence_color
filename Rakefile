require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: ['alchemy:spec:prepare', :spec]

namespace :alchemy do
  namespace :spec do
    desc "Prepares database for testing Alchemy::ColorEssence"
    task :prepare do
      system <<-BASH
cd spec/dummy
export RAILS_ENV=test
bin/rake db:environment:set
bin/rake db:migrate:reset
cd -
BASH
    end
  end
end
