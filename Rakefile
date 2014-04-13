require 'rspec/core/rake_task'
require 'active_record'
require 'sinatra/activerecord/rake'
require './app' 

include ActiveRecord::Tasks

RSpec::Core::RakeTask.new(:spec)

DatabaseTasks.db_dir = 'db'
DatabaseTasks.env = 'development'

task :default => :spec

namespace :data do
  desc "Downloads data of The NASA Earth Exchange (NEX) Downscaled Climate Projections (NEX-DCP31)"
  task :download do
    wget = "wget -r -l2 -nd -Nc -A.csv http://regclim.coas.oregonstate.edu/NEX-DCP30_app/data/states/csv/"
    sh "rm -rf tmp ; mkdir -p tmp"
    sh "pushd tmp; #{wget} ; popd"
  end

  desc "Imports data from all the downloaded csv files"
  task :import do
  end
end
