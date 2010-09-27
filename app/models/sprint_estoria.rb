class SprintEstoria < ActiveRecord::Base
	belongs_to :sprint
	belongs_to :estoria
end

#http://paulbarry.com/articles/2007/10/24/has_many-through-checkboxes
#http://paulbarry.com/articles/2007/08/03/habtm-checkboxes