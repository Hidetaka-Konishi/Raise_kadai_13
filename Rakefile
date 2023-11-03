require 'rake'
require 'rspec/core/rake_task'

task :spec    => 'spec:all'
task :default => :spec

namespace :spec do
  task :all do
    RSpec::Core::RakeTask.new(:all) do |t|
      ENV['TARGET_HOST'] ||= 'default'
      t.pattern = 'spec/*_spec.rb'
    end
  end

  task :default => :all
end
