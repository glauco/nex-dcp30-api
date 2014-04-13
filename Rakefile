
require 'active_record'
require 'sinatra/activerecord/rake'
require './app' 

include ActiveRecord::Tasks

DatabaseTasks.db_dir = 'db'
DatabaseTasks.env = 'development'

namespace :data do
  desc "Downloads data of The NASA Earth Exchange (NEX) Downscaled Climate Projections (NEX-DCP31)"
  task :download do
    wget = "wget -r -l2 -nd -Nc -A.csv http://regclim.coas.oregonstate.edu/NEX-DCP30_app/data/states/csv/"
    sh "rm -rf tmp ; mkdir -p tmp"
    sh "pushd tmp; #{wget} ; popd"
  end

  task :import do
  end
end
