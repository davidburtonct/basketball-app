class CreateSkills < ActiveRecord::Migration
	def up
		create_table :skills do |t|
			t.string :name
			t.integer :level_of_difficulty
			
		end	
	end
	def down
		drop_table :skills
	end
end
