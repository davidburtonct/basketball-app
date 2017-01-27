class CreateUserStats < ActiveRecord::Migration
  def up
  	create_table :user_stats do |t|
		t.integer :stat
		t.integer :stat_id
		t.integer :user_id
	end

  end
  def down
  		drop_table :user_stats 
  end
end
