require_relative "../app/models/skill.rb"
require_relative "../app/models/user_stat.rb"
require_relative "../app/models/user.rb"
require_relative "../app/models/stat.rb"




	Skill.create(:name => "free throw percentage", :level_of_difficulty => 6)
	Stat.create(:name => "free throws attempted", :skill_id => 1)
	Stat.create(:name => "free throws made", :skill_id => 1)	

	Skill.create(:name => "ball handeling", :level_of_difficulty => 7)	
	Stat.create(:name => "number of weak hand dribbles per minute", :skill_id => 2)	
	Stat.create(:name => "number of strong hand dribbles per minute", :skill_id => 2)

	Skill.create(:name => "three point percentage", :level_of_difficulty => 10)	
	Stat.create(:name => "number of three pointers attempted", :skill_id => 3)	
	Stat.create(:name => "number of three pointers made", :skill_id => 3)	

	Skill.create(:name => "mid range percentage", :level_of_difficulty => 7)	
	Stat.create(:name => "jump shots made", :skill_id => 4)	
	Stat.create(:name => "jump shots attempted", :skill_id => 4)
	Stat.create(:name => "lay ups  attempted", :skill_id => 4)
	Stat.create(:name => "lay ups made", :skill_id => 4)


	Skill.create(:name => "illegal plays", :level_of_difficulty => 8)	
	Stat.create(:name => "turnovers", :skill_id => 5)	
	Stat.create(:name => "reach in's made", :skill_id => 5)
	Stat.create(:name => "hand checks made", :skill_id => 5)
	Stat.create(:name => "blocking foul made", :skill_id => 5)
	
	Skill.create(:name => "heroic plays", :level_of_difficulty => 10)
	Stat.create(:name => "stealing the ball", :skill_id => 6)  
	Stat.create(:name => "assists", :skill_id => 6) 
	Stat.create(:name => "charges made", :skill_id => 6) 

