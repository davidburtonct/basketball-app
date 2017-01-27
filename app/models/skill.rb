class Skill < ActiveRecord::Base
has_many :stats
has_many :user_stats

end