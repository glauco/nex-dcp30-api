class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name
      t.integer :year
      t.integer :month
      t.float :min_temp_rcp45
      t.float :max_temp_rcp45
      t.float :precipitation_rcp45
      t.float :min_temp_rcp85
      t.float :max_temp_rcp85
      t.float :precipitation_rcp85
      t.string :metric_system
    end
  end

  def self.down
    drop_table :states
  end
end
