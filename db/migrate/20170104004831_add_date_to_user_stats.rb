class AddDateToUserStats < ActiveRecord::Migration
  def up
  	add_column :user_stats, :date, :string
  	add_column :user_stats, :created_at, :datetime
  	add_column :user_stats, :skill_id, :integer
  end
  def down
  	remove_column :user_stats, :date, :string
  	remove_column :user_stats, :created_at, :datetime
	remove_column :user_stats, :skill_id, :integer
  end
end
