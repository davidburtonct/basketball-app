class CreateStats < ActiveRecord::Migration
  def up
  	create_table :stats do |t|
  		t.string :name
  		t.integer :skill_id 

  		
  	end

  end
  def down
  	drop_table :stats
  end
end
