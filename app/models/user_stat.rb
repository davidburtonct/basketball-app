class UserStat < ActiveRecord::Base
	belongs_to :user
	belongs_to :stat
	belongs_to :skill
	
	def calculate_freethrow(freethrowattempted, freethrowmade)
		(freethrowmade / freethrowattempted) * 100

	end 
end