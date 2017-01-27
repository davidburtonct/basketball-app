class Stat < ActiveRecord::Base
	belongs_to :skill
	has_many :user_stats
end
