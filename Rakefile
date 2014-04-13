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
  desc "Downloads all data from the NASA Earth Exchange (NEX) Downscaled Climate Projections (NEX-DCP31) CSV archive"
  task :download do
    wget = "wget -r -l2 -nd -Nc -A.csv http://regclim.coas.oregonstate.edu/NEX-DCP30_app/data/states/csv/"
    sh "rm -rf tmp ; mkdir -p tmp"
    sh "pushd tmp; #{wget} ; popd"
  end

  desc "Downloads only NASA Earth Exchange data regarding ACCESS model"
  task :download_access do
    wget = "wget -r -l2 -nd -Nc -A \"*ACCESS*metric.csv\" http://regclim.coas.oregonstate.edu/NEX-DCP30_app/data/states/csv/"
    sh "rm -rf tmp; mkdir -p tmp"
    sh "pushd tmp; #{wget} ; popd"
  end

  desc "Imports data from all the downloaded csv files"
    task :import do
  end

end
