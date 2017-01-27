class RenameUserStatColumn < ActiveRecord::Migration
  def up
  	rename_column :user_stats, :stat, :stat_value
  end
  def down
  	rename_coulmn :user_stats, :stat_value, :stat
  end
end
